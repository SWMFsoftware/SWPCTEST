;function max_curve, array, width
;
;  if width lt 2 then return, array
;
;  ; sliding maximum function (like smooth)
;  n = n_elements(array)
;  result = array
;
;  for i = 0, n - 1 do begin
;     i0 = i - width/2 > 0
;     i1 = i + width/2 - 1 < n-1
;     result(i) = max(array(i0:i1))
;  endfor
;
;  return, result
;end
;
; ============================================================================

function max_curve2, time, array, width

  if width le 0.0 then return, array

  ; sliding maximum function (like smooth)
  n = n_elements(array)
  result = array

  for i = 0, n - 2 do begin
     ; search for i1 so that time(i1) is at least t1
     t1 = time(i) + width + 1e-6
     i1 = i
     while time(i1+1<(n-1)) lt t1 and i1 lt n-1 do i1 = i1 + 1
     ; take maximum of points from i to i1
     result(i) = max(array(i:i1))
  endfor

  return, result
end

; ============================================================================

function exceeds, time, array, tmin, tmax, dt, threshold, mincount

  ;; time and array form a time series
  ;; bin data from tmin to tmax with dt bin size
  ;; return an array of 0-s and 1-s. 
  ;; 1 corresponds to bins where any data exceeds the threshold.
  ;; if mincount is present, eliminate bins with fewer data points

  if n_elements(mincount) eq 0 then mincount = 0
  
  n = n_elements(array)

  if n ne n_elements(time) then begin
     print, 'ERROR in function exceeds, number of elements differ in time and array'
     help, time, array
     retall
  endif
  
  nbin  = fix( (tmax - tmin)/dt ) ;;; + 1

  result = intarr(nbin)
  count  = intarr(nbin)

  for i = 0, n - 1 do begin

     t = time[i]
     if t lt tmin or t gt tmax then continue

     ibin = fix( (t - tmin)/dt ) < nbin-1

     count(ibin) += 1
     if array[i] ge threshold then result[ibin] = 1
    
  endfor

  ii = where(count ge mincount)

  ;;; help, time, array, dt, threshold, mincount, nbin, ii

  return, result(ii)

end

; ============================================================================
function scale_exp, x, a

 ; Used by lmfit. Applies the non-linear function f to x with parameters a
 ; returns f(x) and the partial derivatives of f with respect to a

  scale = a(0)
  exponent = a(1)
  f = (x/scale)^exponent

  return, [f, -exponent/scale * f, alog(x/scale) * f]

end

; ============================================================================
pro read_station, file, t, data, date, tderiv, dataderiv, dn

  ; read logfile, use hours for time unit
  get_log, file, wlog, wlogname, t, 'h'

  date = julday(wlog(0,1), wlog(0,2), wlog(0,0))

  ; Calculate horizontal component (db or dbdt)
  i = where(wlogname eq 'B_NorthGeomag') & i = i(0)
  j = where(wlogname eq 'B_EastGeomag')  & j = j(0)
  
  if i lt 0 and j lt 0 then begin
     i = where(wlogname eq 'dBdt_NorthGeomag') & i = i(0)
     j = where(wlogname eq 'dBdt_EastGeomag')  & j = j(0)
  end

  if i lt 0 or j lt 0 then begin
     print, 'ERROR for file =', file
     print, 'Cannot find variables (B|dBdt)_(North|East) in wlogname='
     print, wlogname
     retall
  endif

  data = sqrt(wlog(*,i)^2 + wlog(*,j)^2)

  ; Calculate time derivative
  n  = n_elements(data)

  tderiv = 0.5*(t(dn:n-1)+t(0:n-1-dn))

  dataderiv = sqrt( (wlog(dn:n-1,i)-wlog(0:n-1-dn,i))^2 + $
                    (wlog(dn:n-1,j)-wlog(0:n-1-dn,j))^2 ) $
              / (3600*(t(dn:n-1) - t(0:n-1-dn)))

end

; ============================================================================

function set_eventlist, events, mydir, model

  ; the format of events could be something like events='1,2-5,7'

  ;; replace // with /
  model_local = model.replace('//','/')

  ;; remove anything before deltaB
  if(strpos(model_local, 'deltaB/') ge 0) then model_local = strmid(model_local, strpos(model_local, 'deltaB/')+7)

  if strlen(events) lt 1 then begin
     ;; empty events string, the events in the  model_local dir
     events_dir = FILE_SEARCH(mydir+'/deltaB/'+model_local+'/Event*')

     ;; the string before the event number, and replace // with /
     tmp0 = ('deltaB/'+model_local+'/Event').replace('//','/')

     for i=0,n_elements(events_dir)-1 do begin
        ;; remove anything before the Event number
        events_dir(i) = strmid(events_dir(i),strpos(events_dir(i),tmp0)+tmp0.strlen())
     endfor
     event_I    = fix(events_dir)
  endif else begin
     ;; split the events string, as the  events now only contains numbers.
     tmp1 = events.split(',')
     event_I= fix(tmp1)
  endelse        

  return, event_I
end

; ============================================================================

function set_date_string, yyyy, mm, dd

  case fix(mm) of
     1:  mm_s = 'Jan.'
     2:  mm_s = 'Feb.'
     3:  mm_s = 'Mar.'
     4:  mm_s = 'Apr.'
     5:  mm_s = 'May'
     6:  mm_s = 'Jun.'
     7:  mm_s = 'Jul.'
     8:  mm_s = 'Aug.'
     9:  mm_s = 'Sep.'
     10: mm_s = 'Oct.'
     11: mm_s = 'Nov.'
     12: mm_s = 'Dec.'
  endcase

  date_string = mm_s + ' ' + string(dd,format='(i2.2)') + ' ' $
                + string(yyyy,format='(i4.4)')

  return, date_string
end

; ============================================================================

