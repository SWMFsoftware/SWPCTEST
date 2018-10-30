SHELL=/bin/bash

include ../Makefile.def

MYDIR 	    = ${DIR}/SWPCTEST
MYINPUTDIR  = ${MYDIR}/Inputs
MYSCRIPTDIR = ${MYDIR}/Scripts
GMDIR       = ${DIR}/GM/BATSRUS
QUEDIR      = $(MYDIR)/run_test
RESDIR	    = Results
RES2DIR	    = SWMF_CCMC
RTDIR	    = ${MYDIR}/run_realtime

# Toggle saving all outputs to file (defaults is to not save plots.)
PLOT='-noplot'

# Assume running on Pleiades (needed for testing on other machines)
MACHINE='pfe'

# Comma separated list of event indexes
EVENTS=1,2,3,4,5,6

# Space separated list (replace comma with space)
EVENTLIST  = $(shell echo ${EVENTS} | tr , ' ')

# First and last events (used as arguments of some IDL scripts)
FIRSTEVENT = $(shell echo ${EVENTS} | sed 's/,.*//')
LASTEVENT  = $(shell echo ${EVENTS} | sed 's/.*,//')

# Number of processors to run on
NP=64

# Default IMF file to be used. 
# Other options: IMF_mhd.dat, IMF_ballistic.dat)
IMF=IMF.dat

help:
	@echo "This package builds and executes a set of validation"
	@echo "simulations; see README for more information."
	@echo ""
	@echo "Examples:"
	@echo "make test                      (run all test events in run_test directory)"
	@echo "make test EVENTS=2,4           (run events 2 and 4 only)"
	@echo "make test QUEDIR=/nobackup/${USER}/run_swpctest (set absolute path for run directory)"
	@echo "make test PLOT=''              (run all test events and save all outputs)"
	@echo "make test IMF=IMF_mhd.dat      (use IMF_mhd.dat for IMF file)"
	@echo "make test PARAMINIT=PARAM.in   (use PARAM.in for the PARAM file)" 
	@echo "make test_compile              (compile SWMF)"
	@echo "make test_rundir               (create rundirs for all EVENTS)"
	@echo "make test_run                  (submit runs to que)"
	@echo ""
	@echo "make check                     (process results from ./run_test into deltaB/Results)"
	@echo "make check          RESDIR=New (process results from ./run_test into deltaB/New)"
	@echo "make check_postproc RESDIR=New (collect results from ./run_test)"
	@echo "make check_calc     RESDIR=New (calculate metrics from results in deltaB/New/)"
	@echo "make check_tar      RESDIR=New (tar up results and metrics in deltaB/New)"
	@echo ""
	@echo "make check_dst     RESDIR=New EVENTS=2,4 (calculate Dst error only for events 2..4)"
	@echo "make check_compare RESDIR=New RES2DIR=Old (compare 2 runs into COMPARE_New_vs_Old/)"
	@echo ""
	@echo "test_order5                    (run with 5th order GM/BATSRUS model)"
	@echo "test_rbe                       (run with RB/RBE model)"
	@echo "test_multiion                  (run with multiion GM/BATSRUS model)"
	@echo "test_multiion_v2               (run with multiion GM/BATSRUS v2 model)"
	@echo "test_multispecies              (run with multispecies GM/BATSRUS model)"
	@echo "test_multispecies_v2           (run with multispecies GM/BATSRUS v2 model)"
	@echo "test_cimi		      (run with anisotropic MHD and IM/CIMI)"
	@echo "test_cimi_v2		      (run with anisotropic MHD v2 and IM/CIMI)"
	@echo ""
	@echo "make ballistic                 (ballistic propagation for events 2..10)"
	@echo "make propagate1d EVENTS=2,3    (propagate ACE/DISCVR data to BATSRUS boundary)"
	@echo
	@echo "make propagate1d_plot          (create Inputs/event2..10/mhd_vs_ballistic.* plots)"
	@echo "make propagate1d_wind_plot     (create Inputs/event7..10/mhd_vs_ballistic_vs_wind.* plots)"
	@echo "make clean RESDIR=Results      (Clear results in RESDIR directory)"
##############################################################################
# Some short tests:
test_event:
	@echo "First and last targets are: ${FIRSTEVENT} and ${LASTEVENT}"

##############################################################################

PROPDIR = ${GMDIR}/run_L1toBC

propagate1d:
	@echo "Propagating solar wind with 1D MHD"
	make propagate1d_compile
	make propagate1d_rundir
	make propagate1d_run

propagate1d_compile:
	-@(cd ${GMDIR}; make test_L1toBC_compile;)

propagate1d_rundir:
	-@(cd ${GMDIR}; make test_L1toBC_rundir TESTDIR=${PROPDIR})

