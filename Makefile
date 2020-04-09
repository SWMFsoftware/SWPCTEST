SHELL=/bin/bash

include ../Makefile.def

MYDIR 	    = ${DIR}/SWPCTEST
MYINPUTDIR  = ${MYDIR}/Inputs
MYSCRIPTDIR = ${MYDIR}/Scripts
MYIDLDIR    = ${MYDIR}/Idl
GMDIR       = ${DIR}/GM/BATSRUS
QUEDIR      = $(MYDIR)/run
RESDIR	    = Results
RES1DIR	    = Results
RES2DIR	    = SWMF_CCMC
RTDIR	    = ${MYDIR}/run_realtime
PREDICT     = .r ${MYIDLDIR}/predict.pro
NRUN        = 1

# Toggle saving all outputs to file (defaults is to not save plots.)
PLOT='-noplot'

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
	@echo "make test                      (run all test events in run1 directory)"
	@echo "make test NRUN=5               (run all test events with 5 (up to 9) different number of cores)"
	@echo "make test EVENTS=2,4           (run events 2 and 4 only)"
	@echo "make test QUEDIR=/nobackup/${USER}/run_swpctest (set absolute path for run directory)"
	@echo "make test PLOT=''              (run all test events and save all outputs)"
	@echo "make test IMF=IMF_mhd.dat      (use IMF_mhd.dat for IMF file)"
	@echo "make test PARAMINIT=PARAM.in   (use PARAM.in for the PARAM file)" 
	@echo "make test_compile              (compile SWMF)"
	@echo "make test_rundir               (create rundirs for all EVENTS)"
	@echo "make test_run                  (submit runs to que)"
	@echo ""
	@echo "make check                     (process results from ./run1 into deltaB/Results)"
	@echo "make check          RESDIR=New (process results from ./run1 into deltaB/New)"
	@echo "make check_postproc RESDIR=New (collect results from ./run1)"
	@echo "make check_calc     RESDIR=New (calculate metrics from results in deltaB/New/)"
	@echo "make check_tar      RESDIR=New (tar up results and metrics in deltaB/New)"
	@echo ""
	@echo "make check_dst     RESDIR=New EVENTS=2,4 (calculate Dst error only for events 2..4)"
	@echo "make check_compare RES1DIR=New RES2DIR=Old (compare 2 runs into COMPARE_New_vs_Old/)"
	@echo ""
	@echo "test_order5                    (run with 5th order GM/BATSRUS model)"
	@echo "test_rbe                       (run with RB/RBE model)"
	@echo "test_multiion                  (run with multiion GM/BATSRUS model)"
	@echo "test_multiion_v2               (run with multiion GM/BATSRUS v2 model)"
	@echo "test_multispecies              (run with multispecies GM/BATSRUS model)"
	@echo "test_multispecies_v2           (run with multispecies GM/BATSRUS v2 model)"
	@echo "test_multispecies_Young_v2     (run with multispecies GM/BATSRUS v2 model with the Young BC)"
	@echo "test_cimi                      (run with anisotropic MHD and IM/CIMI)"
	@echo "test_cimi_v2                   (run with anisotropic MHD v2 and IM/CIMI)"
	@echo "test_SWPC_Young_v2             (run with SWPC v2 model with the Young BC)"
	@echo ""
	@echo "make ballistic                 (ballistic propagation for events 2..14)"
	@echo "make ballistic_limited         (limiting+ballistic propagation for events 2..14)"
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
	for e in ${EVENTLIST}; do 				\
		cp ${MYINPUTDIR}/event$$e/[Lw]*.dat ${PROPDIR};	\
		cd ${PROPDIR}; 					\
		${MYSCRIPTDIR}/change_param.pl; 		\
		${PARALLEL} ${NPFLAG} 4 ./BATSRUS.exe > runlog; 	   \
		perl -p -e 's/test point/Propagated from L1 to/; s/PNT//g' \
			IO2/log*.log > ${MYINPUTDIR}/event$$e/IMF_mhd.dat; \
	done

propagate1d_plot:
	for e in 2 3 4 5 6 7 8 9 10; do			\
		cd ${MYINPUTDIR}/event$$e/;		\
		idl ${MYDIR}/Idl/compare_imf.pro; 	\
	done

