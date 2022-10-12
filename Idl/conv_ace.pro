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

  ;; interpolate all variables
  print,'wlognames=',wlognames
  print,'wlognames1=',wlognames1
  for ivar = 0, 7 do begin
     name = varnames(ivar)
     if ivar lt 3 then $
        field = log_func(wlog, wlognames, name, error) $
     else $
        field = log_func(wlog1, wlognames1, name, error)
     if error then begin
        print,'ERROR: could not find variable ',name
        return
     endif
     field(where(field le -9999d0, /NULL)) = !values.F_NaN
     if ivar lt 3 then $
        field2 = interpol(field, logtime, logtimeout) $
     else $
        field2 = interpol(field, logtime1, logtimeout)
     field2(where(1-finite(field2), /NULL)) = -9999.9d0
     wlogout(*,ivar) = field2
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
