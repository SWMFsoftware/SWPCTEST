common getlog_param
common log_data

; Get the extraction position from the IMF_mhd.dat file
spawn,"perl -ne 'if(/:\s+(\S+)/){print $1;exit}' IMF_mhd.dat",xBC
; convert to scalar double precision real
xBC=double(xBC(0))
help, xBC

; get the L1 position from the L1.dat file
spawn,"perl -ne 'if($x){print; exit}; $x=1 if /#SATELLITEXYZ/;' L1.dat",xL1
xL1=double(xL1(0))
help, xL1

logfilename='L1.dat'
read_log_data

; limit change and growth
i = where(wlognames eq 'Ux')    ; i = i[0]
wlog(*,i) = limit_change(wlog(*,i), 30)

i = where(wlognames eq 'rho')   ; i = i[0]
wlog(*,i) = limit_growth(wlog(*,i), 1.3)

i = where(wlognames eq 'T')     ; i = i[0]
wlog(*,i) = limit_growth(wlog(*,i), 1.3)

save_log, 'L1_limited.dat', 'L1.dat limited: Ux+-30', wlognames, wlog

; distance from xL1 to xBC
dist = 0*logtime + (xL1-xBC)*6378.0 

; Propagate solar wind by xbc
correct_imf, wlog, dist, logfilename, 'IMF_ballistic_limited.dat'

exit
