NP=64
EVENTS=1,2,3,4,5,6
QUEDIR=.
MACHINE='pfe'

help:
	@echo "This package builds and executes a set of validation"
	@echo "simulations; see README for more information."
	@echo ""
	@echo "Examples:"
	@echo "make test                   (run all test events)"
	@echo "make test EVENTS=2,         (run only test 2, note trailing comma)"
	@echo "make test QUEDIR='~/user/'  (set directory from which to run)"
	@echo "make test_check             (check results of runs)"

test:
	@echo "Testing the SWMF"
	make test_compile
	make test_rundir
	make test_run
	@echo "Tests started.  make test_check when complete."

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

test_postproc:
	@echo "Post processing simulation results"
	for e in {${EVENTS}};				\
	do cd ${QUEDIR}/run_event$$e;			\
	if [ ! -d "results_event$$e" ]; then		\
	./Postproc.pl -c -param results_event$$e;	\
	fi;						\
	done

test_check:
	make test_postproc
	@echo "Checking results against data"

clean:
	@(cd ..;	pwd;	make clean)
	for e in {${EVENTS}};          \
	do screen -X -S event$$e quit; \
	done

distclean:
	@echo "Cleaning all rundirectories."
	rm -rf ../run_event* ${QUEDIR}/run_event* *~
	for e in {${EVENTS}};          \
	do screen -X -S event$$e quit; \
	done
