SHELL=/bin/bash

# Include Makefile.def from the linked SWMF directory 
-include SWMF/Makefile.def
-include ../Makefile.def

MYDIR       = $(shell echo `pwd -P`)
INPUTDIR    = Inputs
MYINPUTDIR  = ${MYDIR}/${INPUTDIR}
MYSCRIPTDIR = ${MYDIR}/Scripts
MYIDLDIR    = ${MYDIR}/Idl
IDLPATH     = ${COMMONDIR}/IDL/General:<IDL_DEFAULT>
GMDIR       = ${DIR}/GM/BATSRUS
QSUBSCRIPT  = ${COMMONDIR}/JobScripts/qsub.pfe.pbspl.pl
SIMDIR      = Runs
RESDIR	    = ${SIMDIR}
RES1DIR	    = ${RESDIR}
RES2DIR	    = SWMF_CCMC
RTDIR	    = ${MYDIR}/run_realtime
QUEDIR      = $(MYDIR)/${SIMDIR}/run
PREDICT     = .r ${MYIDLDIR}/predict.pro
NRUN        = 1

# Toggle saving all outputs to file (defaults is to not save plots and restart)
PLOT='-noplot'
RESTART='-norestart'

# Comma separated list of event indexes, can also use - to indicate a range. 
EVENTS=1-6

# expand - with the list of numbers, e.g., 3-6 becomes 3,4,5,6
EVENTS_EXPAND = $(shell echo ${EVENTS} | perl -pe 's/(\d+)-(\d+)/join(",", $$1..$$2)/ge')

# Space separated list (replace comma with space)
EVENTLIST  = $(foreach v, $(shell echo ${EVENTS_EXPAND} | tr , ' '), $(shell printf '%02d' $(v)))

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
	@echo "make test                      (run events 1-6 in Runs/run1 directory)"
	@echo "make test NRUN=5               (run events 1-6 five times (up to 9) on different number of cores)"
	@echo "make test EVENTS=2-5,91-93     (run events 2,3,4,5,91,92,93 only)"
	@echo 'make test SIMDIR=Cimi_Bc2.2    (do runs in Cimi_Bc2.2 dir. Default is Runs.)'
	@echo 'make test INPUTDIR=Events      (do runs with inputs from the Events dir. Default is Inputs)'
	@echo ""
	@echo "make test PLOT='' RESTART=''   (run all test events and save all outputs)"
	@echo "make test IMF=IMF_mhd.dat      (use IMF_mhd.dat for IMF file)"
	@echo "make test PARAMINIT=PARAM_2.in (use SWMF/Param/SWPC/PARAM_2.in as PARAM.in)"
	@echo "make -j test_compile           (recompile SWMF)"
	@echo "make test_rundir EVENTS=2-5 PARAMINIT=.. PARAMRESTART=.. (create run directories)"
	@echo "make test_run                  (submit runs to queue)"
	@echo "make ensemble_run EVENTS=20    (submit ensemble run to queue)"
	@echo ""
	@echo "make check                     (process results of events 1-6 in ./Runs into deltaB/Runs)"
	@echo "make check EVENTS=  SIMDIR=New (process all results from ./New into deltaB/New)"
	@echo "make check_postproc SIMDIR=New (collect results of events 1-6 from ./New into deltaB/New)"
	@echo "make check_calc     SIMDIR=New (calculate all metrics from results in deltaB/New/)"
	@echo "make check_stat     SIMDIR=New (calculate statistics from runs in deltaB/New/)"
	@echo "make check_dst      SIMDIR=New (calculate Dst error only from results in deltaB/New/)"
	@echo "make check_dst_stat SIMDIR=New (calculate Dst error statistics from runs in deltaB/New/)"
	@echo "make check_tar      SIMDIR=New (tar up results and metrics in deltaB/New)"
	@echo "make check_compare RES1DIR=New RES2DIR=Old (compare 2 runs into COMPARE_New_vs_Old/)"
	@echo ""
	@echo "test_order5                    (run with 5th order GM/BATSRUS+IM/RCM2)"
	@echo "test_magnit                    (run with GM/BATSRUS+IM/RCM2+IE/RIM-MAGNIT)"
	@echo "test_pe                        (run with electron presure GM/BATSRUS+IM/RCM2)"
	@echo "test_multiion                  (run with multiion GM/BATSRUS+IM/RCM2)"
	@echo "test_multiion                  (run with multiion GM/BATSRUS+IM/RCM2)"
	@echo "test_multispecies              (run with multispecies GM/BATSRUS+IM/RCM2)"
	@echo "test_multispecies_Young        (run with multispecies GM/BATSRUS+IM/RCM2 and Young BC)"
	@echo "test_cimi                      (run with anisotropic GM/BATSRUS+IM/CIMI)"
	@echo "test_Young                     (run with GM/BATSRUS+IM/RCM2 and Young BC)"
	@echo "test_pwom                      (run with single fluid GM/BATSRUS+IM/RCM2+PW/PWOM)"
	@echo "test_cimi_pwom_species         (run with multispecies GM/BATSRUS+IM/CIMI+PW/PWOM)"
	@echo "test_gpu                       (run the GPU version of SWPC v2)"
	@echo ""
	@echo "make ballistic                 (ballistic propagation for events 2-6,95-98)"
	@echo "make ballistic_mix             (ballistic propagation of IMF_fix for events 10-15)"
	@echo "make ballistic_limited         (limiting+ballistic propagation for events 2-6,95-98)"
	@echo "make propagate1d EVENTS=2,3    (propagate ACE/DISCVR data to BATSRUS boundary)"
	@echo "make propagate1d_plot          (create Inputs/event*/mhd_vs_ballistic.* plots)"
	@echo "make propagate1d_wind_plot     (create Inputs/event*/ mhd_vs_ballistic_vs_wind.* plots)"
	@echo
	@echo "make clean RESDIR=Results      (Clear results in RESDIR directory)"
	@echo

