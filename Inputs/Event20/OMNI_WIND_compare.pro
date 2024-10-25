logfilename='IMF_OMNI_bad.dat IMF_ballistic_WIND_good.dat'
legendpos=[-0.03,0.0,0.85,0.99]
legends=['OMNI','WIND']
logfunc='Rho Ux Bz'
xrange=[15.5,24]
!p.charsize=1.7
plot_spacex=5
colors=[255,250]
set_device,'OMNI_WIND_compare.eps'
show_log_data
close_device,/pdf
