function max_curve, array, width

  if width lt 2 then return, array

  ; sliding maximum function (like smooth)
  n = n_elements(array)
  result = array

  for i = 0, n - 1 do begin
     i0 = i - width/2 > 0
     i1 = i + width/2 - 1 < n-1
     result(i) = max(array(i0:i1))
  endfor

  return, result
end

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

function exceeds, time, array, tmin, tmax, dt, threshold

  ; time and array form a time series
  ; bin data from tmin to tmax with dt bin size
  ; return an array of 0-s and 1-s. 
  ; 1 corresponds to bins where any data exceeds the threshold.

  n = n_elements(array)

  if n ne n_elements(time) then begin
     print, 'ERROR in function exceeds, number of elements differ in time and array'
     help, time, array
     retall
  endif

  nbin  = fix( (tmax - tmin)/dt ) ;;; + 1

  result = intarr(nbin)

  for i = 0, n - 1 do begin

     t = time[i]
     if t lt tmin or t gt tmax then continue

     if array[i] ge threshold then begin
        ibin = fix( (t - tmin)/dt ) < nbin-1
        result[ibin] = 1
     endif
    
  endfor

  return, result

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
pro read_data, file, date, t, data, tderiv, dataderiv, dn

  ; extract year, month and day from the date string
  year  = fix(strmid(date,0,4))
  month = fix(strmid(date,4,2))
  day   = fix(strmid(date,6,2))

  ; read logfile, use hours for time unit
  get_log, file, wlog, wlogname, t, 'h'

  ; Starting day difference in hours
  hour = 24*(day - fix(wlog(0,2)))

  if wlog(0,0) ne year or wlog(0,1) ne month or abs(hour) gt 24 then begin
     print, 'ERROR for file  =', file
     print, 'Event date      =', date
     print, 'Year, month, day=', transpose(wlog(0,0:2))
     retall
  endif

  ;if hour ne 0 then print, 'For file=',file, ' adjusting time by ', hour,' hours'

  ; Adjust time
  t = t - hour

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