##############################################################################
# Some short tests:
test_event:
	@echo "EVENTS_EXPAND is ${EVENTS_EXPAND}"
	@echo "EVENTLIST is ${EVENTLIST}"
	@echo "FULLRESDIR is ${FULLRESDIR}"
	@echo "FullRunDirList is ${FullRunDirList}"
	@echo "FullResDirList is ${FullResDirList}"

##############################################################################

PROPDIR = ${GMDIR}/run_L1toBC

propagate1d:
	@echo "Propagating solar wind with 1D MHD"
	make propagate1d_compile
	make propagate1d_rundir
	make propagate1d_run

propagate1d_compile:
	@(cd ${GMDIR}; make test_L1toBC_compile;)

propagate1d_rundir:
	@(cd ${GMDIR}; make test_L1toBC_rundir TESTDIR=${PROPDIR})

propagate1d_run:
	for e in ${EVENTLIST}; do 				\
		cp ${MYINPUTDIR}/Event$$e/[Lw]*.dat ${PROPDIR};	\
		cd ${PROPDIR}; 					\
		${MYSCRIPTDIR}/change_param.pl; 		\
		${PARALLEL} ${NPFLAG} 4 ./BATSRUS.exe > runlog; 	   \
		perl -p -e 's/test point/Propagated from L1 to/; s/PNT//g' \
			IO2/log*.log > ${MYINPUTDIR}/Event$$e/IMF_mhd.dat; \
	done

propagate1d_plot:
	for e in 02 03 04 05 06 91 92 93 94; do		\
		cd ${MYINPUTDIR}/Event$$e/;		\
		idl ${MYDIR}/Idl/compare_imf.pro; 	\
	done

propagate1d_wind_plot:
	for e in 91 92 93 94; do			\
		cd ${MYINPUTDIR}/Event$$e/;		\
		idl ${MYDIR}/Idl/compare_wind.pro; 	\
	done

ballistic_mix:
	for e in 10 11 12 13 14 15; do			\
		cd ${MYINPUTDIR}/Event$$e/;		\
		ln -s L1_mix.dat L1.dat;		\
		idl ${MYDIR}/Idl/ballistic.pro;		\
		mv IMF_ballistic_shock.dat IMF_ballistic_mix.dat;\
	done

ballistic:
	for e in 02 03 04 05 06 95 96 97 98; do		\
		cd ${MYINPUTDIR}/Event$$e/;		\
		idl ${MYDIR}/Idl/ballistic.pro;		\
	done
	for e in 91 92 93 94; do			\
		cd ${MYINPUTDIR}/Event$$e/;		\
		idl ${MYDIR}/Idl/ballistic_wind.pro;	\
	done

