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
	@echo "make check                    (check results of runs)"
	@echo "make propagate1d EVENTS=2,3   (propagate ACE/DISCVR data to BATSRUS boundary)"

GMDIR   = ../GM/BATSRUS
PROPDIR = ${GMDIR}/run_L1toBC

propagate1d:
	@echo "Propagating solar wind with 1D MHD"
	make propagate1d_compile
	make propagate1d_rundir
	make propagate1d_run

propagate1d_compile:
	-@(cd ${GMDIR}; make test_L1toBC_compile;)

propagate1d_rundir:
	-@(cd ${GMDIR}; make test_L1toBC_rundir; mv run_test ${PROPDIR})

propagate1d_run:
	for e in ${EVENTLIST}; do 			 			\
		echo ${SWPCTESTDIR}/change_params.py $$e ${PROPDIR}; 		\
		cp Inputs/event$$e/L1.dat ${PROPDIR};				\
		cd ${PROPDIR}; mpirun -np 4 ./BATSRUS.exe > runlog; 		\
		perl -p -e 's/test point/Propagated from L1 to/; s/PNT//g' 	\
			IO2/log*.log > ${INPUTDIR}/event$$e/IMF_propagated.dat; \
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

test_compile:
	-@(cd ..; \
	./Config.pl -v=GM/BATSRUS,IE/Ridley_serial,IM/RCM2; \
	make SWMF PIDL PSPH; \
	)

test_rundir:
	@echo "Creating rundirs"
	cd ..;								\
	for e in ${EVENTLIST}; do	 				\
		make rundir MACHINE=${MACHINE}; 			\
		mv run ${QUEDIR}/run_event$$e; 				\
		cp -r SWPCTEST/Inputs/event$$e/* ${QUEDIR}/run_event$$e;\
		cp SWPCTEST/Inputs/magin_GEM.dat ${QUEDIR}/run_event$$e;\
		cp SWPCTEST/Inputs/LAYOUT.in     ${QUEDIR}/run_event$$e;\
		cp SWPCTEST/Inputs/job.long      ${QUEDIR}/run_event$$e;\
		SWPCTEST/change_params.py $$e    ${QUEDIR}/run_event$$e;\
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
			./convert_mags.py -o=./deltaB/Results/Event$$e  \
			${QUEDIR}/run_event$$e/results/GM;		\
		fi;							\
	done

check_calc:
	@echo "Checking results against observations"
	export IDL_STARTUP=${TESTPATH}/../GM/BATSRUS/Idl/idlrc;		\
	export IDL_PATH='<IDL_DEFAULT>':${TESTPATH}/../GM/BATSRUS/Idl/; \
	for e in ${EVENTLIST}; do					\
		printf ".r Idl/predict.pro\n predict,'dbdt',stations=['abk','pbq','ykc'],threshold=0.3,firstevent=$$[$$e-1],lastevent=$$[$$e-1]" | idl > results_test$$e.txt; \
		mv *.eps deltaB/Results/Event$$e/;			\
	done

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
