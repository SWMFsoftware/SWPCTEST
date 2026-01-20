logfilename='IMF.dat IMF_ballistic_DSCOVR_bad.dat IMF_ballistic_WIND_good.dat'
timeunit='date'
dummy = LABEL_DATE(DATE_FORMAT=['%H:%I!c%M %D'])
read_log_data
wlog(*,10)=abs(wlog(*,10))
wlog1(*,10)=abs(wlog1(*,10))
wlog2(*,10)=abs(wlog2(*,10))
colors=[255,75,250]
xrange=[logtime(0)+0.2,logtime(0)+1.5]          
legendpos=[0.2,0.24,0.74,0.84]
legends=['ACE','DSCOVR','WIND']
logfunc='Ux Bz Rho'
ytitles=['Speed', 'Magnetic field Bz','Density']
!x.thick=2
!y.thick=2
!p.charsize=1.4
set_device,'imf_compare.eps',/port
plot_log_data
close_device,/pdf
