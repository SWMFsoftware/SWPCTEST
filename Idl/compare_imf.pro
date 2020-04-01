common getlog_param
common plotlog_param

!p.charsize=1.3
legendpos=0

set_device,'mhd_vs_ballistic.eps',/port
title='MHD (black), Ballistic (blue) propagation'
logfilename='IMF_mhd.dat IMF_ballistic.dat'
read_log_data
logfunc='rho T ux bx by bz'
plot_log_data
close_device,/pdf
exit