ballistic_limited:
	for e in 02 03 04 05 06 95 96 97 98; do		\
		cd ${MYINPUTDIR}/Event$$e/;		\
		idl ${MYDIR}/Idl/ballistic_limited.pro;	\
	done

convert_ace:
	for e in 95 96 97 98; do 				\
		cd ${MYINPUTDIR}/Event$$e/;			\
		${MYSCRIPTDIR}/ace_to_sat.pl ace*.txt > L1.dat; \
	done

##############################################################################

test:
	@echo "Testing the Geospace model"
	make test_compile
	make test_rundir
	make test_run
	@echo "Tests started.  make check when complete."

check:
	make check_postproc
	make check_calc
	make check_tar

test_compile:
	@(cd ${DIR}; \
	./Config.pl -v=Empty,GM/BATSRUS,IE/Ridley_serial,IM/RCM2,RB/RBE; \
	./Config.pl -o=GM:u=Default,e=Mhd,g=8,8,8,ng=2,IE:g=181,361; \
	./Config.pl -noacc; \
	make SWMF PIDL; \
	)

# Default PARAM.in file for the tests
PARAMINIT = PARAM.in_SWPC_v2_init
PARAMRESTART = PARAM.in_SWPC_v2_restart

# Default number of circles for PWOM initial field lines
NCIRCLE = 6

test_rundir:
	@echo "Creating rundirs"
	if([ -d ${QUEDIR}1 ]); then  		\
		rm -rf ${QUEDIR}_backup;	\
		mkdir -p ${QUEDIR}_backup;	\
		mv ${QUEDIR}[1-9] ${QUEDIR}_backup/;	\
	fi;
	for iRun in {1..${NRUN}}; do  for e in ${EVENTLIST}; do                             \
		cd $(DIR);                                  				    \
		make rundir MACHINE=${MACHINE} RUNDIR=${QUEDIR}$${iRun}/Event$$e NCIRCLE=${NCIRCLE}; \
		cp -r ${MYINPUTDIR}/Event$$e/IMF*.dat ${QUEDIR}$${iRun}/Event$$e;           \
		cp ${MYDIR}/Inputs/magin_GEM.dat      ${QUEDIR}$${iRun}/Event$$e;           \
		cp -f ${MYDIR}/Inputs/job.${MACHINE}* ${QUEDIR}$${iRun}/Event$$e/;          \
		cp Param/SWPC/${PARAMINIT}            ${QUEDIR}$${iRun}/Event$$e/PARAM.in;  \
		cp Param/SWPC/${PARAMRESTART}         ${QUEDIR}$${iRun}/Event$$e/PARAM.in.restart; \
		cd ${QUEDIR}$${iRun}/Event$$e;				     		    \
	  	   ${MYSCRIPTDIR}/change_param.pl ${PLOT} ${RESTART} -imf=${IMF} -irun=$${iRun};  \
	done; done
	cp ${MYDIR}/Inputs/ensemble.pfe $(MYDIR)/${SIMDIR}/;

test_run:
	@echo "Submitting jobs"
	for iRun in {1..${NRUN}}; do for e in ${EVENTLIST}; do		\
		cd ${QUEDIR}$${iRun}/Event$$e;				\
		if [[ "${MACHINE}" == "frontera" ]]; then               \
		   sed -i "s/sub1/ev$$e.$${iRun}/g" job.frontera;       \
		   sbatch job.frontera;                        		\
		fi;                                                     \
		if [[ "${MACHINE}" == "pfe" ]]; then                    \
		   ./qsub.pfe.pbspl.pl job.pfe ev$$e.$${iRun};		\
		fi;                                                     \
	done; done

ensemble_run:
	@echo "Submitting ensemble jobs"
	cd $(MYDIR)/${SIMDIR}/; 	\
	for e in ${EVENTLIST}; do       \
		${QSUBSCRIPT} ensemble.pfe Event$$e; \
	done;

##############################################################################

test_order5:
	@echo "Testing the Geospcae model with high order scheme"
	make test_order5_compile
	make test_order5_rundir
	make test_order5_run
	@echo "test_order5 started.  make check when complete."