pro predict, choice,                                                  $
             models=models, modelnames=modelnames,                    $
             stationlat=stationlat, stations=stations,                $
             events=events,                                           $
             deltat=deltat, mincount=mincount, stencil=stencil,       $
             threshold=threshold,                                     $
             scale=scale, exponent=exponent,                          $
             coeff=coeff, power=power,                                $
             db_pod=db_pod, db_pof=db_pof, db_hss=db_hss,             $
             dbdt_pod=dbdt_pod, dbdt_pof=dbdt_pof, dbdt_hss=dbdt_hss, $
             out_file=out_file, append=append, lunOut=lunOut,         $
             showinfo=showinfo, verbose=verbose,                      $
             showplot=showplot, saveplot=saveplot, mydir=mydir,       $
             stations_used=stations_used, DoPrintHeader=DoPrintHeader,$
             InputDir=InputDir

  ;; choice = 'db', 'dbdt', 'corr'
  ;; models: array directories containing results
  ;; modelnames: array of names for printing results (default=models)
  ;; stations: array of station names (default is all 12 stations)
  ;; stationlat = 'all','veryhigh','high','mid' or 'low' (default='all')
  ;; deltat: width of bins in minutes (default=20)
  ;; mincount: minimum number of valid observations in each bin
  ;; stencil = 1 or 2: discretization for dB/dt (default=1, compact stencil)
  ;; scale, exponent: indirect dBdt = (dB/scale)^exponent (default=292,1.14)
  ;; coefff, power: artificial scaling of simulated db or dbdt reults:
  ;;                result_sim' = coeff*result_sim^power (default=1,1)
  ;; db_pod, db_pof, db_hss: array of probablity of true and false
  ;;                         detections and Heidke Skill Scores for dB
  ;; dbdt_pod, dbdt_pof, dbdt_hss: array of probablity of true and false
  ;;                         detections and Heidke Skill Scores for dB/dt
  ;; out_file: name of file to save results into (default is STDOUT)
  ;; append:   append to the out_file (default is overwrite)
  ;; verbose:  write verbose information to the screen (default is false)
  ;; showinfo: write information onto the plots (default is true)
  ;; showplot: plot results (default=saveplot)
  ;; saveplot: save plots into files (default=false)

  if n_elements(deltat) lt 1 then deltat = 20.0
  dt = deltat/60.0

  if n_elements(mincount) lt 1 then mincount=0

  if not keyword_set(out_file) then out_file=''
  if not keyword_set(append)   then append=0
  if not keyword_set(verbose)  then verbose=0
  if not keyword_set(showplot) then showplot=0
  if not keyword_set(saveplot) then saveplot=0
  if not keyword_set(lunOut)   then lunOut=-1 ; -1 is STDOUT
  if not keyword_set(DoPrintHeader) then DoPrintHeader = 0
  if not keyword_set(InputDir) then InputDir='Inputs'
  if saveplot then showplot=1

  ;; Width of stencil for time derivative
  if not keyword_set(stencil) then stencil = 1

  ;; threshold for dBdt [nT/s] or dB [nT]
  if not keyword_set(threshold) then begin
     if choice eq 'db' then threshold = 100.0 else threshold = 1.1
  endif

  ;; scaling and exponent for indirect db calculation:
  ;; dB/dt [nT/s] = (dB[nT]/scale)^exponent
  if n_elements(scale)    lt 1 then scale = 292.0
  if n_elements(exponent) lt 1 then exponent = 1.14

  ;; coefficient and power for artificial scaling of results
  ;; result' = coeff*result^power
  if n_elements(coeff) lt 1 then coeff = 1.0
  if n_elements(power) lt 1 then power = 1.0

  if n_elements(showinfo) lt 1 then showinfo=1

  allstations = $
     ['frn', 'frd', 'fur',        $
      'wng', 'new', 'ott',        $
      'mea', 'pbq', 'abk', 'ykc', $
      'hrn', 'iqa' ]

  if keyword_set(stationlat) then begin
     case stationlat of
        'all'     : stations = allstations
        'veryhigh': stations = ['hrn','iqa']
        'high'    : stations = ['abk', 'pbq', 'ykc', 'mea']
        'mid'     : stations = ['wng','new','ott']
        'low'     : stations = ['frd','frn','fur']
        else: print,' invalid value for stationlat=',stationlat
     endcase
  endif

  if n_elements(stations) lt 1 then stations = allstations

  if n_elements(models) eq 0 then begin
     models     = ['Observations', 'SWMF_CCMC', 'Results']
     modelnames = ['Observed',     'SWMFccmc',  'SWMF_new']
  endif

  if n_elements(modelnames) eq 0 then modelnames=models

  nmodel = n_elements(models)

  tmins = [0.0,   6.0,       12.0,        0.0,       10.0,        0.0,        9.0]
  tmaxs = [96.0,  30.0,      48.0,       24.0,       36.0,       24.0,       33.0]

  if not keyword_set(mydir)    then mydir='.'
  if strmid(mydir, mydir.strlen()-1)  ne '/' then mydir  = mydir+'/'

  ;; the path to the magnetometer data
  InputDir_deltaB = mydir + InputDir + '/deltaB/'

  ; well, use the first model....
  event_I = set_eventlist(events,mydir,models[0])

  !p.charsize = 1.6

  nstation = n_elements(stations)

  case nstation of
     1: !p.multi = [0,1,1]
     2: !p.multi = [0,2,1]
     3: !p.multi = [0,3,1]
     4: !p.multi = [0,2,2]
     5: !p.multi = [0,3,2]
     6: !p.multi = [0,3,2]
     7: !p.multi = [0,4,2]
     8: !p.multi = [0,4,2]
     9: !p.multi = [0,3,3]
     else: !p.multi = [0,4,3]
  endcase

  if verbose then print,'nstation=', nstation,' p.multi=', !p.multi

  for imodel = 0, nmodel-1 do begin
     model     = models[imodel]
     modelname = modelnames[imodel]

     ;; remove anything before deltaB
     if(strpos(model,    'deltaB/') ge 0) then model     = strmid(model,    strpos(model,    'deltaB/')+7)
     if(strpos(modelname,'deltaB/') ge 0) then modelname = strmid(modelname,strpos(modelname,'deltaB/')+7)

     ;; replace / with _
     modelname = strjoin(strsplit(modelname,'/',/extract),'_')

     if verbose then print,' imodel, modelname=', imodel, modelname

     ;; first index: hit, false, miss, nopred
     dbdt_score = fltarr(4,nstation)
     db_score   = fltarr(4,nstation)

     stations_used = strarr(n_elements(event_I))

     for iIndex = 0,n_elements(event_I)-1 do begin

        event = event_I(iIndex)

        ;; check whether the format in Observations is two digits or not.
        if file_test(InputDir_deltaB +'/Event'+string(event,format='(i2.2)')) then begin
           event_string_obs = 'Event'+string(event,format='(i2.2)')
        endif else begin
           event_string_obs = 'Event'+string(event,format='(i1.1)')
        endelse

        ;; check whether the format in SIMDIR/RESDIR is two digits or not.
        if file_test(mydir+'deltaB/'+model+'/Event'+string(event,format='(i2.2)')) then begin
           event_string_sim = 'Event'+string(event,format='(i2.2)')
        endif else begin
           event_string_sim = 'Event'+string(event,format='(i1.1)')
        endelse

        if verbose then print,' ievent, event=', event, '  Event'+string(event_I,format='(i2.2)')

        ;; setting the filename for the figure.
        if saveplot then begin
           plotfile  = choice + '_event' + string(event, format='(i2.2)')

           case choice of
              'db': plotfile += '_'+string(fix(threshold),format='(i0,"nT")')
              'dbdt': plotfile += '_'+string(threshold,format='(f3.1,"nTs")')
           endcase
           plotfile += '.eps'

           set_device, plotfile, /land
        endif

        for istation = 0, nstation-1 do begin

           station = strupcase(stations[istation])

           if verbose then print,' istation=', istation, ' ', station

           if file_test(InputDir_deltaB + event_string_obs+'/'+station+'.txt') then begin
              file_obs_db = InputDir_deltaB + event_string_obs+'/'+station+'.txt'
           endif else if file_test(InputDir_deltaB + event_string_obs+'/'+station+'.csv') then begin
              file_obs_db = InputDir_deltaB + event_string_obs+'/'+station+'.csv'
           endif else begin
              if station ne 'PBQ' then begin
                 print,'For event=',event,' there is no observation for station=',station
                 continue
              endif else begin
                 ;; well, for PBQ, it might also be SNK...
                 if file_test(InputDir_deltaB + event_string_obs+'/SNK.txt') then begin
                    file_obs_db = InputDir_deltaB + event_string_obs+'/SNK.txt'
                 endif else if file_test(InputDir_deltaB + event_string_obs+'/SNK.csv') then begin
                    file_obs_db = InputDir_deltaB + event_string_obs+'/SNK.csv'
                 endif else begin
                    print,'For event=',event,' there is no observation for station= PBQ/SNK'
                    continue
                 endelse
              endelse
           endelse

           file_sim_db  = mydir+'deltaB/'+model+'/'+event_string_sim+'/'+station+'.txt'

           if not file_test(file_sim_db) then begin
              if station ne 'PBQ' then begin
                 print,'For event=',event,' there is no result from model=',model,' for station=',station
                 continue
              endif else begin
                 file_sim_db  = mydir+'deltaB/'+model+'/'+event_string_sim+'/SNK.txt'
                 if not file_test(file_sim_db) then begin
                    print,'For event=',event,' there is no result from model=',model,' for station=PBQ/SNK.'
                    continue
                 endif
              endelse
           endif

           if verbose then print,'reading observation and simulation data'

           ; Read db and calculate db/dt from observations and simulations
           read_station, file_obs_db, t_db_obs, $
                      db_obs, date_obs, t_dbdt_obs, dbdt_obs, stencil
           read_station, file_sim_db, t_db_sim, $
                      db_sim, date_sim, t_dbdt_sim, dbdt_sim, stencil

           if date_obs ne date_sim then begin
              print, "Waring: the observation and simulation are not on the same day for Event ", event
              print, "adjust t_db_sim and t_dbdt_sim to align with observations."
              t_db_sim   = t_db_sim   - (date_obs-date_sim)*24
              t_dbdt_sim = t_dbdt_sim - (date_obs-date_sim)*24
           endif

           ;; convert the Julday back to year, month, day
           JUL2GREG, date_obs, mm_date, dd_date, yyyy_date

           ;; set the date info
           date = string(yyyy_date,format='(i4.4)')+string(mm_date,format='(i2.2)') $
                  +       string(dd_date,format='(i2.2)')

           ; Station PBQ was replaced with SNK after 2007
           if yyyy_date gt 2007 and station eq 'PBQ' then station = 'SNK'

           stations_used[iIndex] = stations_used[iIndex] +  station + ' '

           ; Calculate contingency tables and create plots
           case choice of
              'db':begin
                 ;; artificial scaling
                 db_sim = coeff*db_sim^power

                 if event ge 0 and event le 6 then begin
                    tmin = tmins(event) ;; min(t_db_sim) > min(t_db_obs)
                    tmax = tmaxs(event) ;; max(t_db_sim) < max(t_db_obs)
                 endif else begin
                    tmin = 1.0
                    tmax = 96.0
                 endelse

                 exc_obs  = $
                    exceeds(t_db_obs, db_obs, tmin, tmax, dt, threshold, mincount)

                 exc_sim = $
                    exceeds(t_db_sim, db_sim, tmin, tmax, dt, threshold, mincount)

                 all      = n_elements(exc_obs)
                 if all ne n_elements(exc_sim) then begin
                    print,'ERROR: for station ',station
                    help,exc_obs, exc_sim
                 endif

                 obsyes   = total(exc_obs)
                 obsno    = total(1-exc_obs)

                 hit_db   = total(exc_obs*exc_sim)
                 false_db = total((1-exc_obs)*(exc_sim))
                 miss_db  = total(exc_obs*(1-exc_sim))
                 no_db    = total((1-exc_obs)*(1-exc_sim))

                 db_score[  *,istation] = db_score[*,istation] + $
                                          [hit_db, false_db, miss_db, no_db]

                 
                 if showplot then begin
                    title = strupcase(station) + ': H,F,M,N=' + $
                            string(hit_db, false_db, miss_db, no_db, $
                                   format='(4i4)')

                    if verbose then print,'plotting into p.multi=',!p.multi

                    plot, t_db_obs, max_curve2(t_db_obs, db_obs, dt), $
                          xtitle = 'time [h]', ytitle='dB!DH!N', $
                          title = title, xrange = [tmin, tmax], xstyle=1, $
                          yrange = [0.,max([db_obs, db_sim])], thick = 3

                    oplot, [tmin, tmax], [threshold, threshold], linestyle=2
                    
                    oplot, t_db_sim, max_curve2(t_db_sim, db_sim, dt), $
                           color = 150, thick = 3
                 endif
              end
              'dbdt':begin
                 ;; artificial scaling
                 dbdt_sim = coeff*dbdt_sim^power

                 if event ge 0 and event le 6 then begin
                    tmin = tmins(event) ;; min(t_db_sim) > min(t_db_obs)
                    tmax = tmaxs(event) ;; max(t_db_sim) < max(t_db_obs)
                 endif else begin
                    tmin = 1.0
                    tmax = 96.0
                 endelse

                 proxy_sim = (db_sim/scale)^exponent

                 exc_obs = $
                    exceeds(t_dbdt_obs, dbdt_obs, tmin, tmax, dt, threshold, mincount)

                 exc_sim = $
                    exceeds(t_dbdt_sim, dbdt_sim, tmin, tmax, dt, threshold, mincount)

                 exc_db_sim = $
                    exceeds(t_db_sim, proxy_sim, tmin, tmax, dt, threshold, mincount)

                 all      = n_elements(exc_obs)
                 if all ne n_elements(exc_sim) then begin
                    print,'ERROR: for station ',station
                    help,exc_obs, exc_sim
                 endif

                 obsyes     = total(exc_obs)
                 obsno      = total(1-exc_obs)

                 hit_dbdt   = total(exc_obs*exc_sim)
                 false_dbdt = total((1-exc_obs)*(exc_sim))
                 miss_dbdt  = total(exc_obs*(1-exc_sim))
                 no_dbdt    = total((1-exc_obs)*(1-exc_sim))

                 hit_db     = total(exc_obs*exc_db_sim)
                 false_db   = total((1-exc_obs)*(exc_db_sim))
                 miss_db    = total(exc_obs*(1-exc_db_sim))
                 no_db      = total((1-exc_obs)*(1-exc_db_sim))

                 dbdt_score[*,istation] = dbdt_score[*,istation] + $
                                          [hit_dbdt, false_dbdt, $
                                           miss_dbdt, no_dbdt]
                 db_score[  *,istation] = db_score[*,istation] + $
                                          [hit_db, false_db, $
                                           miss_db, no_db]
                 
                 title = strupcase(station) + ': H,F,M,N=' + $
                         string(hit_dbdt,false_dbdt,miss_dbdt,no_dbdt, format='(4i4)')

                 if exponent gt 0.0 then title += $
                       '!C proxy: H,F,M,N='+ $
                       string(hit_db,false_db,miss_db,no_db,format='(4i4)')

                 if showplot then begin
                    if verbose then print,'plotting into p.multi=',!p.multi

                    plot, t_dbdt_obs, max_curve2(t_dbdt_obs, dbdt_obs, dt), $
                          xtitle = 'time [h]', ytitle='dB/dt!DH!N', $
                          title = title, xrange = [tmin, tmax], xstyle=1, $
                          thick=3

                    oplot, t_dbdt_sim, max_curve2(t_dbdt_sim, dbdt_sim, dt), $
                           color = 150, thick=3

                    oplot, [tmin, tmax], [threshold, threshold], linestyle=2
                 
                    if exponent gt 0 then $
                       oplot, t_db_sim, max_curve2(t_db_sim, proxy_sim, dt), $
                              color = 250, thick = 3
                 endif
              end
              'corr':begin

                 ; interpolate deltaB to the discrete times of dB/dt
                 db_obs1 = interpol(db_obs, t_db_obs, t_dbdt_obs)

                 a = max_curve2(t_dbdt_obs, dbdt_obs, dt)
                 b = max_curve2(t_dbdt_obs, db_obs1,  dt)

                 if n_elements(db_all) lt 1 then begin
                    dbdt_all = a
                    db_all   = b
                 endif else begin
                    dbdt_all = [dbdt_all, a]
                    db_all   = [db_all,   b]
                 endelse

                 b = (b/scale)^exponent

                 r = correlate(a,b)

                 if showplot then begin
                    plot, t_dbdt_obs, a, $
                          xtitle = 'time [h]', ytitle='dB/dt!DH!N', $
                          title = station+', corr='+string(r,format='(f5.2)')
                 
                    oplot, t_dbdt_obs, b, color = 250
                 endif
              end
           endcase
        endfor                  ; istation

        if showinfo then begin
           info = 'Model=' + modelname + $
                  ', event' + string(event, format='(i2.2)') + '=' + date + $
                  ', deltat=' + string(fix(deltat),format='(i0,"min")')
           if choice eq 'db' then info += $
              + ', threshold=' + string(fix(threshold),format='(i0,"nT")')
           if choice eq 'dbdt' then begin
              info += $
                 + ', threshold=' + string(threshold,format='(f3.1,"nT/s")')

              if exponent gt 0 then info += $
                 + ', proxy(red)=' + string(scale,exponent,format='(f5.1,"*dB!U",f5.2,"!N")')
              if coeff ne 1.0 then info += $
                 + ', coeff=' + string(coeff) +', power=' + string(power)
           endif
           xyouts,0.0,1.03,/norm,charsize=1, info
        endif

        if saveplot then close_device, /pdf

     endfor                     ; iIndex for event_I

     !p.multi(0) = 0

     ; Calculate various scores
     if choice eq 'dbdt' then begin

        h = total(dbdt_score(0,*))
        f = total(dbdt_score(1,*))
        m = total(dbdt_score(2,*))
        n = total(dbdt_score(3,*))

        dbdt_pod = h/(h+m)
        dbdt_pof = f/(f+n)
        dbdt_hss = 2*(h*n-m*f)/((h+m)*(m+n) + (h+f)*(f+n))

        h_ind = total(db_score(0,*))
        f_ind = total(db_score(1,*))
        m_ind = total(db_score(2,*))
        n_ind = total(db_score(3,*))

        db_pod = h_ind/(h_ind+m_ind)
        db_pof = f_ind/(f_ind+n_ind)
        db_hss = 2*(h_ind*n_ind-m_ind*f_ind)/((h_ind+m_ind)*(m_ind+n_ind) + (h_ind+f_ind)*(f_ind+n_ind))

        if lunOut ne -1 and DoPrintHeader ne 0 then begin
           printf, lunOut, 'db/dt skill scores for models: ' + models
           for iIndex = 0,n_elements(event_I)-1 do begin
              printf, lunOut, 'Event   =', event_I[iIndex]
              printf, lunOut, 'For Event '+string(event_I[iIndex],format='(i2)')+', Stations used: '+strtrim(stations_used[iIndex])
           endfor
           printf, lunOut, 'Deltat  = ' + string(deltat,format='(f6.2)') + ', threshold unit = [nT/s]'
           printf, lunOut, $
                   'threshold  TP  TN  FP  FN  total  TP_ind  TN_ind  FP_ind  FN_ind  total_ind  pod  far  hss  pod_ind  far_ind  hss_ind'
        endif

        if lunOut ne -1 then $
           printf, lunOut, threshold, h,n,f,m,h+n+f+m, h_ind,n_ind,f_ind,m_ind,h_ind+n_ind+f_ind+m_ind,    $
                   dbdt_pod, dbdt_pof, dbdt_hss, db_pod, db_pof, db_hss,       $
                   format='(f8.4, 10i6, 6f8.4)'
     endif

     if choice eq 'db' then begin
     
        h = total(db_score(0,*))
        f = total(db_score(1,*))
        m = total(db_score(2,*))
        n = total(db_score(3,*))

        db_pod = h/(h+m)
        db_pof = f/(f+n)
        db_hss = 2*(h*n-m*f)/((h+m)*(m+n) + (h+f)*(f+n))

        if lunOut ne -1 and DoPrintHeader ne 0 then begin
           printf, lunOut, 'db skill scores for models: ' + models
           for iIndex = 0,n_elements(event_I)-1 do begin
              printf, lunOut, 'Event   =', event_I[iIndex]
              printf, lunOut, 'For Event '+string(event_I[iIndex],format='(i2)')+', Stations used: '+strtrim(stations_used[iIndex])
           endfor
           printf, lunOut, 'Deltat  = ' + string(deltat,format='(f6.2)') + ', threshold unit = [nT]'
           printf, lunOut, 'threshold  TP  TN  FP  FN  total  pod  far  hss'
        endif
     
        if lunOut ne -1 then $
           printf, lunOut, threshold, h,n,f,m,h+n+f+m, db_pod, db_pof, db_hss, format='(f8.4,5i6, 3f8.4)'
     
     endif

  endfor         ;; imodel

  !p.multi = 0

  if choice eq 'corr' gt 0 then begin

     help, db_all, dbdt_all

     print,'correlate(db_all, dbdt_all)=', correlate(db_all, dbdt_all)

     param = [250., 1.0]
     dbdt_fit = lmfit(db_all, dbdt_all, param, FUNCTION_NAME='scale_exp', $
                      sigma=sigma)

     ii = where(db_all gt 10.0 and dbdt_all gt 0.1)
     db_all   = db_all(ii)
     dbdt_all = dbdt_all(ii)
     dbdt_fit = dbdt_fit(ii)

     print,'correlate(db_all>10, dbdt_all>0.1)=', correlate(db_all, dbdt_all)
     print,'correlate(log db_all>10, log dbdt_all>0.1)=', $
           correlate(alog(db_all), alog(dbdt_all))

     print,'parameter fit and 1 sigma errors=', param, sigma

     if showplot then begin
        if saveplot then set_device, 'corr_'+strjoin(stations)+'.eps', /eps

        plot_oo, db_all, dbdt_all, psym=1, $
                 xtitle='dB!DH!N [nT]', ytitle='dB/dt!DH!N [nT/s]'

        oplot, db_all, dbdt_fit, color=250, thick=3

        oplot, [10,10000], 2/60.*[10,10000], thick=2, color=150

        if exponent gt 0 then $
           oplot, [1.,10000.], ([1.,10000.]/scale)^exponent, color=100
        
        if saveplot then close_device, /pdf
     endif
  endif

