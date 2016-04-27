; Make sure this is compiled
.r geopack

; Get the average position of wind from the IMF_mhd.dat file
spawn,"perl -ne 'if(/:\s+(\S+)/){print $1;exit}' IMF_mhd.dat",xBC
; convert to scalar double precision real
xBC=double(xBC(0))
help, xBC

spawn,"perl -ne 'if($x){print; exit}; $x=1 if /#SATELLITEXYZ/;' L1.dat",xL1
xL1=double(xL1(0))
help, xL1

;;; we could read the actual wind X position too ;;;

logfilename='L1.dat'
.r getlog

; Convert B and V from GSM to GSE

; calculate epoch0 from year, month, day, hour, min, sec, msc
cdf_epoch, epoch0, $
           wlog(0,0), wlog(0,1), wlog(0,2), wlog(0,3), $
           wlog(0,4), wlog(0,5), wlog(0,6), /compute

; Add logtime [hour] converted to millisec
epoch = epoch0 + logtime*3600d3

b = transpose(wlog(*,7:9))
gsm_gse, b, epoch
;;; wlog(*,7:9) = transpose(b)

u = transpose(wlog(*,10:12))
gsm_gse, u, epoch
;;; wlog(*,10:12) = transpose(u)

; distance of xMax from xTest in PARAM.in
xbc = 0*logtime + (xL1-xBC)*6378.0 

; Propagate solar wind by xbc
correct_imf, wlog, xbc, logfilename, 'IMF_ballistic.dat'


