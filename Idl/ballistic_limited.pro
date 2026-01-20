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

; limit growth in density and temperature
irho = min(where(wlognames eq 'rho'))
wlog(*,irho) = limit_growth(wlog(*,irho), 1.3)

iT = min(where(wlognames eq 'T'))
wlog(*,iT) = limit_growth(wlog(*,iT), 1.3)

; limit change in velocity including rule of compression behind shocks
; note the ux is negative
iux = min(where(wlognames eq 'Ux'))
wlog(*,iux) = limit_change(wlog(*,iux), [-50,30], wlog(*,irho), [-10,20])

save_log, 'L1_limited.dat', 'L1.dat limited rho,T:1.3, Ux:-50+30,-10,20', $
          wlognames, wlog, format='(i4,5i3,i4,8e13.5)'

; distance from xL1 to xBC
dist = 0*logtime + (xL1-xBC)*6378.0 

; Propagate solar wind to xBC
correct_imf, wlog, dist, logfilename, 'IMF_ballistic_limited.dat'

exit
