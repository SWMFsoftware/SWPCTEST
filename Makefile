SHELL=/bin/bash

include ../Makefile.def

SWPCTESTDIR = ${DIR}/SWPCTEST
INPUTDIR    = ${SWPCTESTDIR}/Inputs

# Comma separated list of even indexes
EVENTS=1,2,3,4,5,6

# Space separated list (replace comma with space)
EVENTLIST = `echo ${EVENTS} | tr , ' '`

# Number of processors to run on
NP=64

MACHINE='pfe'
TESTPATH=$(shell pwd)
QUEDIR=$(TESTPATH)/..

help:
	@echo "This package builds and executes a set of validation"
	@echo "simulations; see README for more information."
	@echo ""
	@echo "Examples:"
	@echo "make test                     (run all test events)"
	@echo "make test EVENTS=2,4          (run events 2 and 4 only)"
	@echo "make test QUEDIR='~/user/'    (set directory from which to run)"
	@echo "make test_compile	     (compile SWMF)"
	@echo "make test_rundir		     (create rundirs for all EVENTS)"
	@echo "make test_run	 	     (submit runs to que)"
	@echo ""
	@echo "make check                    (check results of runs)"
	@echo "make check_postproc	     (collect results from simulations)"
	@echo "make check_calc               (calculate metrics from results)"
	@echo "make check_stash	             (zip results and metrics)"
	@echo ""
	@echo "make propagate1d EVENTS=2,3   (propagate ACE/DISCVR data to BATSRUS boundary)"
	@echo
	@echo "make propagate1d_plot         (create Inputs/event2..10/mhd_vs_ballistic.* plots)"
	@echo "make propagate1d_wind_plot    (create Inputs/event7..10/mhd_vs_ballistic_vs_wind.* plots)"

GMDIR=${DIR}/GM/BATSRUS
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
		cp ${SWPCTESTDIR}/Inputs/event$$e/[Lw]*.dat ${PROPDIR};	    \
		cd ${PROPDIR}; 						    \
		${SWPCTESTDIR}/Scripts/change_param.pl; 		    \
		mpirun -np 4 ./BATSRUS.exe > runlog; 			    \
		perl -p -e 's/test point/Propagated from L1 to/; s/PNT//g'  \
			IO2/log*.log > ${INPUTDIR}/event$$e/IMF_mhd.dat;    \
	done

propagate1d_plot:
	for e in 2 3 4 5 6 7 8 9 10; do			\
		cd ${INPUTDIR}/event$$e/;		\
		idl ${SWPCTESTDIR}/Idl/compare_imf.pro; \
	done

propagate1d_wind_plot:
	for e in 7 8 9 10; do				 \
		cd ${INPUTDIR}/event$$e/;		 \
		idl ${SWPCTESTDIR}/Idl/compare_wind.pro; \
	done

ballistic:
	for e in 2 3 4 5 6; do					\
		cd ${INPUTDIR}/event$$e/;			\
		idl ${SWPCTESTDIR}/Idl/ballistic.pro;		\
	done
	for e in 7 8 9 10; do					\
		cd ${INPUTDIR}/event$$e/;			\
		idl ${SWPCTESTDIR}/Idl/ballistic_wind.pro;	\
	done

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
	make check_stash

test_compile:
	-@(cd ..; \
	./Config.pl -v=GM/BATSRUS,IE/Ridley_serial,IM/RCM2; \
	make SWMF PIDL PSPH; \
	)

test_rundir:
	@echo "Creating rundirs"
	cd ..;					\
	for e in ${EVENTLIST}; do	 	\
		make rundir MACHINE=${MACHINE}; \
		mv run ${QUEDIR}/run_event$$e; 	\
		cp -r SWPCTEST/Inputs/event$$e/*      ${QUEDIR}/run_event$$e;\
		cp SWPCTEST/Inputs/magin_GEM.dat      ${QUEDIR}/run_event$$e;\
		cp SWPCTEST/Inputs/LAYOUT.in	      ${QUEDIR}/run_event$$e;\
		cp SWPCTEST/Inputs/job.long           ${QUEDIR}/run_event$$e;\
		SWPCTEST/Scripts/change_params.py $$e ${QUEDIR}/run_event$$e;\
	done

test_run:
	@echo "Submitting simulation jobs to ques"
	cd ..; 							\
	for e in ${EVENTLIST}; do				\
		cd ${QUEDIR}/run_event$$e;			\
		./qsub.pfe.pl job.long ev$$e;		    	\
		screen -S event$$e -d -m watch.pfe.pl ev$$e;	\
	done


check_postproc:
	@echo "Post processing simulation results"
	for e in ${EVENTLIST}; do					\
		cd ${QUEDIR}/run_event$$e;				\
		if [ ! -d "results_event$$e" ]; then			\
			./PostProc.pl -c results;			\
			cd ${TESTPATH};					\
			./Scripts/convert_mags.py -o=./deltaB/Results/Event$$e  \
			${QUEDIR}/run_event$$e/results/GM;		\
			cp ${QUEDIR}/run_event$$e/results/GM/magnetometer* \
			${QUEDIR}/run_event$$e/results/GM/*.log		\
			./deltaB/Results/Event$$e;			\
		fi;							\
	done

check_calc:
	@echo "Checking results against observations"
	export IDL_STARTUP=${TESTPATH}/../GM/BATSRUS/Idl/idlrc;		\
	export IDL_PATH='<IDL_DEFAULT>':${TESTPATH}/../GM/BATSRUS/Idl/; \
	printf ".r Idl/predict.pro\n calc_all_events\n" | idl > idl_log.txt
	mv metric_table*.tex deltaB/Results/

check_stash:
	@echo "Saving results as tarball"
	tar -czf results_$$(date +%Y%m%d_%H%M).tgz deltaB/Results

clean:
	@echo "Cleaning result files"
	rm -f results*.txt
	@for e in ${EVENTLIST}; do         		\
		screen -X -S event$$e quit;		\
		rm -f deltaB/Results/Event$$e/*.txt; 	\
		rm -f deltaB/Results/Event$$e/*.eps;	\
	done

distclean:
	make clean
	@echo "Cleaning all rundirectories"
	rm -rf ../run_event* ${QUEDIR}/run_event* *~