test_order5_compile:
	@(cd ${DIR}; \
	./Config.pl -v=Empty,GM/BATSRUS,IE/Ridley_serial,IM/RCM2; \
	./Config.pl -o=GM:u=Default,e=Mhd,g=8,8,8,ng=3,IE:g=181,361; \
	./Config.pl -noacc; \
	make SWMF PIDL; \
	)

test_order5_rundir:
	make test_rundir PARAMINIT=PARAM.in_order5_init

test_order5_run: test_run

##############################################################################

test_magnit:
	@echo "Testing the Geospace model with MAGNIT ionosphere"
	make test_magnit_compile
	make test_magnit_rundir
	make test_magnit_run
	@echo "Test_magnit started.  make check when complete."

test_magnit_compile:
	@(cd ${DIR}; \
	./Config.pl -v=Empty,GM/BATSRUS,IE/Ridley_serial,IM/RCM2; \
	./Config.pl -o=GM:u=Default,e=Mhd,g=8,8,8,ng=2,IE:g=181,361; \
	./Config.pl -noacc; \
	make SWMF PIDL; \
	)

test_magnit_rundir:
	make test_rundir PARAMINIT=PARAM.in_MAGNIT_init

test_magnit_run: test_run

##############################################################################

test_pe:
	@echo "Testing the Geospcae model with electron pressure"
	make test_pe_compile
	make test_pe_rundir
	make test_pe_run
	@echo "Test_pe started.  make check when complete."

test_pe_compile:
	@(cd ${DIR}; \
	./Config.pl -v=Empty,GM/BATSRUS,IE/Ridley_serial,IM/RCM2; \
	./Config.pl -o=GM:u=Default,e=MhdPe,g=8,8,8,ng=3,IE:g=181,361; \
	./Config.pl -noacc; \
	make SWMF PIDL; \
	)

test_pe_rundir:
	make test_rundir PARAMINIT=PARAM.in_pe_init

test_pe_run: test_run

##############################################################################

test_multiion:
	@echo "Testing the Geospace model with multiion BATSRUS"
	make test_multiion_compile
	make test_multiion_rundir
	make test_multiion_run
	@echo "test_multiion started.  make check when complete."

test_multiion_compile:
	@(cd ${DIR}; \
	./Config.pl -v=Empty,GM/BATSRUS,IE/Ridley_serial,IM/RCM2; \
	./Config.pl -o=GM:u=Default,e=MultiIon,g=8,8,8,ng=2,IE:g=181,361; \
	./Config.pl -noacc; \
	make SWMF PIDL; \
	)

test_multiion_rundir:
	make test_rundir PARAMINIT=PARAM.in_multiion_init
	for iRun in {1..${NRUN}}; do for e in ${EVENTLIST}; do		\
		cp Inputs/job_more.long ${QUEDIR}$${iRun}/Event$$e;	\
	done; done

test_multiion_run:
	@echo "Submitting jobs"
	for iRun in {1..${NRUN}}; do for e in ${EVENTLIST}; do	\
		cd ${QUEDIR}$${iRun}/Event$$e;		\
		./qsub.pfe.pbspl.pl job_more.long ev$$e;	    	\
	done; done

##############################################################################

test_multispecies:
	@echo "Testing the Geospace model with multispecies BATSRUS"
	make test_multispecies_compile
	make test_multispecies_rundir
	make test_multispecies_run
	@echo "Test_multispecies started.  make check when complete."

test_multispecies_compile:
	@(cd ${DIR}; \
	./Config.pl -v=Empty,GM/BATSRUS,IE/Ridley_serial,IM/RCM2; \
	./Config.pl -o=GM:u=Default,e=MhdHpOp,g=8,8,8,ng=2,IE:g=181,361; \
	./Config.pl -noacc; \
	make SWMF PIDL; \
	)

test_multispecies_rundir:
	make test_rundir PARAMINIT=PARAM.in_multispecies_init

test_multispecies_run: test_run

##############################################################################

test_multispecies_Young:
	@echo "Testing the Geospace model with multispecies Young BATSRUS"
	make test_multispecies_Young_compile
	make test_multispecies_Young_rundir
	make test_multispecies_Young_run
	@echo "Test_multispecies Young started.  make check when complete."

test_multispecies_Young_compile:
	make test_multispecies_compile

