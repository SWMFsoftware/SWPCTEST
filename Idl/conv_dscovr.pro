pro conv_dscovr, date, logfile, append=append

  files = file_search('oe_*dscovr_s'+date+'*_pub.nc')
  help,files

  plasmafile = files[0]
  magfile    = files[1]
  posfile    = files[2]

  help,plasmafile,magfile,posfile
  
  posdata    = ncdf_parse(posfile, /read_data)
  magdata    = ncdf_parse(magfile, /read_data)
  plasmadata = ncdf_parse(plasmafile, /read_data)

  starttime = posdata['time_coverage_start','_DATA']
  help,starttime

  bx  = magdata['bx_gse','_DATA']
  by  = magdata['by_gse','_DATA']
  bz  = magdata['bz_gse','_DATA']

  ux  = plasmadata['proton_vx_gse','_DATA']
  uy  = plasmadata['proton_vy_gse','_DATA']
  uz  = plasmadata['proton_vz_gse','_DATA']
  rho = plasmadata['proton_density','_DATA']
  T   = plasmadata['proton_temperature','_DATA']

  x   = posdata['sat_x_gse','_DATA']
  y   = posdata['sat_y_gse','_DATA']
  z   = posdata['sat_z_gse','_DATA']

  xGSE = mean(x)/6378.0
  yGSE = mean(y)/6378.0
  zGSE = mean(z)/6378.
  help, xGSE, yGSE, zGSE
  
  help, bx, by, bz, ux, uy, uz, rho, T
  
  year  = fix(strmid(starttime,0,4))
  month = fix(strmid(starttime,5,2))
  day   = fix(strmid(starttime,8,2))

  help, year, month, day
  
  wlog=dblarr(1440, 14)

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
     printf, unit, 'year  mo  dy  hr  mn  sc msc Bx By Bz Ux Uy Uz rho T'
     printf, unit, '#START'
  end
  i = 0
  for hour = 0, 23 do begin
     for minute = 0, 59 do begin
        if bx(i) gt -99999. and ux(i) gt -99999. and rho(i) gt -99999. then $
           printf, unit, year, month, day, hour, minute, 0, 0, $
                   bx(i), by(i), bz(i), ux(i), uy(i), uz(i), rho(i), T(i),$
                   format = '(i4,6i3,8f12.3)'
        i++
     endfor
  endfor
  close, unit
  
end
