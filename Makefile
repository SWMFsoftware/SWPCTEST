SHELL=/bin/bash
NP=64
EVENTS=1,2,3,4,5,6
MACHINE='pfe'
TESTPATH=$(shell pwd)
QUEDIR=$(TESTPATH)/..

help:
	@echo "This package builds and executes a set of validation"
	@echo "simulations; see README for more information."
	@echo ""
	@echo "Examples:"
	@echo "make test                   (run all test events)"
	@echo "make test EVENTS=2,         (run only test 2, note trailing comma)"
	@echo "make test QUEDIR='~/user/'  (set directory from which to run)"
	@echo "make check                  (check results of runs)"

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
	cd ..;							\
	for e in {${EVENTS}}; 					\
	do make rundir MACHINE=${MACHINE}; 			\
	mv run ${QUEDIR}/run_event$$e; 				\
	cp -r SWPCTEST/Inputs/event$$e/* ${QUEDIR}/run_event$$e;\
	cp SWPCTEST/Inputs/magin_GEM.dat ${QUEDIR}/run_event$$e;\
	cp SWPCTEST/Inputs/LAYOUT.in     ${QUEDIR}/run_event$$e;\
	cp SWPCTEST/Inputs/job.long      ${QUEDIR}/run_event$$e;\
	SWPCTEST/change_params.py $$e    ${QUEDIR}/run_event$$e;\
	done

test_run:
	@echo "Submitting simulation jobs to ques"
	cd ..; 						\
	for e in {${EVENTS}};				\
	do cd ${QUEDIR}/run_event$$e;			\
	qsub.pfe.pl job.long ev$$e;		    	\
	screen -S event$$e -d -m watch.pfe.pl ev$$e;	\
	done


check_postproc:
	@echo "Post processing simulation results"
	for e in {${EVENTS}};				\
	do cd ${QUEDIR}/run_event$$e;			\
	if [ ! -d "results_event$$e" ]; then		\
	./PostProc.pl -c results;			\
	cd ${TESTPATH};					\
	./convert_mags.py -o=./deltaB/Results/Event$$e  \
	${QUEDIR}/run_event$$e/results/GM;		\
	fi;						\
	done

check_calc:
	@echo "Checking results against observations"
	export IDL_STARTUP=${TESTPATH}/../GM/BATSRUS/Idl/idlrc;		\
	export IDL_PATH='<IDL_DEFAULT>':${TESTPATH}/../GM/BATSRUS/Idl/; \
	for e in {${EVENTS}};			\
	do printf ".r Idl/predict.pro\n predict,'dbdt',stations=['abk','pbq','ykc'],threshold=0.3,firstevent=$$[$$e-1],lastevent=$$[$$e-1]" | idl > results_test$$e.txt; \
	mv *.eps deltaB/Results/Event$$e/;	\
	done

clean:
	@echo "Cleaning result files"
	rm -f results*.txt
	@for e in {${EVENTS}};          	\
	do screen -X -S event$$e quit;		\
	rm -f deltaB/Results/Event$$e/*.txt; 	\
	rm -f deltaB/Results/Event$$e/*.eps;	\
	done

distclean:
	make clean
	@echo "Cleaning all rundirectories"
	rm -rf ../run_event* ${QUEDIR}/run_event* *~