end

;==============================================================================

function func, arg

  common func_param, thresholds, stations, imodel, events, opt

  averagehss  = 0.0
  averagehss2 = 0.0

  n = n_elements(thresholds)

  for ithreshold = 0, n-1 do begin

     if opt eq 'db' then begin
        predict,'dbdt', threshold=thresholds[ithreshold], $
                stations=stations, imodel=imodel, $
                events=events,                               $
                scale=arg(0), exponent=arg(1), db_hss = hss, $
                dbdt_hss = hss2
     endif else begin
        predict,'dbdt', threshold=thresholds[ithreshold], $
                stations=stations, imodel=imodel, $
                events=events,                       $
                coeff=arg(0), power=arg(1), dbdt_hss = hss
     endelse

     averagehss  = averagehss + hss
     averagehss2 = averagehss2 + hss2

  endfor

  averagehss  = averagehss/n
  averagehss2 = averagehss2/n

  if opt eq 'db' then $
     print, 'Current scale, exponent, hss_db, hss_dbdt=', $
            arg, averagehss, averagehss2, format='(a,4f10.3)' $
  else $
     print, 'Current coeff, power, hss=', $
            arg, averagehss, format='(a,3f10.3)'


  ; Since amoebe finds the minimum, we take negative sign here
  return, -averagehss

