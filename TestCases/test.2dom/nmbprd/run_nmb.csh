#!/bin/csh

#BSUB -a poe                            # at NCAR: bluevista
#BSUB -R "span[ptile=8]"               # how many tasks per node (up to 8)
####  #BSUB -n 332                            # number of total tasks
#BSUB -n 346                            # number of total tasks
#BSUB -o nmb.out                        # output filename (%J to add job id)
#BSUB -e nmb.err                        # error filename
#BSUB -J nmb.2dom                       # job name
#BSUB -q premium                        # queue
#BSUB -W 0:45                           # wallclock time
#BSUB -P P48503002

setenv OMP_NUM_THREADS 1

mpirun.lsf NEMS.x