propagate1d_wind_plot:
	for e in 7 8 9 10; do				\
		cd ${MYINPUTDIR}/event$$e/;		\
		idl ${MYDIR}/Idl/compare_wind.pro; 	\
	done

ballistic:
	for e in 2 3 4 5 6 11 12 13 14; do		\
		cd ${MYINPUTDIR}/event$$e/;		\
		idl ${MYDIR}/Idl/ballistic.pro;		\
	done
	for e in 7 8 9 10; do				\
		cd ${MYINPUTDIR}/event$$e/;		\
		idl ${MYDIR}/Idl/ballistic_wind.pro;	\
	done

ballistic_limited:
	for e in 2 3 4 5 6 11 12 13 14; do		\
		cd ${MYINPUTDIR}/event$$e/;		\
		idl ${MYDIR}/Idl/ballistic_limited.pro;	\
	done

convert_ace:
	for e in 11 12 13 14; do 				\
		cd ${MYINPUTDIR}/event$$e/;			\
		${MYSCRIPTDIR}/ace_to_sat.pl ace*.txt > L1.dat; \
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
	./Config.pl -g=GM:8,8,8,400,1,IE:91,181; \
	make SWMF PIDL; \
	)

# Default PARAM.in and LAYOUT.in files for the tests
PARAMINIT = PARAM.in_SWPC_v2_init
LAYOUT    = LAYOUT.in_rbe

