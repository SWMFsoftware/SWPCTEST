common getlog_param
common log_data

; Make sure this is compiled
.r geopack

; Get the WIND satalllit position from the IMF_mhd.dat file
spawn,"perl -ne 'if(/:\s+(\S+)/){print $1;exit}' IMF_mhd.dat",xWIND
; convert to scalar double precision real
xWIND=double(xWIND(0))
help, xWIND

spawn,"perl -ne 'if($x){print; exit}; $x=1 if /#SATELLITEXYZ/;' L1.dat",xL1
xL1=double(xL1(0))
help, xL1

;;; we could read the actual wind X position too ;;;

logfilename='L1.dat'
read_log_data

; Convert B and V from GSM to GSE

; calculate epoch0 from year, month, day
cdf_epoch, epoch0, wlog(0,0), wlog(0,1), wlog(0,2), /compute

; Add logtime (in hours, relative to start of day) converted to millisec
epoch = epoch0 + logtime*3600d3

b = transpose(wlog(*,7:9))
gsm_gse, b, epoch
wlog(*,7:9) = transpose(b)

u = transpose(wlog(*,10:12))
gsm_gse, u, epoch
wlog(*,10:12) = transpose(u)

; distance of xMax from xTest in PARAM.in
dist = 0*logtime + (xL1-xWIND)*6378.0 

; Propagate solar wind by xbc
correct_imf, wlog, dist, logfilename, 'IMF_ballistic.dat'

exit