test_multispecies_Young_rundir:
	make test_rundir PARAMINIT=PARAM.in_multispecies_Young_init

test_multispecies_Young_run: test_run

##############################################################################

test_cimi:
	@echo "Testing the Geospace model with anisotropic BATSRUS + IM/CIMI"
	make test_cimi_compile
	make test_cimi_rundir
	make test_cimi_run
	@echo "test_cimi started.  make check when complete."

test_cimi_compile:
	@(cd ${DIR}; \
	./Config.pl -v=Empty,GM/BATSRUS,IE/Ridley_serial,IM/CIMI; \
	./Config.pl -o=GM:u=Default,e=MhdAnisoP,g=8,8,8,ng=2,IE:g=181,361,IM:EarthHO,GridExpanded; \
	./Config.pl -noacc; \
	make SWMF PIDL; \
	)

test_cimi_rundir:
	make test_rundir PARAMINIT=PARAM.in_cimi_init

test_cimi_run: test_run

##############################################################################

test_Young:
	@echo "Testing the SWPC with the Young BC."
	make test_Young_compile
	make test_Young_rundir
	make test_Young_run
	@echo "test_Young started.  make check when complete."

test_Young_compile: test_compile

test_Young_rundir:
	make test_rundir PARAMINIT=PARAM.in_Young_init

test_Young_run: test_run

##############################################################################

test_pwom:
	@echo "Testing the Geospace model with PW/PWOM"
	make test_pwom_compile
	make test_pwom_rundir
	make test_pwom_run
	@echo "Test_pwom started.  make check when complete."

test_pwom_compile:
	@(cd ${DIR}; \
	./Config.pl -v=Empty,GM/BATSRUS,IE/Ridley_serial,IM/RCM2,PW/PWOM; \
	./Config.pl -o=GM:u=Default,e=Mhd,g=8,8,8,ng=2,IE:g=181,361,PW:Earth; \
	./Config.pl -noacc; \
	make SWMF PIDL; \
	)

test_pwom_rundir:
	make test_rundir PARAMINIT=PARAM.in_pwom_init 

test_pwom_run: test_run

##############################################################################
test_cimi_pwom_species:
	@echo "Testing the Geospace model with PW/PWOM"
	make test_cimi_pwom_species_compile
	make test_cimi_pwom_species_rundir
	make test_cimi_pwom_species_run
	@echo "Test_cimi_pwom_species started.  make check when complete."

test_cimi_pwom_species_compile:
	@(cd ${DIR}; \
	./Config.pl -v=Empty,GM/BATSRUS,IE/Ridley_serial,IM/CIMI,PW/PWOM; \
	./Config.pl -o=GM:u=Default,e=MhdHpOp,g=8,8,8,ng=2,IE:g=181,361,PW:Earth; \
	./Config.pl -o=IM:EarthHO,GridExpanded; \
	./Config.pl -noacc; \
	make SWMF PIDL; \
	)

test_cimi_pwom_species_rundir:
	make test_rundir PARAMINIT=PARAM.in_cimi_pwom_species_init 

test_cimi_pwom_species_run: test_run

##############################################################################

test_gpu:
	@echo "Testing SWPC on GPU"
	make test_gpu_compile
	make test_gpu_rundir
	make test_gpu_run
	@echo "test_gpu started.  make check when complete."

test_gpu_compile:
	@(cd ${DIR}; \
	./Config.pl -v=Empty,GM/BATSRUS,IE/Ridley_serial,IM/RCM2; \
	./Config.pl -o=GM:u=Default,e=Mhd,ng=2,g=8,8,8,opt=none,IE:g=181,361; \
	./Config.pl -acc; \
	make SWMF PIDL; \
	)


test_gpu_rundir:
	make test_rundir PARAMINIT=PARAM.in_SWPC_gpu_init \
		PARAMRESTART=PARAM.in_SWPC_gpu_restart RESTART=''