propagate1d_run:
	for e in ${EVENTLIST}; do 			 		    \
		cp ${MYINPUTDIR}/event$$e/[Lw]*.dat ${PROPDIR};	    	    \
		cd ${PROPDIR}; 						    \
		${MYSCRIPTDIR}/change_param.pl; 		    \
		${PARALLEL} ${NPFLAG} 4 ./BATSRUS.exe > runlog; 			    \
		perl -p -e 's/test point/Propagated from L1 to/; s/PNT//g'  \
			IO2/log*.log > ${MYINPUTDIR}/event$$e/IMF_mhd.dat;    \
	done

propagate1d_plot:
	for e in 2 3 4 5 6 7 8 9 10; do			\
		cd ${MYINPUTDIR}/event$$e/;		\
		idl ${MYDIR}/Idl/compare_imf.pro; \
	done

propagate1d_wind_plot:
	for e in 7 8 9 10; do				 \
		cd ${MYINPUTDIR}/event$$e/;		 \
		idl ${MYDIR}/Idl/compare_wind.pro; \
	done

ballistic:
	for e in 2 3 4 5 6; do					\
		cd ${MYINPUTDIR}/event$$e/;			\
		idl ${MYDIR}/Idl/ballistic.pro;		\
	done
	for e in 7 8 9 10; do					\
		cd ${MYINPUTDIR}/event$$e/;			\
		idl ${MYDIR}/Idl/ballistic_wind.pro;	\
	done

##############################################################################

test:
	@echo "Testing the SWMF"
	make test_compile
	make test_rundir
	make test_run
	@echo "Tests started.  make check when complete."

check:
	@echo "Checking results against observations"
	make check_postproc
	make check_calc
	make check_tar

test_compile:
	-@(cd ..; \
	./Config.pl -v=Empty,GM/BATSRUS,IE/Ridley_serial,IM/RCM2,RB/RBE -o=GM:u=Default,e=Mhd; \
	make SWMF PIDL; \
	)

# Default PARAM.in and LAYOUT.in files for the tests
PARAMINIT = PARAM.in_SWPC_v2_init
LAYOUT    = LAYOUT.in_rbe

