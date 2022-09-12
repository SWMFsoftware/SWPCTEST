pro combine_dscovr_ace,dscovr_file,ace_file,outfile
  get_log,dscovr_file,wlog1, wlognames1, logtime1, headlines=headlines1
  get_log,ace_file,   wlog2, wlognames2, logtime2, headlines=headlines2

  varname = strjoin(wlognames1,' ')
  help,varname
  
  help,wlog,wlog1

  n1 = n_elements(logtime1)
  n2 = n_elements(logtime2)
  if n1 ne n2 then begin
     print,'number of times are different:',n1, n2
     retall
  endif

  y1 = fix(headlines1(2), type=4)
  z1 = fix(headlines1(3), type=4)
  y2 = fix(headlines2(2), type=4)
  z2 = fix(headlines2(3), type=4)
  help,y,z,y1,z1

  ; Establish interpolation weights (assume vy=vz=0)
  dy  = y2 - y1
  dz  = z2 - z1
  dp1 = -(dy*y1 + dz*z1) > 0 ; no extrapolation
  dp2 =  (dy*y2 + dz*z2) > 0
  
  w1 = dp2/(dp1 + dp2)
  w2 = dp1/(dp1 + dp2)

  y = w1*y1 + w2*y2
  z = w1*z1 + w2*z2

  help,dp1,dp2,w1,w2,y,z
  
  wlog = wlog1
  headlines = headlines1
  headlines[2] = y
  headlines[3] = z
  headline = strjoin(headlines1,"\n")
  
  for ivar = 7, 14 do begin
     var1 = wlog1(*,ivar)
     var2 = wlog2(*,ivar)
     ii = where(var1 gt -9999 and var2 gt -9999)
     wlog(ii,ivar) = w1*var1(ii) + w2*var2(ii)
     ii = where(var1 lt -9999)
     wlog(ii,ivar) = var2(ii)
  endfor

  save_log, outfile, headlines, varname, wlog, format='(7i4,8f15.3)'
  
end