test_gpu_run:
	@echo "Submitting GPU jobs"
	for e in ${EVENTLIST}; do			\
	   cd ${QUEDIR}1/Event$$e;			\
	   if [[ "${MACHINE}" == "longhorn" ]]; then	\
	      sed -i "s/sub1/ev$$e/g" job.longhorn; 	\
	      sbatch job.longhorn;			\
	   fi;						\
	   if [[ "${MACHINE}" == "pfe" ]]; then		\
	      ssh pbspl4 "cd ${QUEDIR}1/Event$$e; ./qsub.pfe.pbspl.pl job.pfe.pbspl.nvidia ev$$e"; \
	   fi;						\
	   if [[ "${MACHINE}" == "pbspl" ]]; then       \
	      cd ${QUEDIR}1/Event$$e; ./qsub.pfe.pbspl.pl job.pfe.pbspl.nvidia ev$$e; \
	   fi;                                          \
	done

##############################################################################

FULLSIMDIR  = $(MYDIR)/${SIMDIR}
FULLRESDIR  = ${MYDIR}/deltaB/${RESDIR}
FULLRES1DIR = ${MYDIR}/deltaB/${RES1DIR}
FULLRES2DIR = ${MYDIR}/deltaB/${RES2DIR}

FullRunDirList  = $(sort $(dir $(wildcard ${QUEDIR}*/Event*/)))
FullResDirList  = $(sort $(dir $(wildcard ${MYDIR}/deltaB/${RESDIR}/run*/)))

RunDirList = $(subst ${FULLSIMDIR},,${FullRunDirList})

CompDir = COMPARE_$(shell echo ${RES1DIR} | sed 's/\//_/')_vs_$(shell echo ${RES2DIR} | sed 's/\//_/')


show_dir:
	@echo "MYDIR          = ${MYDIR}"
	@echo "CompDir        = ${CompDir}"
	@echo "RunDirList     = ${RunDirList}"
	@echo "FullRunDirList = ${FullRunDirList}"
	@echo "FULLRESDIR     = ${FULLRESDIR}"
	@echo "FullResDirList = ${FullResDirList}"
	@echo ""

