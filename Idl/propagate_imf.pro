logfilename='IMF_1998_08_10.dat'
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
wlog(*,7:9) = transpose(b)

u = transpose(wlog(*,10:12))
gsm_gse, u, epoch
wlog(*,10:12) = transpose(u)

; distance of xMax from xTest in PARAM.in
xbc = 0*logtime + (235-73.5)*6378.0 

; Propagate solar wind by xbc
correct_imf, wlog, xbc, logfilename, 'propagated_'+logfilename