end

;==============================================================================

pro optimize, thresholds=thresholds1, stations=stations1, imodel=imodel1, $
              events=events1, opt=opt1, $
              scale=scale, exponent=exponent

  common func_param, thresholds, stations, imodel, events, opt

  if keyword_set(thresholds1) then $
     thresholds = thresholds1 $
  else $
     thresholds = [0.3, 0.7, 1.1, 1.5]

  if keyword_set(stations1) then $
     stations  = stations1 $
  else $
     stations = ['abk','pbq','ykc']

  if keyword_set(imodel1) then $
     imodel = imodel1 $
  else $
     imodel = 0

  if keyword_set(events1) then $
     events=events1            $
  else $
     events='1-6'

  ; what shall we optimize for: db or dbdt
  if keyword_set(opt1) then $
     opt = opt1 $
  else $
     opt = 'db'

  ; initial values for scale and 
  if not keyword_set(scale)    then scale = 292.0
  if not keyword_set(exponent) then exponent = 1.14

  if opt eq 'db' then $
     results = amoeba(1.0e-3, scale=[100.0, 1.0], p0=[scale, exponent], $
                      function_value=averagehss) $
  else $
     results = amoeba(1.0e-3, scale=[0.25, 0.25], p0=[1.0, 1.0], $
                      function_value=averagehss)

  ; Change back sign
  averagehss = -averagehss
  
  print,'thresholds = ', thresholds
  print,'stations   = ', stations
  print,'imodel     = ', imodel
  print,'events     = ', events
 
  if opt eq 'db' then $
     print, 'Optimal scale, exponent, hss=', results, averagehss(0), $
            format='(a,3f10.3)' $
  else $
     print, 'Optimal coeff, power, hss=', results, averagehss(0), $
            format='(a,3f10.3)'

end

;==============================================================================

pro calc_hss_dt_table, stations, imodel, directs, indirects
  ; INPUTS:
  ; Stations is an array of station names
  ; imodel is the model number: 0 for obs, 1 for SWMF_old, 2 for SWMF_new.
  ; OUTPUTS:
  ; "directs", a nDeltaT-by-nThreshhold
  deltats    = [1, 2, 5, 10, 20, 40]
  thresholds = [0.3, 0.7, 1.1, 1.5]

  ndeltat    = n_elements(deltats)
  nthreshold = n_elements(thresholds)

  directs   = fltarr(ndeltat, nthreshold)
  indirects = fltarr(ndeltat, nthreshold)

  stencil = 1
  scale    = 292
  exponent = 1.14

;;  stencil = 2
;;  scale    = 379
;;  exponent = 1.14

  for ithreshold = 0, nthreshold-1 do begin
     threshold = thresholds[ithreshold]
     for ideltat = 0, ndeltat-1 do begin
        deltat = deltats[ideltat]
        predict,'dbdt',stations=stations,threshold=threshold,scale=scale, $
                exponent=exponent,deltat=deltat, dbdt_hss=dbdt_hss, $
                db_hss=db_hss, stencil=stencil
        directs[ideltat,ithreshold] = dbdt_hss
        indirects[ideltat,ithreshold] = db_hss
     endfor
  endfor

end
;==============================================================================
pro show_hss_dt_table, stations, directs, indirects

  deltats=[1,2,5,10,20,40]
  thresholds=[0.3, 0.7, 1.1, 1.5]

  s = size(directs)

  ndeltat    = s(1)
  nthreshold = s(2)

  print, 'stations=', stations
  print, '\tableline'
  for ithreshold = 0, nthreshold-1 do begin
     line1 = string(thresholds(ithreshold),format='(f3.1,"\,[nT/s]&")')
     line2 = line1
     line1 = line1 + ' direct   '
     line2 = line2 + ' indirect '
     for ideltat = 0, ndeltat-1 do begin
        line1 = line1 + string(  directs[ideltat,ithreshold], format='("& ",f5.3," ")')
        line2 = line2 + string(indirects[ideltat,ithreshold], format='("& ",f5.3," ")')
     endfor
     line1 = line1 + '\\'
     line2 = line2 + '\\'
     print, line1
     print, line2
     print, '\tableline'
  endfor

end

;==============================================================================
pro calc_all_events, models=models, events=events, mydir=mydir, InputDir=InputDir
  
;; Calculate scores for the models listed in the 'models' string array
;; for all station groups (low, mid, high, veryhigh, all).
;; Save scores into separate files for each station group and 
;; each event from the events string (default is 1,2,3,4,5,6).
;; Create plots of dB/dt per model and per event for the station group 'all'.

  ;; Compare deltaB/Results with deltaB/SWMF_CCMC by default
  if n_elements(models) lt 1 then models=['Results', 'SWMF_CCMC']

  ;; well, use the first model....
  event_I = set_eventlist(events,mydir,models[0])

  ;; Set station groups and thresholds
  stationlats = ['all', 'veryhigh', 'high', 'mid', 'low']
  thresholds  = [0.3, 0.7, 1.1, 1.5]

  ; These are default values
  deltat   = 20.
  stencil  = 1
  scale    = 292
  exponent = 1.14

  ; Create full metrics for each event:
  for ilat = 0, n_elements(stationlats)-1 do begin
     stationlat = stationlats[ilat]
     for iIndex = 0, n_elements(event_I)-1 do begin
        event=event_I(iIndex)
        filename=string(stationlat, event, $
                        format='("metrics_lat_",a3,"_event",i2.2,".txt")')
        openw,  lunOut, filename, append=ithresh, /get_lun
        DoPrintHeader = 1
        for ithresh = 0, n_elements(thresholds)-1 do begin
           threshold = thresholds[ithresh]
           predict,'dbdt', $
                   models=models, $
                   stationlat=stationlat, threshold=threshold, $
                   scale=scale, exponent=exponent,             $
                   events=string(event,format='(i2.2)'),       $
                   deltat=deltat, stencil=stencil,             $
                   lunOut=lunOut,                              $
                   saveplot=(stationlat eq 'all'),             $
                   mydir=mydir, DoPrintHeader=DoPrintHeader,   $
                   InputDir=InputDir
           DoPrintHeader = 0
        endfor
        close, lunOut
        free_lun, lunOut
     endfor
  endfor