check_postproc: show_dir
	@if([ ! -d ${MYDIR}/deltaB/${RESDIR} ]); then  			\
	  echo "Post processing simulation results to deltaB/${RESDIR}";\
	  for RunDir in ${RunDirList};  do				\
	     echo "processing RunDir=${FULLSIMDIR}/$${RunDir}";		\
	     cd ${FULLSIMDIR}/$${RunDir};				\
	     if([ -f SWMF.SUCCESS -o -f DONE ]); then			\
		if([ ! -d RESULTS ]); then ${SCRIPTDIR}/PostProc.pl -cat RESULTS; fi;   \
		mkdir -p ${FULLRESDIR}/$$RunDir;			\
		cd RESULTS; cp -f PARAM.in runlog* GM/* IE/IE*.log 	\
			${FULLRESDIR}/$$RunDir;				\
		cd ${FULLRESDIR}/$$RunDir;				\
		${MYSCRIPTDIR}/convert_mags.py; 			\
             fi;							\
	  done;								\
	else								\
	  echo "${RESDIR} already exists; skip post processing.";	\
	fi

check_calc:
	@echo "Checking results against observations"
	@make clean_calc RESDIR=${RESDIR} 
	@(export IDL_PATH='${IDLPATH}'; export IDL_STARTUP=idlrc;	\
	for ResDir in ${FullResDirList}; do				\
	    echo "working on $$ResDir";					\
	    cd $${ResDir};						\
	    printf "${PREDICT}\n check_calc_all,models=['$${ResDir}'],events='${EVENTS_EXPAND}',mydir='${MYDIR}',InputDir='${INPUTDIR}'\n" | idl > idl_check_calc_log.txt; \
	done);
	make check_stat

check_calc_fft:
	@echo "Checking fft results against observations"
	@make clean_calc RESDIR=${RESDIR}
	@(export IDL_PATH='${IDLPATH}'; export IDL_STARTUP=idlrc;	\
	for ResDir in ${FullResDirList}; do				\
	    echo "working on $$ResDir";					\
	    cd $${ResDir};						\
	    printf "${PREDICT}\n check_calc_fft,models=['$${ResDir}'],events='${EVENTS_EXPAND}',mydir='${MYDIR}',InputDir='${INPUTDIR}'\n" | idl > idl_check_calc_fft_log.txt; \
	done);
	make check_stat

check_stat:
	echo "${PREDICT}; stat_nRun,mydir='${MYDIR}',events='${EVENTS_EXPAND}',ResDir='${RESDIR}',InputDir='${INPUTDIR}"; \
	cd ${FULLRESDIR};	\
	printf "${PREDICT}\n stat_nRun,mydir='${MYDIR}',events='${EVENTS_EXPAND}',ResDir='${RESDIR}',InputDir='${INPUTDIR}'\n" \
	| idl > idl_stat_log.txt;

check_dst:
	@echo "Checking Dst against observations"
	export IDL_PATH='${IDLPATH}'; export IDL_STARTUP=idlrc;\
	for ResDir in ${FullResDirList}; do				\
		echo ' working on $${ResDir}';				\
		cd $${ResDir};						\
		printf "${PREDICT}\n calc_dst_error,models=['$${ResDir}'],events='${EVENTS_EXPAND}',mydir='${MYDIR}',InputDir='${INPUTDIR}'\n" | idl > idl_dst_log.txt;     	\
	done
	make check_dst_stat

check_dst_stat:
	cd ${FULLRESDIR}; \
	export IDL_PATH='${IDLPATH}'; export IDL_STARTUP=idlrc; \
	printf "${PREDICT}\n dst_stat_nRun, mydir='${MYDIR}', events='${EVENTS_EXPAND}',ResDir='${RESDIR}',InputDir='${INPUTDIR}'\n"   | idl > idl_dst_stat_log.txt;

check_tar:
	@echo "Saving results as tarball"
	tar -czf ${RESDIR}_$$(date +%Y%m%d_%H%M).tgz deltaB/${RESDIR}

check_compare:
	@echo "Compare ${RES1DIR} and ${RES2DIR}"
	export IDL_STARTUP=idlrc; export IDL_PATH='${IDLPATH}'; \
	mkdir -p ${CompDir}; cd ${CompDir}; \
	printf "${PREDICT}\n save_comp_dbdt_tables, '${FULLRES1DIR}','${FULLRES2DIR}', events='${EVENTS_EXPAND}',mydir='${MYDIR}',InputDir='${INPUTDIR}'\n" | idl > idl_log.txt; \
	printf "${PREDICT}\n save_comp_db_tables,   '${FULLRES1DIR}','${FULLRES2DIR}', events='${EVENTS_EXPAND}',mydir='${MYDIR}',InputDir='${INPUTDIR}'\n" | idl > idl_log.txt; \
	printf "${PREDICT}\n calc_dst_error,models=['${FULLRES1DIR}','${FULLRES2DIR}'],events='${EVENTS_EXPAND}',mydir='${MYDIR}',InputDir='${INPUTDIR}'\n" | idl > idl_log.txt

realtime_start_rundir:
	cd ${DIR}; \
	make rundir MACHINE=${MACHINE} RUNDIR=${RTDIR}; \
	cp ${MYDIR}/Inputs/job.${MACHINE} ${RTDIR}; \
	cp Param/SWPC/${PARAMINIT}    ${RTDIR}/PARAM.in
	cd ${RTDIR}; rm -rf Param; mkdir Param; cd Param; \
	ln -s ${DIR}/Param/SWPC .; cd ../; ${MYSCRIPTDIR}/DSCOVR.py; \
	${MYSCRIPTDIR}/magnetometer.py; \
	${MYSCRIPTDIR}/change_param.pl ${PLOT} ${RESTART} -imf=${IMF}

clean_calc:
	@echo "Cleaning calculated files for SIMDIR=${RESDIR}"
	-@(rm -f results*.txt;						\
	cd ${FULLRESDIR}; 						\
	rm -f metric*.txt idl*.txt dst*.txt;				\
	for ResDir in ${FullResDirList}; do				\
		cd $${ResDir};						\
		rm -f metric*.txt idl*.txt dst*.txt d*.pdf d*.eps ;	\
	done)

clean:
	@echo "Cleaning result files"
	rm -f results*.txt;
	for ResDir in ${FullResDirList}; do					\
		cd $${ResDir};						\
		rm -f metric*.txt idl*.txt dst*.txt d*.pdf d*.eps ;	\
		for e in ${EVENTLIST}; do         			\
			rm -f $${ResDir}/Event$$e/*; 			\
		done; 							\
	done

distclean:
	make clean
	@echo "Cleaning all run directories"
	rm -rf ../Event* ${QUEDIR}* *~
