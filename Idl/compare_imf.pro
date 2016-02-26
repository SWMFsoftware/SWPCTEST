set_device,'compare_imf.eps',/port

logfilename='IO2/log* propagated_*.dat'
.r getlog

; make the variable names the same (BXPNT -> bx...)
wlognames = wlognames1

logfunc='rho p ux bx by bz'

legendpos=[0.05,0.1,0.95,0.995]
legends=['1D MHD', 'ballistic']

!p.charsize=1.3
.r plotlog

close_device,/pdf
