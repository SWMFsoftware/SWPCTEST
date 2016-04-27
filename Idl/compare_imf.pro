!p.charsize=1.3
legendpos=0

set_device,'mhd_vs_ballistic.eps',/port
title='MHD (black), Ballistic (blue) propagation'
logfilename='IMF_mhd.dat IMF_ballistic.dat'
.r getlog
logfunc='rho T ux bx by bz'
.r plotlog
close_device,/pdf
exit
