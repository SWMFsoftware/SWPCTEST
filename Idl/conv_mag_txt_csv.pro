pro conv_mag_txt_csv, dir=dir

  list_files = file_search(dir+'/*.txt',/fold_case)

  for i=0, n_elements(list_files)-1 do begin
     filename = list_files(i)
     print, ' working on: ', list_files(i)
     get_log, filename, wlog, wlogname, t, 'h'

     siz = size(wlog)
     nvar  = siz(2)
     nData = siz(1)

     filename_csv = filename.replace('.txt', '.csv')
     openw, lun, filename_csv, /get_lun
     printf, lun, 'Date_UTC,dbn_nez,dbe_nez,dbz_nez'

     for j = 0, nData-1 do begin
        str_time= string(wlog(j,0),format='(i4)')+'-'+string(wlog(j,1),format='(i2.2)')        $
                  +'-'+string(wlog(j,2),format='(i2.2)')+'T'+string(wlog(j,3),format='(i2.2)') $
                  +':'+string(wlog(j,4),format='(i2.2)')+':'+string(wlog(j,5),format='(i2.2)')
        printf, lun, str_time, wlog(j,8:*),format='(a,",",2(f,","),f)'
     endfor
     free_lun,lun

  endfor

end