pro predict, choice, $
             models=models, modelnames=modelnames, $
             stationlat=stationlat, stations=stations, $
             firstevent=firstevent, lastevent=lastevent, $
             deltat=deltat, stencil=stencil, $
             threshold=threshold, $
             scale=scale, exponent=exponent, $
             coeff=coeff, power=power, $
             db_pod=db_pod, db_pof=db_pof, db_hss=db_hss, $
             dbdt_pod=dbdt_pod, dbdt_pof=dbdt_pof, dbdt_hss=dbdt_hss, $
             out_file=out_file, append=append, $
             showinfo=showinfo, verbose=verbose, $
             showplot=showplot, saveplot=saveplot

  ;; choice = 'db', 'dbdt', 'corr'
  ;; models: array directories containing results
  ;; modelnames: array of names for printing results (default=models)
  ;; firstevent: first event to use (default is 1)
  ;; lastevent:  last event to use (default is 6)
  ;; stations: array of station names (default is all 12 stations)
  ;; stationlat = 'all','veryhigh','high','mid' or 'low' (default='all')
  ;; deltat: width of bins in minutes (default=20)
  ;; stencil = 1 or 2: discretization for dB/dt (default=1, compact stencil)
  ;; scale, exponent: indirect dBdt = scale*(dB)^exponent (default=292,1.14)
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

  if not keyword_set(out_file) then out_file=''
  if not keyword_set(append)   then append=0
  if not keyword_set(verbose)  then verbose=0
  if not keyword_set(showplot) then showplot=0
  if not keyword_set(saveplot) then saveplot=0
  if saveplot then showplot=1

  ;; lun = -1 is STDOUT
  if out_file then openw, lun, out_file, append=append, /get_lun $
  else lun = -1
  
  ;; Width of stencil for time derivative
  if not keyword_set(stencil) then stencil = 1

  ;; threshold for dBdt [nT/s] or dB [nT]
  if not keyword_set(threshold) then begin
     if choice eq 'db' then threshold = 100.0 else threshold = 1.1
  endif

  ;; scaling and exponent for indirect db calculation:
  ;; dB/dt [nT/s] = scale*(dB[nT])^exponent
  if n_elements(scale)    lt 1 then scale = 292.0
  if n_elements(exponent) lt 1 then exponent = 1.14

  ;; coefficient and power for artificial scaling of results
  ;; result' = coeff*result^power
  if n_elements(coeff) lt 1 then coeff = 1.0
  if n_elements(power) lt 1 then power = 1.0

  if n_elements(showinfo) lt 1 then showinfo=1

  allstations = $
     ['frn', 'frd', 'fur', $
      'wng', 'new', 'ott', $
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

  events = ['?', 'Event1', 'Event2', 'Event3', 'Event4', 'Event5', 'Event6']

  periods= ['?', $
            '2003_Oct29_0600-Oct30_0600', $
            '2006_Dec14-1200-Dec16_0000', $
            '2001_Aug31_0000-Sep01_0000', $
            '2005_Aug31_1000-Sep01_1200', $
            '2010_Apr05_0000-Apr06_0000', $
            '2011_Aug05_0900-Aug06_0900' ]

  dates = ['?', '20031029', '20061214', '20010831', '20050831', '20100405', '20110805']
  tmins = [-1.,  6.0,       12.0,        0.0,       10.0,        0.0,        9.0 ]
  tmaxs = [-1.,  30.0,      48.0,       24.0,       36.0,       24.0,       33.0 ]

  if n_elements(firstevent) eq 0 then firstevent = 1
  if n_elements(lastevent)  eq 0 then lastevent  = n_elements(events)-1

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

  ; write header information to file:
  printf, lun, 'Stations used = ', stations
  printf, lun, 'Events used = '  , events[firstevent:lastevent]
  printf, lun, 'Deltat, threshold = ', deltat, threshold
  
  for imodel = 0, nmodel-1 do begin
     model     = models[imodel]
     modelname = modelnames[imodel]

     if verbose then print,' imodel, modelname=', imodel, modelname

     ;; first index: hit, false, miss, nopred
     dbdt_score = fltarr(4,nstation)
     db_score   = fltarr(4,nstation)

     for ievent = firstevent, lastevent do begin

        if verbose then print,' ievent, event=', ievent, ' ', events(ievent)

        if saveplot then begin
           plotfile  = choice + '_' + modelname + $
                       '_event' + string(ievent, format='(i2.2)')

           case choice of
              'db': plotfile += '_'+string(fix(threshold),format='(i0,"nT")')
              'dbdt': plotfile += '_'+string(threshold,format='(f3.1,"nTs")')
           endcase
           plotfile += '.eps'

           set_device, plotfile, /land
        endif

        event = events[ievent]
        date  = dates[ievent]

        for istation = 0, nstation-1 do begin

           station = strupcase(stations[istation])

           if verbose then print,' istation=', istation, ' ', station

           ; Station PBQ was replaced with SNK after 2007
           if date gt '2007' and station eq 'PBQ' then station = 'SNK'

           file_obs_db = 'deltaB/Observations/'+event+'/'+station+'.txt'
           if not file_test(file_obs_db) then begin
              print,'For event=',event,' there is no observation for station=',station
              continue
           endif

           file_sim_db  = 'deltaB/'+model+'/'+event+'/'+station+'.txt'
           if not file_test(file_sim_db) then begin
              if station eq 'SNK' then file_sim_db  = 'deltaB/'+model+'/'+event+'/PBQ.txt'
              if not file_test(file_sim_db) then begin
                 print,'For event=',event,' there is no result from model=',model,' for station=',station
                 continue
              endif
           endif

           if verbose then print,'reading observation and simulation data'

           ; Read db and calculate db/dt from observations and simulations
           read_data, file_obs_db, date, t_db_obs, $
                      db_obs, t_dbdt_obs, dbdt_obs, stencil
           read_data, file_sim_db, date, t_db_sim, $
                      db_sim, t_dbdt_sim, dbdt_sim, stencil

           ; Calculate contingency tables and create plots
           case choice of
              'db':begin
                 ;; artificial scaling
                 db_sim = coeff*db_sim^power
                 tmin = tmins(ievent) ;; min(t_db_sim) > min(t_db_obs)
                 tmax = tmaxs(ievent) ;; max(t_db_sim) < max(t_db_obs)

                 exc_obs  = $
                    exceeds(t_db_obs, db_obs, tmin, tmax, dt, threshold)

                 exc_sim = $
                    exceeds(t_db_sim, db_sim, tmin, tmax, dt, threshold)

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

                 tmin = tmins(ievent) ;; min(t_dbdt_sim) > min(t_dbdt_obs)
                 tmax = tmaxs(ievent) ;; max(t_dbdt_sim) < max(t_dbdt_obs)

                 proxy_sim = (db_sim/scale)^exponent

                 exc_obs = $
                    exceeds(t_dbdt_obs, dbdt_obs, tmin, tmax, dt, threshold)

                 exc_sim = $
                    exceeds(t_dbdt_sim, dbdt_sim, tmin, tmax, dt, threshold)

                 exc_db_sim = $
                    exceeds(t_db_sim, proxy_sim, tmin, tmax, dt, threshold)

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
                  ', event' + string(ievent, format='(i2.2)') + '=' + date + $
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

     endfor                     ; imodel

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

        printf, lun, modelname,' total dbdt: pod, pof, hss=', $
                dbdt_pod, dbdt_pof, dbdt_hss, $
                format='(2a,3f8.4)'

     endif

     if choice eq 'dbdt' or choice eq 'db' then begin
     
        h = total(db_score(0,*))
        f = total(db_score(1,*))
        m = total(db_score(2,*))
        n = total(db_score(3,*))

        db_pod = h/(h+m)
        db_pof = f/(f+n)
        db_hss = 2*(h*n-m*f)/((h+m)*(m+n) + (h+f)*(f+n))
     
        printf, lun, modelname,' total db  : pod, pof, hss=', $
                db_pod, db_pof, db_hss, $
                format='(2a,3f8.4)'
     
     endif

  endfor

  ; Close output file.
  if out_file then begin
     close, lun
     free_lun, lun
  endif
  
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

  common func_param, thresholds, stations, imodel, firstevent, lastevent, opt

  averagehss  = 0.0
  averagehss2 = 0.0

  n = n_elements(thresholds)

  for ithreshold = 0, n-1 do begin

     if opt eq 'db' then begin
        predict,'dbdt', threshold=thresholds[ithreshold], $
                stations=stations, imodel=imodel, $
                firstevent=firstevent, lastevent=lastevent, $
                scale=arg(0), exponent=arg(1), db_hss = hss, $
                dbdt_hss = hss2
     endif else begin
        predict,'dbdt', threshold=thresholds[ithreshold], $
                stations=stations, imodel=imodel, $
                firstevent=firstevent, lastevent=lastevent, $
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
              firstevent=firstevent1, lastevent=lastevent1, opt=opt1, $
              scale=scale, exponent=exponent

  common func_param, thresholds, stations, imodel, firstevent, lastevent, opt

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

  if keyword_set(firstevent1) then $
     firstevent = firstevent1 $
  else $
     firstevent = 1

  if keyword_set(lastevent1) then $
     lastevent = lastevent1 $
  else $
     lastevent = 6

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
  print,'firstevent = ', firstevent
  print,'lastevent  = ', lastevent
 
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

pro calc_all_metric_table, $
   stationlat, directs, indirects, directs2, indirects2, $
   models=models, firstevent=firstevent, lastevent=lastevent

;; Compare two model outputs for the stationlat station group.
;; stationlat = 'all', 'veryhigh', 'high', 'mid' or 'low' for a group 
;; of stations.
;; The results of the first model are put into the directs and
;; indirects arrays corresponding to 
;; the direct and indirect dB/dt prediction scores, respectively.
;; The results of the second model are put into directs2 and indirects2.
;; The 2nd and 3rd element of the optional models string array 
;; specifies the two directories containing the model results. 
;; If it is not given, the defaults are used.
  
  if n_elements(models) ne 3 then $
     models=['Observations', 'Results', 'SWMF_CCMC']

  thresholds=[0.3, 0.7, 1.1, 1.5]
  deltat = 20.

  ; Size of results arrays:
  nthresh = n_elements(thresholds)
  nmetric = 3 ; POD, POFD, HSS

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
             models=models[1], $
             firstevent=firstevent, lastevent=lastevent, $
             dbdt_hss=dbdt_hss, dbdt_pod=dbdt_pod, dbdt_pof=dbdt_pof,   $
             db_hss  =db_hss,   db_pod  =db_pod,   db_pof  =db_pof

     directs[  *, ithresh] = [dbdt_pod, dbdt_pof, dbdt_hss]
     indirects[*, ithresh] = [db_pod,   db_pof,   db_hss  ]

     ; Results for model 2:
     predict,'dbdt',stationlat=stationlat,threshold=threshold,scale=scale, $
             exponent=exponent,deltat=deltat, stencil=stencil, $
             models=models[2], $
             firstevent=firstevent, lastevent=lastevent, $
             dbdt_hss=dbdt_hss, dbdt_pod=dbdt_pod, dbdt_pof=dbdt_pof,   $
             db_hss  =db_hss,   db_pod  =db_pod,   db_pof  =db_pof

     directs2[  *, ithresh] = [dbdt_pod, dbdt_pof, dbdt_hss]
     indirects2[*, ithresh] = [db_pod,   db_pof,   db_hss  ]
  endfor

end
;==============================================================================
pro save_all_metric_table, $
   stationlat, directs, indirects, directs2, indirects2, $
   models=models, firstevent=firstevent, lastevent=lastevent

  if n_elements(models) ne 3 then $
     models=['Observations', 'Results', 'SWMF_CCMC']

  if n_elements(firstevent) lt 1 then firstevent=1
  if n_elements(lastevent)  lt 1 then lastevent =6

  filename = "metric_table_" + stationlat + ".tex"
  openw, lun, filename, /get_lun
  
  thresholds=[0.3, 0.7, 1.1, 1.5]
  deltat = 20.
  
  s = size(directs)

  nmetric = s(1)
  nthresh = s(2)

  printf, lun, 'models=', models[1],' and ',models[2]
  printf, lun, ''
  printf, lun, 'events =', firstevent,' ... ', lastevent
  printf, lun, ''
  printf, lun, 'stationlat=', stationlat
  printf, lun, ''
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
pro calc_all_events, models=models, firstevent=firstevent, lastevent=lastevent
  
  ; Use all six events by default
  if n_elements(firstevent) lt 1 then firstevent=1
  if n_elements(lastevent)  lt 1 then lastevent =6

  ; Set station groups and thresholds
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
     for ievent = firstevent, lastevent do begin
        for ithresh = 0, n_elements(thresholds)-1 do begin
           threshold = thresholds[ithresh]
           filename=string(stationlat, ievent, $
                           format='("metrics_lat_",a3,"_event",i2.2,".txt")')
           predict,'dbdt', $
                   models=models, $
                   stationlat=stationlat, threshold=threshold, $
                   scale=scale, exponent=exponent, $
                   firstevent=ievent, lastevent=ievent, $
                   deltat=deltat, stencil=stencil, out_file=filename, $
                   append=ithresh, saveplot=(stationlat eq 'all')

        endfor
     endfor
  endfor

  ; Create combined metrics for all events:
  for ilat=0, n_elements(stationlats)-1 do begin
     stationlat=stationlats[ilat]
     calc_all_metric_table, stationlat, $
                            directs,  indirects, $
                            directs2, indirects2, $
                            models=models, $
                            firstevent=firstevent, lastevent=lastevent
     save_all_metric_table, stationlat, $
                            directs,  indirects, $
                            directs2, indirects2, $
                            models=models, $
                            firstevent=firstevent, lastevent=lastevent
  endfor
end
;==============================================================================