end
;==============================================================================

pro save_comp_dbdt_table, $
   stationlat, model1, model2, events=events, mydir=mydir, InputDir=InputDir

;; Compare deltaB/model1 and deltaB/model2 outputs 
;; for the stationlat station group:
;; stationlat = 'all', 'veryhigh', 'high', 'mid' or 'low'. Default is all.
;; If model1 is not given 'Results' is assumed. 
;; If model2 is not given 'SWMF_CCMC' are used.
;; Events starting from the event string (default is 1,2,3,4,5,6).

  if n_elements(stationlat) lt 1 then stationlat='all'
  if n_elements(model1)     lt 1 then model1 = 'Results'
  if n_elements(model2)     lt 1 then model2 = 'SWMF_CCMC'

  ;; check if the two models have the same events, if not, quit
  event1_I = set_eventlist(events,mydir,model1)
  event2_I = set_eventlist(events,mydir,model2)

  if not array_equal(event1_I, event2_I) then begin
     print, model1 + ' and ' + model2 + ' do not have the same event list.'
     retall
  endif

  thresholds=[0.3, 0.7, 1.1, 1.5]
  deltat = 20.

  ; Size of results arrays:
  nthresh = n_elements(thresholds)
  nmetric = 3 ; POD, FAR, HSS

  ; Arrays to store results:
  directs    = fltarr(nmetric, nthresh)
  indirects  = fltarr(nmetric, nthresh)
  directs2   = fltarr(nmetric, nthresh)
  indirects2 = fltarr(nmetric, nthresh)

  stencil  = 1
  scale    = 292
  exponent = 1.14

;;  stencil = 2
;;  scale    = 379
;;  exponent = 1.14

  for ithresh = 0, nthresh-1 do begin
     threshold = thresholds[ithresh]
     filename=string(stationlat, deltat, floor(threshold), $
                     floor(10*threshold-10*floor(threshold)), $
                     format='("metrics_",a,"_dt",i2.2,"_thresh",i1.1,"p",i2.2,".txt")')
     ; Results for model 1:
     predict,'dbdt',stationlat=stationlat,threshold=threshold,scale=scale, $
             exponent=exponent,deltat=deltat, stencil=stencil, $
             models=[model1], $
             events=events, $
             dbdt_hss=dbdt_hss, dbdt_pod=dbdt_pod, dbdt_pof=dbdt_pof,   $
             db_hss  =db_hss,   db_pod  =db_pod,   db_pof  =db_pof, mydir=mydir, $
             InputDir=InputDir

     directs[  *, ithresh] = [dbdt_pod, dbdt_pof, dbdt_hss]
     indirects[*, ithresh] = [db_pod,   db_pof,   db_hss  ]

     ; Results for model 2:
     predict,'dbdt',stationlat=stationlat,threshold=threshold,scale=scale, $
             exponent=exponent,deltat=deltat, stencil=stencil, $
             models=[model2], $
             events=events, $
             dbdt_hss=dbdt_hss, dbdt_pod=dbdt_pod, dbdt_pof=dbdt_pof,   $
             db_hss  =db_hss,   db_pod  =db_pod,   db_pof  =db_pof, mydir=mydir, $
             InputDir=InputDir

     directs2[  *, ithresh] = [dbdt_pod, dbdt_pof, dbdt_hss]
     indirects2[*, ithresh] = [db_pod,   db_pof,   db_hss  ]
  endfor

  ; print out comparison
  filename = "metric_table_" + stationlat + ".tex"
  openw, lun, filename, /get_lun
  
  printf, lun, 'models=', model1,' and (',model1,' - ',model2,')'
  printf, lun, 'events =' + strjoin(strtrim(string(event_I,format='(i)'),2),',')
  printf, lun, 'stationlat=', stationlat
  printf, lun, '$\Delta t_{window}=',deltat,'$'
  printf, lun, ''
  printf, lun, '\begin{table}[ht]'
  printf, lun, '\centering'
  printf, lun, '\begin{tabular}{l l|c c c}'
  printf, lun, 'Threshold&Method&POD&POFD&HSS\\'
  printf, lun, '\hline'
  for ithresh = 0, nthresh-1 do begin
     line1 = string(thresholds(ithresh),format='(f3.1,"\,[nT/s]&")')
     line2 = line1
     line1 += ' direct   '
     line2 += ' indirect '
     
     for imetric = 0, nmetric-1 do begin
        line1 += string( $
                directs[imetric,ithresh], $
                directs[imetric,ithresh] - directs2[ imetric, ithresh], $
                format='("& ",f5.3," (",f+6.3,") ")')
        line2 += string( $
                indirects[imetric,ithresh], $
                indirects[imetric,ithresh] - indirects2[imetric, ithresh], $
                format='("& ",f5.3," (",f+6.3,") ")')
     endfor
     line1 += '\\'
     line2 += '\\'
     printf, lun, line1
     printf, lun, line2
     printf, lun, '\hline'
  endfor
  
  printf, lun, '\end{tabular}'
  printf, lun, '\caption{Performance metrics for the SWMF.}'
  printf, lun, '\end{table}'
  
  free_lun, lun
end

;==============================================================================
pro save_comp_dbdt_tables, $
   model1, model2, events=events, mydir=mydir, InputDir=InputDir
  
  ;; Create comparison tables between results stored in
  ;; deltaB/model1 and deltaB/model2. Defaults are 'Results' and 'SWMF_CCMC'.
  ;; Combine scores for all events from the event string (default is 1
  ;; to 6). 
  ;; Create a separate table for the various station groups:
  ;; low, mid, high, veryhigh, all.

  ; Set station groups
  stationlats = ['all', 'veryhigh', 'high', 'mid', 'low']

  ; Create combined metrics for all events:
  for ilat=0, n_elements(stationlats)-1 do begin
     save_comp_dbdt_table, stationlats[ilat], $
                           model1, model2, $
                           events=events, $
                           mydir=mydir,   $
                           InputDir=InputDir
  endfor
end
;==============================================================================

pro calc_all_db_events, models=models, events=events, mydir=mydir, InputDir=InputDir

;; Calculate scores for the models listed in the 'models' string
;; array for all station groups (low, mid, high, veryhigh, all).
;; Save scores into separate files for each station group and 
;; each event from the event string (default is 1 to 6).
;; Create plots of dB/dt per model and per event for the station group 'all'.

  ; Compare deltaB/Results with deltaB/SWMF_CCMC by default
  if n_elements(models) lt 1 then models=['Results', 'SWMF_CCMC']

  ;; well, use the first model....
  event_I = set_eventlist(events,mydir,models[0])

  ; Set station groups and thresholds
  stationlats = ['all', 'veryhigh', 'high', 'mid', 'low']
  thresholds  = [101.6, 213.6, 317.5, 416.7]

  ; These are default values
  deltat   = 20.
  stencil  = 1
  scale    = 292
  exponent = 1.14

  ; Create full metrics for each event:
  for ilat = 0, n_elements(stationlats)-1 do begin
     stationlat = stationlats[ilat]
     for iIndex = 0, n_elements(event_I)-1 do begin
        event = event_I(iIndex)
        filename=string(stationlat, event, $
                        format='("metrics_db_lat_",a3,"_event",i2.2,".txt")')
        openw,  lunOut, filename, append=ithresh, /get_lun
        DoPrintHeader = 1
        for ithresh = 0, n_elements(thresholds)-1 do begin
           threshold = thresholds[ithresh]
           predict,'db', $
                   models=models, $
                   stationlat=stationlat, threshold=threshold, $
                   scale=scale, exponent=exponent,             $
                   events=string(event,format='(i2.2)'),        $
                   deltat=deltat, stencil=stencil,             $
                   lunOut=lunOut,                              $
                   saveplot=(stationlat eq 'all'),             $
                   mydir=mydir, DoPrintHeader=DoPrintHeader,   $
                   InputDir=InputDir
           DoPrintHeader = 0
        endfor
        close, lunOut
        free_lun, lunOut
     endfor
  endfor
end
;==============================================================================

pro save_comp_db_table, $
   stationlat, model1, model2, events=events, $
   mydir=mydir, InputDir=InputDir

;; Compare deltaB/model1 and deltaB/model2 outputs 
;; for the stationlat station group:
;; stationlat = 'all', 'veryhigh', 'high', 'mid' or 'low'. Default is all.
;; If model1 is not given 'Results' is assumed. 
;; If model2 is not given 'SWMF_CCMC' are used.
;; Events starting from the events string (default is 1 to 6).

  if n_elements(stationlat) lt 1 then stationlat='all'
  if n_elements(model1)     lt 1 then model1 = 'Results'
  if n_elements(model2)     lt 1 then model2 = 'SWMF_CCMC'

  ;; check if the two models have the same events, if not, quit
  event1_I = set_eventlist(events,mydir,model1)
  event2_I = set_eventlist(events,mydir,model2)

  if not array_equal(event1_I, event2_I) then begin
     print, model1 + ' and ' + model2 + ' do not have the same event list.'
     retall
  endif

  thresholds=[101.6, 213.6, 317.5, 416.7]
  deltat = 20.

  ; Size of results arrays:
  nthresh = n_elements(thresholds)
  nmetric = 3 ; POD, FAR, HSS

  ; Arrays to store results:
  directs    = fltarr(nmetric, nthresh)
  indirects  = fltarr(nmetric, nthresh)
  directs2   = fltarr(nmetric, nthresh)
  indirects2 = fltarr(nmetric, nthresh)

  stencil  = 1
  scale    = 292
  exponent = 1.14

