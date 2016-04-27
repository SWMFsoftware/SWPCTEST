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
.r getlog

; distance from xL1 to xBC
dist = 0*logtime + (xL1-xBC)*6378.0 

; Propagate solar wind by xbc
correct_imf, wlog, dist, logfilename, 'IMF_ballistic.dat'

exit
