NP=64
EVENTS=1,2,3,4,5,6
QUEDIR=.
MACHINE='pfe'

help:
	@echo "Help information forthcoming."

swpctest:
	@echo "Testing the SWMF"
	make swpctest_compile
	make swpctest_rundir
	make swpctest_run

swpctest_compile:
	-@(cd ..; \
	./Config.pl -v=GM/BATSRUS,IE/Ridley_serial,IM/RCM2; \
	make SWMF PIDL PSPH; \
	)

swpctest_rundir:
	@echo "Creating rundirs"
	cd ..; 				\
	for e in {${EVENTS}}; 		\
	do make rundir; 		\
	mv run ${QUEDIR}/run_event$$e; 	\
	done

	# Move params into rundir.  Check committed vs those in runfiles repo.

swpctest_run:
	@echo "Submitting simulation jobs to ques"

swpctest_check:
	@echo "Checking results against data"

clean:
	@(cd ..;	pwd;	make clean)

distclean:
	@echo "Cleaning all rundirectories."
	rm -rf ../run_event* ${QUEDIR}/run_event* *~