;;  stencil = 2
;;  scale    = 379
;;  exponent = 1.14

  for ithresh = 0, nthresh-1 do begin
     threshold = thresholds[ithresh]
     filename=string(stationlat, deltat, floor(threshold), $
                     floor(10*threshold-10*floor(threshold)), $
                     format='("metrics_",a,"_dt",i2.2,"_thresh",i1.1,"p",i2.2,".txt")')
     ; Results for model 1:
     predict,'db',stationlat=stationlat,threshold=threshold,scale=scale, $
             exponent=exponent,deltat=deltat, stencil=stencil, $
             models=[model1], $
             events=events, $
             db_hss  =db_hss,   db_pod  =db_pod,   db_pof  =db_pof, mydir=mydir, $
             InputDir=InputDir

     directs[  *, ithresh] = [db_pod,   db_pof,   db_hss  ]

     ; Results for model 2:
     predict,'db',stationlat=stationlat,threshold=threshold,scale=scale, $
             exponent=exponent,deltat=deltat, stencil=stencil, $
             models=[model2], $
             events=events, $
             db_hss  =db_hss,   db_pod  =db_pod,   db_pof  =db_pof, mydir=mydir, $
             InputDir=InputDir

     directs2[  *, ithresh] = [db_pod,   db_pof,   db_hss  ]
  endfor

  ; print out comparison
  filename = "metric_table_db_" + stationlat + ".tex"
  openw, lun, filename, /get_lun

  printf, lun, 'models=', model1,' and (',model1,' - ',model2,')'
  printf, lun, 'events =' + strjoin(strtrim(string(event_I,format='(i)'),2),',')
  printf, lun, 'stationlat=', stationlat
  printf, lun, '$\Delta t_{window}=',deltat,'$'
  printf, lun, ''
  printf, lun, '\begin{table}[ht]'
  printf, lun, '\centering'
  printf, lun, '\begin{tabular}{l|c c c}'
  printf, lun, 'Threshold&POD&POFD&HSS\\'
  printf, lun, '\hline'
  for ithresh = 0, nthresh-1 do begin
     line1 = string(thresholds(ithresh),format='(f6.1,"\,[nT]")')
     line2 = line1
     ;line1 += ' direct   '
     ;line2 += ' indirect '
     
     for imetric = 0, nmetric-1 do begin
        line1 += string( $
                directs[imetric,ithresh], $
                directs[imetric,ithresh] - directs2[ imetric, ithresh], $
                format='("& ",f5.3," (",f+6.3,") ")')
        ;line2 += string( $
        ;        indirects[imetric,ithresh], $
        ;        indirects[imetric,ithresh] - indirects2[imetric, ithresh], $
        ;        format='("& ",f5.3," (",f+6.3,") ")')
     endfor
     line1 += '\\'
     line2 += '\\'
     printf, lun, line1
     ;printf, lun, line2
     printf, lun, '\hline'
  endfor

  printf, lun, '\end{tabular}'
  printf, lun, '\caption{Performance metrics for the SWMF.}'
  printf, lun, '\end{table}'
  
  free_lun, lun
  
end

;==============================================================================

pro save_comp_db_tables, $
   model1, model2, events=events, mydir=mydir, InputDir=InputDir
  
  ;; Create comparison tables between results stored in
  ;; deltaB/model1 and deltaB/model2. Defaults are 'Results' and 'SWMF_CCMC'.
  ;; Combine scores for all events from the event string.
  ;; (default is 1 to 6).
  ;; Create a separate table for the various station groups:
  ;; low, mid, high, veryhigh, all.

  ; Set station groups
  stationlats = ['all', 'veryhigh', 'high', 'mid', 'low']

  ; Create combined metrics for all events:
  for ilat=0, n_elements(stationlats)-1 do begin
     save_comp_db_table, stationlats[ilat], $
                         model1, model2, $
                         events=events, $
                         mydir=mydir, InputDir=InputDir
  endfor
end

;==============================================================================

pro save_tables, model=model, events=events, mydir=mydir, InputDir=InputDir
  
  ;; Create tables containing db/dt and db skill scores.
  ;; Defaults are 'Results'
  ;; Combine scores for all events from the event string
  ;; (default is 1 to 6).
  ;; Create a separate table for the various station groups:
  ;; low, mid, high, veryhigh, all.

  ; Set station groups
  stationlats = ['all', 'veryhigh', 'high', 'mid', 'low']

  ; Create combined metrics for all events:
  for ilat=0, n_elements(stationlats)-1 do begin
     save_table, stationlats[ilat], model, $
                 events=events, mydir=mydir, InputDir=InputDir
  endfor
end

;==============================================================================

pro save_table, stationlat, model, events=events, mydir=mydir, InputDir=InputDir

;; Create tables containing db/dt and db skill scores.
;; for the stationlat station group:
;; stationlat = 'all', 'veryhigh', 'high', 'mid' or 'low'. Default is all.
;; If model1 is not given 'Results' is assumed. 
;; Events starting from the events strng (default is 1 to 6).

  if n_elements(stationlat) lt 1 then stationlat='all'
  if n_elements(model)      lt 1 then model = 'Results'

  event_I = set_eventlist(events,mydir,model)

  thresholds=[101.6, 213.6, 317.5, 416.7]
  deltat = 20.

  ; Size of results arrays:
  nthresh = n_elements(thresholds)
  nmetric = 3 ; POD, FAR, HSS

  ; Arrays to store results:
  directs    = fltarr(nmetric, nthresh)
  indirects  = fltarr(nmetric, nthresh)
  
  stencil  = 1
  scale    = 292
  exponent = 1.14

  for ithresh = 0, nthresh-1 do begin
     threshold = thresholds[ithresh]

     ; Results for model:
     predict,'db',stationlat=stationlat,threshold=threshold,scale=scale, $
             exponent=exponent,deltat=deltat, stencil=stencil, $
             models=[model], $
             events=events, $
             db_hss  =db_hss,   db_pod  =db_pod,   db_pof  =db_pof, $
             mydir=mydir, stations_used=stations_used, InputDir=InputDir

     directs[  *, ithresh] = [db_pod,   db_pof,   db_hss  ]
  endfor

  filename = "metric_table_db_" + stationlat + ".txt"
  openw, lun, filename, /get_lun

  printf, lun, 'model: ' + model
  printf, lun, 'Events = ' + strjoin(strtrim(string(event_I,format='(i)'),2),',')
  for iIndex = 0,n_elements(event_I)-1 do begin
     printf, lun, 'For Event '+string(event_I[iIndex],format='(i2)')+', Stations used: '+strtrim(stations_used[iIndex])
  endfor
  printf, lun, 'Deltat = ' + string(deltat, format='(f6.2)') + ', thresholds unit = [nT]'
  printf, lun, 'threshold  pod      far     hss'
  for ithresh = 0, nthresh-1 do begin
     printf, lun, thresholds[ithresh], directs[*,ithresh], format='(4f8.4)'
  endfor
  free_lun, lun

  ; for db/dt skill scores
  thresholds=[0.3, 0.7, 1.1, 1.5]
  deltat = 20.

  for ithresh = 0, nthresh-1 do begin
     threshold = thresholds[ithresh]

     ; Results for model:
     predict,'dbdt',stationlat=stationlat,threshold=threshold,scale=scale, $
             exponent=exponent,deltat=deltat, stencil=stencil, $
             models=[model], $
             events=events, $
             dbdt_hss=dbdt_hss, dbdt_pod=dbdt_pod, dbdt_pof=dbdt_pof,   $
             db_hss  =db_hss,   db_pod  =db_pod,   db_pof  =db_pof,     $
             mydir=mydir, stations_used=stations_used, InputDir=InputDir

     directs[  *, ithresh] = [dbdt_pod, dbdt_pof, dbdt_hss]
     indirects[*, ithresh] = [db_pod,   db_pof,   db_hss  ]
  endfor

  filename = "metric_table_" + stationlat + ".txt"
  openw, lun, filename, /get_lun
  printf, lun, 'model: '+ model
  printf, lun, 'Events = ' + strjoin(strtrim(string(event_I,format='(i)'),2),',')
  for iIndex = 0,n_elements(event_I)-1 do begin
     printf, lun, 'For Event '+string(event_I[iIndex],format='(i2)')+', Stations used: '+strtrim(stations_used[iIndex])
  endfor
  printf, lun, 'Deltat = ' + string(deltat, format='(f6.2)') + ', thresholds unit = [nT/s]'
  printf, lun, 'threshold  pod  far  hss  pod_ind  far_ind  hss_ind'
  for ithresh = 0, nthresh-1 do begin
     printf, lun, thresholds[ithresh],  directs[*,ithresh], $
             indirects[*,ithresh], format='(7f8.4)'
  endfor
  free_lun, lun