test_rundir:
	@echo "Creating rundirs"
	if([ -d ${MYDIR}/run1 ]); then  			\
		rm -rf ${MYDIR}/run_backup;			\
		mkdir -p ${MYDIR}/run_backup;			\
		mv run[1-9] ${MYDIR}/run_backup/;		\
	fi;							\
	for iRun in {1..${NRUN}}; do  for e in ${EVENTLIST}; do                             \
		cd $(DIR);                                  				    \
		make rundir MACHINE=${MACHINE} RUNDIR=${QUEDIR}$${iRun}/Event$$e;           \
		cp -r SWPCTEST/Inputs/event$$e/*      ${QUEDIR}$${iRun}/Event$$e;           \
		cp SWPCTEST/Inputs/magin_GEM.dat      ${QUEDIR}$${iRun}/Event$$e;           \
		cp SWPCTEST/Inputs/job.${MACHINE}     ${QUEDIR}$${iRun}/Event$$e/job.long;  \
		cp SWPCTEST/Inputs/${LAYOUT}	      ${QUEDIR}$${iRun}/Event$$e/LAYOUT.in; \
		cp Param/SWPC/${PARAMINIT}            ${QUEDIR}$${iRun}/Event$$e/PARAM.in;  \
		cd ${QUEDIR}$${iRun}/Event$$e;				     		    \
	  		${MYSCRIPTDIR}/change_param.pl ${PLOT} -imf=${IMF} -irun=$${iRun};  \
	done; done

test_run:
	@echo "Submitting jobs"
	cd ..; 								\
	for iRun in {1..${NRUN}}; do for e in ${EVENTLIST}; do		\
		cd ${QUEDIR}$${iRun}/Event$$e;				\
		if [[ "${MACHINE}" == "frontera" ]];                    \
		   then sed -i "s/sub1/ev$$e.$${iRun}/g" job.long; 	\
		   sbatch job.long;                        		\
		fi;                                                     \
		if [[ "${MACHINE}" == "pfe" ]];                         \
		   then ./qsub.pfe.pl job.long ev$$e.$${iRun};     	\
		fi;                                                     \
	done; done

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
	./Config.pl -g=GM:8,8,8,400,1,IE:91,181; \
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
	./Config.pl -g=GM:8,8,8,400,1,IE:91,181; \
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
	./Config.pl -g=GM:8,8,8,400,1,IE:91,181; \
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
	for iRun in {1..${NRUN}}; do for e in ${EVENTLIST}; do			\
		cp Inputs/job_more.long      ${QUEDIR}$${iRun}/Event$$e;	\
	done; done

test_multiion_v2_run:
	@echo "Submitting jobs"
	cd ..; 							\
	for iRun in {1..${NRUN}}; do for e in ${EVENTLIST}; do	\
		cd ${QUEDIR}$${iRun}/Event$$e;		\
		./qsub.pfe.pl job_more.long ev$$e;	    	\
	done; done

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
	./Config.pl -g=GM:8,8,8,400,1,IE:91,181; \
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

test_multispecies_Young_v2:
	@echo "Testing the SWMF with multispecies Young v2 BATSRUS"
	make test_multispecies_Young_v2_compile
	make test_multispecies_Young_v2_rundir
	make test_multispecies_Young_v2_run
	@echo "Test_multispecies Young v2 started.  make check when complete."

test_multispecies_Young_v2_compile:
	make test_multispecies_compile

test_multispecies_Young_v2_rundir:
	make test_rundir PARAMINIT=PARAM.in_multispecies_Young_v2_init LAYOUT=LAYOUT.in

test_multispecies_Young_v2_run: test_run

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
	./Config.pl -g=GM:8,8,8,400,1,IE:91,181; \
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

test_SWPC_Young_v2:
	@echo "Testing the SWPC v2 with the Young BC."
	make test_SWPC_Young_v2_compile
	make test_SWPC_Young_v2_rundir
	make test_SWPC_Young_v2_run
	@echo "Test_cimi_v2 started.  make check when complete."

test_SWPC_Young_v2_compile: test_compile

test_SWPC_Young_v2_rundir:
	make test_rundir PARAMINIT=PARAM.in_SWPC_v2_Young_init LAYOUT=LAYOUT.in_SWPC_v2

test_SWPC_Young_v2_run: test_run

##############################################################################

FULLRESDIR  = ${MYDIR}/deltaB/${RESDIR}
FULLRES1DIR = ${MYDIR}/deltaB/${RES1DIR}
FULLRES2DIR = ${MYDIR}/deltaB/${RES2DIR}

RunDirList  = $(sort $(dir $(wildcard run[1-9]/Event[0-9]/)))
ResDirList  = ${MYDIR}/deltaB/${RESDIR}/ $(sort $(dir $(wildcard ${MYDIR}/deltaB/${RESDIR}/run[1-9]/)))

CompDir = COMPARE_$(shell echo ${RES1DIR} | sed 's/\//_/')_vs_$(shell echo ${RES2DIR} | sed 's/\//_/')

check_postproc:
	@if([ ! -d ${MYDIR}/deltaB/${RESDIR} ]); then  			\
	  echo "Post processing simulation results to deltaB/${RESDIR}";\
	  for RunDir in ${RunDirList};  do				\
	     cd ${MYDIR}/$${RunDir};					\
	     if([ -f SWMF.SUCCESS ]); then				\
		if([ ! -d RESULTS ]); then ./PostProc.pl RESULTS; fi;   \
		mkdir -p ${FULLRESDIR}/$${RunDir};			\
		cp PARAM.in *log.* RESULTS/GM/* RESULTS/IE/IE*.log      \
			${FULLRESDIR}/$${RunDir}/;			\
		cd ${FULLRESDIR}/$${RunDir}/;				\
		${MYSCRIPTDIR}/convert_mags.py; 			\
             fi;							\
	  done;								\
	else								\
	  echo "${RESDIR} already exists; skip post processing.";	\
	fi

check_calc:
	@echo "Checking results against observations"
	make clean_calc RESDIR=${RESDIR}; 						\
	export IDL_PATH='${GMDIR}/Idl/:<IDL_DEFAULT>'; export IDL_STARTUP=idlrc;	\
	for ResDir in ${ResDirList}; do							\
	   if([ -d $${ResDir}/Event${FIRSTEVENT} ]); then 				\
		@echo 'working on $${ResDir}';						\
		cd $${ResDir};								\
		printf "${PREDICT}\n calc_all_events,models=['$${ResDir}'],firstevent=${FIRSTEVENT},lastevent=${LASTEVENT},mydir='${MYDIR}'\n" | idl > idl_allevents_log.txt; 	\
		printf "${PREDICT}\n calc_all_db_events,models=['$${ResDir}'],firstevent=${FIRSTEVENT},lastevent=${LASTEVENT},mydir='${MYDIR}'\n" | idl > idl_alldb_log.txt; 	\
		printf "${PREDICT}\n calc_dst_error,models=['$${ResDir}'],firstevent=${FIRSTEVENT},lastevent=${LASTEVENT},mydir='${MYDIR}'\n" | idl > idl_dst_log.txt;     	\
		printf "${PREDICT}\n save_tables, model=['$${ResDir}'],firstevent=${FIRSTEVENT},lastevent=${LASTEVENT},mydir='${MYDIR}'\n" | idl > idl_savetalbe_log.txt;	\
           fi; 			\
	done;			\
	cd ${FULLRESDIR};	\
	printf "${PREDICT}\n dst_stat_nRun, mydir='${MYDIR}', ResDir='${RESDIR}'\n"   | idl > idl_dst_stat_log.txt;	\
	printf "${PREDICT}\n score_stat_nRun, mydir='${MYDIR}', ResDir='${RESDIR}'\n" | idl > idl_score_stat_log.txt

check_dst:
	@echo "Checking Dst against observations"
	export IDL_PATH='${GMDIR}/Idl/:<IDL_DEFAULT>'; export IDL_STARTUP=idlrc;\
	for ResDir in ${ResDirList}; do						\
	    if([ -d $${ResDir}/Event${FIRSTEVENT} ]); then              \
		@echo ' working on $${ResDir}';				\
		cd $${ResDir};						\
		printf "${PREDICT}\n calc_dst_error,models=['$${ResDir}'],firstevent=${FIRSTEVENT},lastevent=${LASTEVENT},mydir='${MYDIR}'\n" | idl > idl_dst_log.txt;     	\
	    fi; \
	done

check_tar:
	@echo "Saving results as tarball"
	tar -czf ${RESDIR}_$$(date +%Y%m%d_%H%M).tgz deltaB/${RESDIR}

check_compare:
	@echo "Compare ${RES1DIR} and ${RES2DIR}"
	export IDL_STARTUP=idlrc; export IDL_PATH='${GMDIR}/Idl/:<IDL_DEFAULT>'; \
	mkdir -p ${CompDir}; cd ${CompDir}; \
	printf "${PREDICT}\n save_comp_dbdt_tables, '${FULLRES1DIR}','${FULLRES2DIR}', firstevent=${FIRSTEVENT},lastevent=${LASTEVENT},mydir='${MYDIR}'\n" | idl > idl_log.txt; \
	printf "${PREDICT}\n save_comp_db_tables,   '${FULLRES1DIR}','${FULLRES2DIR}', firstevent=${FIRSTEVENT},lastevent=${LASTEVENT},mydir='${MYDIR}'\n" | idl > idl_log.txt; \
	printf "${PREDICT}\n calc_dst_error,models=['${FULLRES1DIR}','${FULLRES2DIR}'],firstevent=${FIRSTEVENT},lastevent=${LASTEVENT},mydir='${MYDIR}'\n" | idl > idl_log.txt

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

clean_calc:
	@echo "Cleaning calculated files"
	rm -f results*.txt;						\
	cd ${FULLRESDIR}; 						\
	rm -f *txt;							\
	for ResDir in ${ResDirList}; do					\
		cd $${ResDir};						\
		rm -f *.txt;						\
		rm -f *.pdf;						\
		rm -f *.eps;						\
		rm -f *.tex;						\
	done

clean:
	@echo "Cleaning result files"
	rm -f results*.txt;
	for ResDir in ${ResDirList}; do					\
		cd $${ResDir};						\
		rm -f *.txt;						\
		rm -f *.pdf;						\
		rm -f *.eps;						\
		rm -f *.tex;						\
		for e in ${EVENTLIST}; do         			\
			rm -f $${ResDir}/Event$$e/*.txt; 		\
			rm -f $${ResDir}/Event$$e/*.eps;		\
			rm -f $${ResDir}/Event$$e/*.log;		\
			rm -f $${ResDir}/Event$$e/*.mag;		\
			rm -f $${ResDir}/Event$$e/runlog*;		\
			rm -f $${ResDir}/Event$$e/PARAM.in;		\
		done; 							\
	done

distclean:
	make clean
	@echo "Cleaning all rundirectories"
	rm -rf ../Event* ${QUEDIR}/Event* *~

