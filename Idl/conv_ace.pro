pro conv_ace, acefiles, logfile, append=append

  common phys_const
  common getlog_param
  common log_data

  ;; Convert ace mag and swepam data into an SWMF IMF file. For example
  ;; conv_ace, 'ACE/ACE_MAG_Data.log ACE/ACE_SWEPAM_Data.log', 'ace.dat'
  ;; Use the /append argument to append to an existing file
  
  logfilename = acefiles
  timeunit = 'date'
  read_log_data

  if strlowcase(wlognames(-1)) ne 'bz' then begin
     print,'ERROR: ',logfilenames(0),' does not have Bz as last variable'
     return
  end
  if strlowcase(wlognames1(-1)) ne 'z' then begin
     print,'ERROR: ',logfilenames(1),' does not have z as last variable'
     return
  end
  Re = ReSi/1000
  xGSE = mean(wlog1(*,-3))/Re
  yGSE = mean(wlog1(*,-2))/Re
  zGSE = mean(wlog1(*,-1))/Re
  help, xGSE, yGSE, zGSE
  print,'start times:', logtime(0),logtime1(0),format='(a,2f15.5)'
  print,'end   times:', logtime(-1),logtime1(-1),format='(a,2f15.5)'

  julday_start = floor(logtime(0))
  logtime  = logtime  - julday_start
  logtime1 = logtime1 - julday_start

  minperday = 1440d0

  minute_start =  ceil(logtime(0) *minperday)
  minute_end   = floor(logtime(-1)*minperday)
  nt = minute_end - minute_start + 1
  help, minute_start, minute_end, nt
  logtimeout = (minute_start + dindgen(nt))/minperday

  varnames = ['bx', 'by', 'bz', 'ux', 'uy', 'uz', 'rho', 'T']
  wlogout = dblarr(nt,8)

  help, logtimeout, wlogout
  ;; interpolate the magnetic field
  print,'wlognames=',wlognames
  for ivar = 0, 2 do begin
     name = varnames[ivar]
     field = log_func(wlog, wlognames, name, error)
     if error then begin
        print,'ERROR: could not find variable ',name,' in wlognames=', wlognames
        return
     endif
     wlogout(*,ivar) = interpol(field, logtime, logtimeout)
  endfor

  ;; interpolate the plasma variables
  print,'wlognames1=',wlognames1
  for ivar = 3, 7 do begin
     name = varnames(ivar)
     field = log_func(wlog1, wlognames1, name, error)
     if error then begin
        print,'ERROR: could not find variable ',name,' in wlognames1=', wlognames1
        return
     endif
     wlogout(*,ivar) = interpol(field, logtime1, logtimeout)
  endfor

  ;; write out results
  unit = 1
  close, unit
  openw, unit, logfile, append=append

  if not keyword_set(append) then begin
     printf, unit, '#SATELLITEXYZ'
     printf, unit, xGSE, format='(f8.1)'
     printf, unit, yGSE, format='(f8.1)'
     printf, unit, zGSE, format='(f8.1)'
     printf, unit, ''
     printf, unit, '#COORDINATES'
     printf, unit, 'GSE'
     printf, unit, ''
     printf, unit, 'year mo dy hr mn sc msc Bx By Bz Ux Uy Uz rho T'
     printf, unit, '#START'
  end
  for i = 0, nt-1 do begin
     minute = minute_start + i
     caldat, julday_start + minute/minperday, month, day, year, hour, min
     
     printf, unit, year, month, day, hour, min, 0, 0, wlogout(i,*), $
             format = '(i4,6i3,8f12.3)'
  endfor
  close, unit
  
end
