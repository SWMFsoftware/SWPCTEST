;; Use the most complete DSCOVR data as the basis
logfilename='IMF_ballistic_WIND_bad.dat IMF_ballistic_ACE.dat'
interpol_logfiles, logfilename, var_wnd, var_ace
logfilename='IMF_ballistic_WIND_bad.dat IMF_ballistic_DSCOVR_bad.dat'
interpol_logfiles, logfilename, var_wnd, var_dsc
;; put them into a single array
var_all = fltarr(6192, 16, 3)
var_all(*,*,0) = var_ace
var_all(*,*,1) = var_dsc
var_all(*,*,2) = var_wnd
;; get the median
var_med = median(var_all,dimension=3)
;; overwrite the time info from WIND
var_med(*,0:6) = var_wnd(*,0:6)
;; save the file
save_log,'IMF_ballistic_median.dat','Median of ACE,DSCOVER,WIND',$
         'year mo dy hr mn sc msc Bx By Bz Ux Uy Uz Rho T F107', $
         var_med, format='(i4,5i3,i4,9f11.2)'
