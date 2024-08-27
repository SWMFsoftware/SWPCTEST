.r geopack

common getlog_param
common log_data

; Get the extraction position from the IMF_mhd.dat file (if exists)
spawn,"perl -ne 'if(/:\s+(\S+)/){print $1;exit}' IMF_mhd.dat",xBC
; convert to scalar double precision real
xBC=double(xBC(0))
if xBC eq 0.0 then xBC = 32.0               ; MHD code boundary location
help, xBC

; get the L1 position from the L1.dat file
spawn,"perl -ne 'if($x){print; exit}; $x=1 if /#SATELLITEXYZ/;' L1.dat",xL1
xL1=double(xL1(0))
help, xL1

logfilename='L1.dat'
read_log_data

badvalue = -9999.0
ii = where(wlog(*,7) gt badvalue and $
           wlog(*,10) gt badvalue and $
           wlog(*,13) gt badvalue, /null)

nbad = n_elements(logtime) - n_elements(ii)
if nbad gt 0 then print, "!!!", nbad, " bad values are removed !!!"

wlog    = wlog(ii,*)
logtime = logtime(ii)


; distance from xL1 to xBC
dist = 0*logtime + (xL1-xBC)*6378.0 

; Propagate solar wind to xbc
;correct_imf, wlog, dist, logfilename, 'IMF_ballistic_gsm.dat', /GSM
correct_imf, wlog, dist, logfilename, 'IMF_ballistic.dat'
;correct_imf, wlog, dist, logfilename, 'IMF_ballistic_shock.dat', decay=60

;exit