test_rundir:
	@echo "Creating rundirs"
	for e in ${EVENTLIST}; do	 				     \
		rm -rf ${QUEDIR}/run_event$$e;				     \
		cd $(DIR);						     \
		make rundir MACHINE=${MACHINE} RUNDIR=${QUEDIR}/run_event$$e;\
		cp -r SWPCTEST/Inputs/event$$e/*      ${QUEDIR}/run_event$$e;\
		cp SWPCTEST/Inputs/magin_GEM.dat      ${QUEDIR}/run_event$$e;\
		cp SWPCTEST/Inputs/job.long           ${QUEDIR}/run_event$$e;\
		cp SWPCTEST/Inputs/${LAYOUT}	      ${QUEDIR}/run_event$$e/LAYOUT.in;\
		cp Param/SWPC/${PARAMINIT}            ${QUEDIR}/run_event$$e/PARAM.in;\
		cd ${QUEDIR}/run_event$$e;				     \
		  	${MYSCRIPTDIR}/change_param.pl ${PLOT} -imf=${IMF};\
	done

test_run:
	@echo "Submitting jobs"
	cd ..; 							\
	for e in ${EVENTLIST}; do				\
		cd ${QUEDIR}/run_event$$e;			\
		./qsub.pfe.pl job.long ev$$e;		    	\
	done

##############################################################################

test_order5:
	@echo "Testing the SWMF with high order scheme"
	make test_order5_compile
	make test_order5_rundir
	make test_order5_run
	@echo "Test_order5 started.  make check when complete."

test_order5_compile:
	-@(cd ..; \
	./Config.pl -v=Empty,GM/BATSRUS,IE/Ridley_serial,IM/RCM2 -o=GM:u=Default,e=Mhd,ng=3; \
	make SWMF PIDL; \
	)

test_order5_rundir:
	make test_rundir PARAMINIT=PARAM.in_order5_init LAYOUT=LAYOUT.in

test_order5_run: test_run

##############################################################################

test_rbe:
	@echo "Testing the SWMF with RBE component"
	make test_rbe_compile
	make test_rbe_rundir
	make test_rbe_run
	@echo "Test_rbe started.  make check when complete."

test_rbe_compile:
	-@(cd ..; \
	./Config.pl -v=Empty,GM/BATSRUS,IE/Ridley_serial,IM/RCM2,RB/RBE -o=GM:u=Default,e=Mhd; \
	make SWMF PIDL; \
	)

test_rbe_rundir:
	make test_rundir PARAMINIT=PARAM.in_rbe_init LAYOUT=LAYOUT.in_rbe

test_rbe_run: test_run

##############################################################################

test_multiion:
	@echo "Testing the SWMF with multiion BATSRUS"
	make test_multiion_compile
	make test_multiion_rundir
	make test_multiion_run
	@echo "Test_multiion started.  make check when complete."

test_multiion_compile:
	-@(cd ..; \
	./Config.pl -v=Empty,GM/BATSRUS,IE/Ridley_serial,IM/RCM2 -o=GM:u=Default,e=MultiIon; \
	make SWMF PIDL; \
	)

test_multiion_rundir:
	make test_rundir PARAMINIT=PARAM.in_multiion_init LAYOUT=LAYOUT.in

test_multiion_run: test_run

##############################################################################

test_multiion_v2:
	@echo "Testing the SWMF with multiion v2 BATSRUS"
	make test_multiion_v2_compile
	make test_multiion_v2_rundir
	make test_multiion_v2_run
	@echo "Test_multiion v2 started.  make check when complete."

test_multiion_v2_compile:
	make test_multiion_compile

test_multiion_v2_rundir:
	make test_rundir PARAMINIT=PARAM.in_multiion_v2_init LAYOUT=LAYOUT.in
	for e in ${EVENTLIST}; do	 			    \
		cp Inputs/job_more.long      ${QUEDIR}/run_event$$e;\
	done


test_multiion_v2_run:
	@echo "Submitting jobs"
	cd ..; 							\
	for e in ${EVENTLIST}; do				\
		cd ${QUEDIR}/run_event$$e;			\
		./qsub.pfe.pl job_more.long ev$$e;	    	\
	done

##############################################################################

test_multispecies:
	@echo "Testing the SWMF with multispecies BATSRUS"
	make test_multispecies_compile
	make test_multispecies_rundir
	make test_multispecies_run
	@echo "Test_multispecies started.  make check when complete."

test_multispecies_compile:
	-@(cd ..; \
	./Config.pl -v=Empty,GM/BATSRUS,IE/Ridley_serial,IM/RCM2 -o=GM:u=Default,e=MhdHpOp; \
	make SWMF PIDL; \
	)

test_multispecies_rundir:
	make test_rundir PARAMINIT=PARAM.in_multispecies_init LAYOUT=LAYOUT.in

test_multispecies_run: test_run

##############################################################################

test_multispecies_v2:
	@echo "Testing the SWMF with multispecies v2 BATSRUS"
	make test_multispecies_v2_compile
	make test_multispecies_v2_rundir
	make test_multispecies_v2_run
	@echo "Test_multispecies v2 started.  make check when complete."

test_multispecies_v2_compile:
	make test_multispecies_compile

test_multispecies_v2_rundir:
	make test_rundir PARAMINIT=PARAM.in_multispecies_v2_init LAYOUT=LAYOUT.in

test_multispecies_v2_run: test_run

##############################################################################

test_cimi:
	@echo "Testing the SWMF with anisotropic BATSRUS + IM/CIMI"
	make test_cimi_compile
	make test_cimi_rundir
	make test_cimi_run
	@echo "Test_cimi started.  make check when complete."

test_cimi_compile:
	-@(cd ..; \
	./Config.pl -v=Empty,GM/BATSRUS,IE/Ridley_serial,IM/CIMI -o=GM:u=Default,e=MhdAnisoP,IM:EarthHO,GridExpanded; \
	make SWMF PIDL; \
	)

test_cimi_rundir:
	make test_rundir PARAMINIT=PARAM.in_cimi_init LAYOUT=LAYOUT.in_cimi

test_cimi_run: test_run

##############################################################################

test_cimi_v2:
	@echo "Testing the SWMF with anisotropic BATSRUS v2 + IM/CIMI"
	make test_cimi_v2_compile
	make test_cimi_v2_rundir
	make test_cimi_v2_run
	@echo "Test_cimi_v2 started.  make check when complete."

test_cimi_v2_compile: test_cimi_compile

test_cimi_v2_rundir:
	make test_rundir PARAMINIT=PARAM.in_cimi_v2_init LAYOUT=LAYOUT.in_cimi

test_cimi_v2_run: test_run

##############################################################################

check_postproc:
	@echo "Post processing simulation results"
	for e in ${EVENTLIST}; do					\
		cd ${QUEDIR}/run_event$$e;				\
		if([ ! -d RESULTS ]); then ./PostProc.pl RESULTS; fi;	\
		mkdir -p ${MYDIR}/deltaB/${RESDIR}/Event$$e;		\
		cp PARAM.in *log.* RESULTS/GM/* RESULTS/IE/IE*.log 	\
			${MYDIR}/deltaB/${RESDIR}/Event$$e/;		\
		cd ${MYDIR}/deltaB/${RESDIR}/Event$$e/;			\
		${MYSCRIPTDIR}/convert_mags.py;				\
	done

check_calc:
	@echo "Checking results against observations"
	export IDL_PATH='${GMDIR}/Idl/:<IDL_DEFAULT>'; export IDL_STARTUP=idlrc; \
	printf ".r Idl/predict.pro\n calc_all_events,models=['${RESDIR}'],firstevent=${FIRSTEVENT},lastevent=${LASTEVENT}\n" | idl > idl_log.txt; \
	printf ".r Idl/predict.pro\n calc_all_db_events,models=['${RESDIR}'],firstevent=${FIRSTEVENT},lastevent=${LASTEVENT}\n" | idl > idl_log.txt; \
	printf ".r Idl/predict.pro\n calc_dst_error,models=['${RESDIR}'],firstevent=${FIRSTEVENT},lastevent=${LASTEVENT}\n" | idl > idl_log.txt;
	mv metrics*.txt dbdt* db_* dst_error.txt idl_log.txt deltaB/${RESDIR}/

check_dst:
	@echo "Checking Dst against observations"
	export IDL_PATH='${GMDIR}/Idl/:<IDL_DEFAULT>'; export IDL_STARTUP=idlrc;\
	printf ".r Idl/predict.pro\n calc_dst_error,models=['${RESDIR}'],firstevent=${FIRSTEVENT},lastevent=${LASTEVENT}\n" | idl > idl_log.txt;
	mv dst_error.txt deltaB/${RESDIR}/

check_tar:
	@echo "Saving results as tarball"
	tar -czf ${RESDIR}_$$(date +%Y%m%d_%H%M).tgz deltaB/${RESDIR}

check_compare:
	@echo "Compare ${RESDIR} and ${RES2DIR}"
	export IDL_STARTUP=idlrc; export IDL_PATH='${GMDIR}/Idl/:<IDL_DEFAULT>'; \
	printf ".r Idl/predict.pro\n save_comparison_tables,'${RESDIR}','${RES2DIR}',firstevent=${FIRSTEVENT},lastevent=${LASTEVENT}\n" | idl > idl_log.txt; \
	printf ".r Idl/predict.pro\n save_deltab_comp_tables,'${RESDIR}','${RES2DIR}',firstevent=${FIRSTEVENT},lastevent=${LASTEVENT}\n" | idl > idl_log.txt;\
	printf ".r Idl/predict.pro\n calc_dst_error,models=['${RESDIR}','${RES2DIR}'],firstevent=${FIRSTEVENT},lastevent=${LASTEVENT}\n" | idl > idl_log.txt;
	mkdir -p COMPARE_${RESDIR}_vs_${RES2DIR}
	mv metric_table*.tex dst_error.txt idl_log.txt COMPARE_${RESDIR}_vs_${RES2DIR}/

realtime_start_rundir:
	cd ${DIR}; \
	make rundir MACHINE=${MACHINE} RUNDIR=${RTDIR}; \
	cp SWPCTEST/Inputs/job.long   ${RTDIR}; \
	cp SWPCTEST/Inputs/${LAYOUT}  ${RTDIR}/LAYOUT.in; \
	cp Param/SWPC/${PARAMINIT}    ${RTDIR}/PARAM.in
	cd ${RTDIR}; rm -rf Param; mkdir Param; cd Param; \
	ln -s ${DIR}/Param/SWPC .; cd ../; ${MYSCRIPTDIR}/DSCOVR.py; \
	${MYSCRIPTDIR}/magnetometer.py; \
	${MYSCRIPTDIR}/change_param.pl ${PLOT} -imf=${IMF}

clean:
	@echo "Cleaning result files"
	rm -f results*.txt
	rm -f deltaB/${RESDIR}/*.txt
	rm -f deltaB/${RESDIR}/*.pdf
	rm -f deltaB/${RESDIR}/*.eps
	@for e in ${EVENTLIST}; do         		\
		rm -f deltaB/${RESDIR}/Event$$e/*.txt; 	\
		rm -f deltaB/${RESDIR}/Event$$e/*.eps;	\
		rm -f deltaB/${RESDIR}/Event$$e/*.log;	\
		rm -f deltaB/${RESDIR}/Event$$e/*.mag;	\
		rm -f deltaB/${RESDIR}/Event$$e/runlog*;	\
		rm -f deltaB/${RESDIR}/Event$$e/PARAM.in;	\
	done

distclean:
	make clean
	@echo "Cleaning all rundirectories"
	rm -rf ../run_event* ${QUEDIR}/run_event* *~