end

;==============================================================================
pro calc_kp_error, mydir=mydir, resdir=resdir, $
                   events=events, $
                   const=const, slope=slope

  ;; Calculate Kp error for multiple runs and events.
  ;; Fit a linear trend from run1: kpfit = slope*kp1 + const
  ;; Create one scatter plot for all events, and time series plots per event

  common getlog_param
  common log_data
  common plotlog_param

  if not keyword_set(mydir) then mydir='.'
  mydir += '/'

  if not keyword_set(resdir) then begin
     print,'Kp_error: keyword resdir is required'
     return
  endif
  
  ;; Use six events by default
  event_I = set_eventlist(events,mydir,resdir)

  ;; interpolate to observed times and collect data from all events
  for iIndex = 0,n_elements(event_I)-1 do begin
     ;; read in measured values
     event = event_I(iIndex)
     eventnumber = string(event,format='(i2.2)')
     eventnum    = strtrim(string(event),2)
     logfilename=mydir+'deltaB/'+ResDir+'/run*/Event'+eventnumber+'/geoindex*.log '+ $
                 mydir+'Kp/event_'+eventnumber+'.txt'
     read_log_data
     interpol_log,wlog,wlog1,kp,kp1,'kp',wlognames,wlognames1,logtime,timeunit='date'
     if event eq event_I(0) then begin
        kpall  = [kp]
        kp1all = [kp1]
     endif else begin
        kpall  = [kpall,kp]
        kp1all = [kp1all,kp1]
     endelse
  endfor

  ;; linear fit from simulated to observed kp
  n = n_elements(kpall)
  result   = linfit(kp1all, kpall)
  const    = result(0)
  slope    = result(1)
  kp1fit   = const + slope*kp1all ; detrended simulation Kp
  error    = total(abs(kpall-kp1all))/n
  errorfit = total(abs(kpall-kp1fit))/n
  print,'Best fit kp1 = ',slope,'*kp +', const
  print,'<|Kp-Kp1|>=', error,' <|Kp-Kp1fit|>=', errorfit
  set_device,mydir+'deltaB/'+ResDir+'/kp_scatter_all.eps', /square
  title = string(result,error,errorfit,format='("Fit const,slope=",f5.2,",",f5.2,"!C","Error orig,fit=",f5.2,",",f5.2)')
  plot, kpall, kp1all, xrange=[0,10], yrange=[0,10], $
        title=title, xtitle='Observed Kp', ytitle='Run1 Kp and fit (green)',$
        psym=1, thick=3,symsize=2
  oplot,kpall, kp1fit, psym=1, thick=3, symsize=2, color=150
  oplot,[0,10],[0,10], color=150, thick=3
  oplot,slope*[0,10]+const,[0,10], thick=3
  close_device, /pdf

  ;; plot the simulated Kp for all the runs and events
  colors=[255,50,250,150,200,100,25,220,125]
  timeunit = 'date'
  logfunc  = 'Kp'
  yranges = [[0,10]]
  for iIndext = 0, n_elements(event_I)-1 do begin
     event = event_I(iIndex)
     ;; read in measured values
     eventnumber = string(event,format='(i2.2)')
     eventnum    = strtrim(string(event),2)
     title = 'Event '+eventnum
     logfilename=mydir+'deltaB/'+ResDir+'/run*/Event'+eventnumber+'/geoindex*.log '+ $
                 mydir+'Kp/event_'+eventnumber+'.txt'
     read_log_data
     xrange = [logtime1(0), logtime1(-1)]
     set_device,mydir+'deltaB/'+ResDir+'/kp_plot_event'+eventnumber+'.eps', /land
     plot_log_data
     oplot,logtime1,slope*wlog1(*,8)+const,linestyle=2,thick=5
     close_device, /pdf
  endfor
  colors=[255,100,250,150,200,50,25,220,125] ; reset colors 

end

;==============================================================================
pro calc_dst_error, models=models, events=events, mydir=mydir, InputDir=InputDir

;; Calculate Dst (symH) error in nT
;; for the models listed in the 'models' string array
;; and save results into dst_error.txt

  common getlog_param
  common log_data
  common plotlog_param

  if not keyword_set(mydir)    then mydir='.'
  if not keyword_set(InputDir) then InputDir='Inputs'

  if strmid(mydir,mydir.strlen()-1)    ne '/' then mydir    = mydir+'/'
  if strmid(mydir,InputDir.strlen()-1) ne '/' then InputDir = InputDir+'/'

  modelnames = models

  ;; Default directory
  if n_elements(models) lt 1 then models=['Results']
  nmodel = n_elements(models)

  for imodel = 0, nmodel-1 do begin
     modelname = models[imodel]
     if(strpos(modelname,'deltaB/') ge 0) then modelname = strmid(modelname,strpos(modelname,'deltaB/')+7)
     modelnames[imodel] = strjoin(strsplit(modelname,'/',/extract),'_')
  endfor

  event_I = set_eventlist(events,mydir,models[0])

  errors = fltarr(nmodel)
  unit = 1
  openw, unit, 'dst_error.txt'
  printf, unit, 'L1 norm of Dst error in nT'
  printf, unit, 'event ', modelnames

  colors=[255,50,250,150,200,100,25,220,125]

  for iIndex = 0, n_elements(event_I)-1 do begin
     event=event_I(iIndex)
     ;; read in measured values, well, event number is in 2 digits
     ;; form now. 
     logfilename=mydir + InputDir + "Dst/event_"+string(event,format='(i2.2)')+".txt"
     logfilenameplot = logfilename
     legends = ['Observation']
     read_log_data
     wlog0 = wlog
     logtime0 = logtime
     wlognames0 = wlognames

     for imodel = 0, nmodel-1 do begin
        model = models[imodel]

        ;; remove anything before deltaB
        if(strpos(model,'deltaB/') ge 0) then model = strmid(model,strpos(model,'deltaB/')+7)

        ;; in case of processing the old 1 digit form of the event number
        if model eq 'run_test' then begin
           if file_test('run_test/run_event'+string(event,format='(i2.2)')+'/GM/IO2/log*.log') then begin
              logfilename = 'run_test/run_event'+string(event,format='(i2.2)')+'/GM/IO2/log*.log'
           endif else if file_test('run_test/run_event'+string(event,format='(i1.1)')+'/GM/IO2/log*.log') then begin
              logfilename = 'run_test/run_event'+string(event,format='(i1.1)')+'/GM/IO2/log*.log'
           endif else begin
              print, "Error: No simulation file is found. Stop"
              retall
           endelse
           legends    = [legends, 'Simulation']
        endif else begin
           if file_test(mydir+'deltaB/'+model+'/Event'+string(event,format='(i2.2)')+'/log*.log') then begin
              logfilename= mydir+'deltaB/'+model+'/Event'+string(event,format='(i2.2)')+'/log*.log'
           endif else if file_test(mydir+'deltaB/'+model+'/Event'+string(event,format='(i1.1)')+'/log*.log') then begin
              logfilename= mydir+'deltaB/'+model+'/Event'+string(event,format='(i1.1)')+'/log*.log'
           endif else begin
              print, "Error: No simulation file is found. Stop"
              retall
           endelse

           legends    =	[legends, modelnames[imodel]]
        endelse
        read_log_data
        logfilenameplot += ' ' + logfilenames
        if wlognames[19] eq 'dst' then wlognames[19] = 'dst_sm'
        interpol_log,wlog0,wlog,dst0,dst,'dst_sm',wlognames0,wlognames,logtime0
        errors[imodel] = total(abs(dst0-dst)) / n_elements(dst)
     endfor
     logfilename = logfilenameplot
     read_log_data
     set_device, 'dst_plot_event'+string(event,format='(i2.2)')+'.eps', /land
     logfunc='dst_sm'
     legendpos = [-0.05,0.02,0.05,0.23]
     xtitle   = 'Hours from ' + set_date_string(wlog(0,0),wlog(0,1),wlog(0,2))
     ytitles  = ['Dst [nT]']
     plot_log_data
     close_device, /pdf
     printf, unit, event, errors, format='(i2,10f8.2)'
  endfor
  colors=[255,100,250,150,200,50,25,220,125] ; reset colors
  close,unit
end

