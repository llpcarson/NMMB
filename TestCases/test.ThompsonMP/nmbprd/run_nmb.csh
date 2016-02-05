#!/bin/csh

#BSUB -a poe                            # at NCAR: bluevista
#BSUB -R "span[ptile=16]"               # how many tasks per node (up to 8)
#BSUB -n 1680                           # number of total tasks
#BSUB -o nmb.out                        # output filename (%J to add job id)
#BSUB -e nmb.err                        # error filename
#BSUB -J nmbThompson                    # job name
#BSUB -q regular                        # queue
#BSUB -W 4:00                           # wallclock time
#BSUB -P P48503002

setenv OMP_NUM_THREADS 1

mpirun.lsf NEMS.x

