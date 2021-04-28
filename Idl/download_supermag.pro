pro download_supermag, str_start_time, str_end_time, userid=userid, $
                       str_stations=str_stations, dir_out=dir_out

  if not keyword_set(userid)  then userid = 'zghuang'
  if not keyword_set(dir_out) then dir_out = './'

  TIMESTAMPTOVALUES, str_start_time+'Z', DAY=dd_start, HOUR=hh_start,  $
                     MINUTE=min_start, MONTH=mm_start,SECOND=ss_start, $
                     YEAR=yy_start
  TIMESTAMPTOVALUES, str_end_time+'Z',   DAY=dd_end,   HOUR=hh_end,    $
                     MINUTE=min_end,   MONTH=mm_end,  SECOND=ss_end,   $
                     YEAR=yy_end

  ;; timd difference in days
  diff_time = JULDAY(mm_end,dd_end,yy_end,hh_end,min_end,ss_end) - $
              JULDAY(mm_start,dd_start,yy_start,hh_start,min_start,ss_start)

  ;; get the list of stations that have the data during the event time
  iStatus=SuperMAGGetInventory(userid,yy_start,mm_start,dd_start,hh_start, $
                               min_start,ss_start,86400*diff_time,         $
                               str_all_stations, error=errstr)

  if (iStatus eq 0) then begin
     print, "Could not find at least one station, errstr = "+errstr
     stop
  endif

  ;; set the stations that need to download
  if not keyword_set(str_stations) or                                         $
     total(strmatch(str_stations,'all_stations',/fold_case)) gt 0 then begin

     str_stations = str_all_stations
  endif

  for i=0, n_elements(str_stations)-1 do begin
     str_station=str_stations[i]

     ;; see whether the str_station is in str_all_stations
     if total(strmatch(str_all_stations,str_station,/fold_case)) eq 0 then begin
        print, 'Error: '+str_station+" is not available"
        continue
     endif

     ;; try to download the data
     iStatus=SuperMAGGetDataStruct(userid,yy_start,mm_start,dd_start,hh_start,$
                                   min_start, ss_start, 86400*diff_time,      $
                                   str_station, data_mag, error=errstr)
     if (iStatus eq 0) then begin
        print, 'Error: '+str_station+" is not available, errstr = "+errstr
        continue
     endif

     ;; convert the time
     SuperMAGTimeToYMDHMS,data_mag.tval,yy,mm,dd,hh,min,ss

     str_time= string(yy,format='(i4)')+'-'+string(mm,format='(i2.2)')        $
               +'-'+string(dd,format='(i2.2)')+'T'+string(hh,format='(i2.2)') $
               +':'+string(min,format='(i2.2)')+':'+string(ss,format='(i2.2)')

     openw, lun, dir_out+'/'+str_station+'.csv', /get_lun
     printf, lun, 'Date_UTC,dbn_nez,dbe_nez,dbz_nez'
     for j=0, n_elements(str_time)-1 do begin
        printf, lun,str_time[j], data_mag[j].N.nez, data_mag[j].E.nez, data_mag[j].Z.nez,format='(a,",",2(f,","),f)'
     endfor
     Free_Lun, lun
  end
end