;==============================================================================
pro dst_stat_nRun, mydir=mydir, ResDir=ResDir, events=events, InputDir=InputDir

  common getlog_param
  common log_data
  common plotlog_param

  if not keyword_set(mydir)    then mydir='.'
  if not keyword_set(InputDir) then InputDir='Inputs'

  if strmid(mydir,mydir.strlen()-1)    ne '/' then mydir    = mydir+'/'
  if strmid(mydir,InputDir.strlen()-1) ne '/' then InputDir = InputDir+'/'

  ;; check how many runs
  file_I = FILE_SEARCH(mydir+'/deltaB/'+ResDir+'/run*/dst_error.txt', count=nRun)

  if nRun le 2 then begin
     print, ' nRun ='+string(nRun,format='(i2)')+' is less than 2'
     print, ' skipping combining dst error tables'
     print, mydir+'/deltaB/'+ResDir
     return
  end

  ;; take the event list from run1
  event_I = set_eventlist(events,mydir,ResDir+'/run1')

  print, ' combining the dst error tables for ' + ResDir

  fileOut = mydir+'/deltaB/'+ResDir+'/dst_error_all.txt'

  header_out = 'event     '
  StrRun     = ''
  line       = ''

  for iRun=0, nRun-1 do begin
     file_dst = file_I(iRun)

     ;; ------------------ start reading dst file ----------------------------
     openr, lunRead, file_dst, /get_lun

     ;; two lines of header
     readf, lunRead, line
     readf, lunRead, line

     ;; read the first line of data
     readf, lunRead, line
     DataTmp = float(STRSPLIT(line, ' ',/extract))
     nData   = n_elements(DataTmp)

     if (nData ne 2) then begin
        print, ' nData /= 2 ?????'
        print, ' line = ', line
        exit
     endif

     ;; maximum 1000 events
     dst_II = dblarr(nData, 1000)

     iEvent = 0
     dst_II(*,iEvent) = DataTmp

     while not eof(lunRead) do begin
        readf, lunRead, line

        DataTmp = float(STRSPLIT(line, ' ',/extract))

        iEvent = iEvent + 1
        dst_II(*, iEvent) = DataTmp
     endwhile

     close, lunRead
     free_lun, lunRead
     ;; ------------------ end reading dst file ----------------------------

     nEvent = iEvent + 1
     dst_II = dst_II(*,0:nEvent-1)

     if (iRun eq 0) then begin
        dst_III = fltarr(nData, nEvent, nRun)
     endif

     StrRun = StrRun + 'run_' +string(iRun+1, format='(i1)') + '    '
     dst_III(*,*,iRun) = dst_II
  endfor

  header_out= header_out + StrRun + 'average   stddev'

  openw,  lun, fileOut, /get_lun
  printf, lun, 'L1 norm of Dst error in nT for ' + ResDir
  printf, lun, header_out
  for iEvent = 0,nEvent-1 do begin
     printf, lun, dst_III(0,iEvent,0), dst_III(1,iEvent,*), mean(dst_III(1,iEvent,*)), $
             stddev(dst_III(1,iEvent,*)), format='(i2,5x, 10(f8.2,1x))'
  endfor
  close, lun
  free_lun, lun

  ;; plot the simulated dst for all the runs
  colors=[255,50,250,150,200,100,25,220,125]

  for iIndex = 0, n_elements(event_I)-1 do begin
     event = event_I(iIndex)
     ;; set the observed Dst file info
     logfilename = mydir + InputDir + "Dst/event_"+string(event,format='(i2.2)')+".txt"

     logfilenameplot = logfilename
     legends = ['Observation']

     if file_test(mydir+'/deltaB/'+ResDir+'/run*/Event'+string(event,format='(i2.2)')+'/log*.log') then begin
        eventnumber = string(event,format='(i2.2)')
     endif else if file_test(mydir+'/deltaB/'+ResDir+'/run*/Event'+string(event,format='(i1.1)')+'/log*.log') then begin
        eventnumber = string(event,format='(i1.1)')
     endif else begin
        print, "Error: No simulation file is found. Stop"
        retall
     endelse

     logfilename = mydir+'/deltaB/'+ResDir+'/run*/Event'+eventnumber+'/log*.log'
     legends     = [legends, 'run'+string(indgen(nRun)+1,format='(i1)')]

     read_log_data
     logfilenameplot = logfilenameplot + ' ' + strjoin(logfilenames, ' ')

     logfilename = logfilenameplot
     read_log_data
     set_device, 'dst_plot_event'+string(event,format='(i2.2)')+'.eps', /land
     logfunc='dst_sm'
     legendpos = [-0.05,0.02,0.05,0.28]
     xtitle   = 'Hours from ' + set_date_string(wlog(0,0),wlog(0,1),wlog(0,2))
     ytitles  = ['Dst [nT]']
     plot_log_data
     close_device, /pdf
  endfor

  colors=[255,100,250,150,200,50,25,220,125] ; reset colors
end

;==============================================================================
pro score_stat_nRun, mydir=mydir, ResDir=ResDir

  ;; check how many runs
  dir_I = FILE_SEARCH(mydir+'/deltaB/'+ResDir+'/run*', count=nRun)

  if nRun le 2 then begin
     print, ' nRun ='+string(nRun,format='(i2)')+' is less than 2'
     print, ' skipping combining the skill score tables'
     return
  end

  ;; go to run1 so that the file_I do not contain the path info
  cd, mydir+'/deltaB/'+ResDir+'/run1'
  file_I = FILE_SEARCH('metric*txt', count=nFile)

  if nFile eq 0 then begin
     print, 'Warning: no metric*txt, skipping combining the skill score tables'
     return
  end

  ;; go back to the ResDir, where the combined tables are save
  cd, mydir+'/deltaB/'+ResDir

  print, ' combining the skil score tables for ' + ResDir

  for iFile = 0, nFile-1 do begin
     fileOut = mydir+'/deltaB/'+ResDir+'/'+file_I(iFile)

     for iRun=0, nRun-1 do begin
        fileIn = mydir+'/deltaB/'+ResDir+'/run'+string(iRun+1, format='(i1)')+'/'+file_I(iFile)

        get_log, fileIn, wlog, wlogname, headlines=headlines

        table_II = wlog

        siz = size(table_II)
        nThreshold = siz[1]
        nData      = siz[2]

        ;; create the 3D metric and the 2D output metric
        if iRun eq 0 then begin
           table_III    = fltarr(nThreshold, nData,    nRun)
           table_out_II = fltarr(nThreshold, nData*2-1)
        endif

        table_III(*,*,iRun) = table_II
     endfor

     for iThreshold = 0, nThreshold-1 do begin
        table_local_II  = reform(table_III(iThreshold,*,*), nData, nRun)

        ;; the first element is the threshold, no need to calc the mean/stddev
        table_out_II(iThreshold)    = table_local_II(0,0)

        ;; calc the average and std with nRun
        for iData = 1, nData-1 do begin
           table_out_II(iThreshold, iData)         = mean(  table_local_II(iData,*))
           table_out_II(iThreshold, iData+nData-1) = stddev(table_local_II(iData,*))
        endfor
     endfor

     openw,  lunOut, fileOut, /get_lun
     ;; print the header info
     printf, lunOut, 'model: '+ mydir + '/deltaB/'+ResDir
     for i=1, n_elements(headlines)-2 do begin
        printf, lunOut, headlines[i]
     endfor

     printf, lunOut, strjoin(wlogname, ' ') + ' ' + strjoin('d'+wlogname(1:*), ' ')

     for iThreshold = 0, nThreshold-1 do begin
        printf, lunOut, table_out_II(iThreshold,*), format='(100f10.4)'
     endfor

     close, lunOut
     free_lun, lunOut
  endfor
end

;==============================================================================

pro check_calc_all, models=models, events=events, mydir=mydir, InputDir=InputDir

  if (not file_test('Event*',/DIRECTORY)) then begin
     print, "Error: no simulation results in dir:" + models
     retall
  endif

  calc_all_events,    models=models, events=events, mydir=mydir, InputDir=InputDir
  print,'----------------------------------------------------'
  print,'calc_all_events done.'
  print,'----------------------------------------------------'

  calc_all_db_events, models=models, events=events, mydir=mydir, InputDir=InputDir
  print,'----------------------------------------------------'
  print,'calc_all_db_events done.'
  print,'----------------------------------------------------'

  calc_dst_error,     models=models, events=events, mydir=mydir, InputDir=InputDir
  print,'----------------------------------------------------'
  print,'calc_dst_error done.'
  print,'----------------------------------------------------'

  save_tables,        model =models, events=events, mydir=mydir, InputDir=InputDir
  print,'----------------------------------------------------'
  print,'save_tables done.'
  print,'----------------------------------------------------'

end

;==============================================================================

pro stat_nRun, events=events, mydir=mydir, ResDir=ResDir, InputDir=InputDir

  dst_stat_nRun,   events=events, mydir=mydir, ResDir=ResDir, InputDir=InputDir
  score_stat_nRun, mydir=mydir, ResDir=ResDir

end

;==============================================================================

pro check_compare_all, models, events=events, mydir=mydir

  save_comp_dbdt_tables, models, events=events, mydir=mydir, InputDir=InputDir
  save_comp_db_tables,   models, events=events, mydir=mydir, InputDir=InputDir
  calc_dst_error, models=models, events=events, mydir=mydir, InputDir=InputDir

end
