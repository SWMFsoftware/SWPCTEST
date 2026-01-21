logfilename='IMF_OMNI_bad.dat IMF_ballistic_limited.dat IMF_mhd_ACE_limited.dat'
;timeunit='date'
;dummy = LABEL_DATE(DATE_FORMAT=['%H:%I!c%M %D'])
read_log_data
wlog(*,10)=abs(wlog(*,10))
wlog1(*,10)=abs(wlog1(*,10))
wlog2(*,10)=abs(wlog2(*,10))
colors=[255,75,250]
xrange=[16,18.49]
legendpos=[0.8,0.85,0.8,0.9]
legends=['OMNI','Ballistic','1D MHD']
logfunc='Ux Bz Rho'
ytitles=['Speed', 'Magnetic field Bz','Density']
!x.thick=2
!y.thick=2
!p.charsize=1.4
set_device,'ballistic_mhd.eps',/port
plot_log_data
close_device,/pdf
