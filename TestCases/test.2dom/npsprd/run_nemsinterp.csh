#!/bin/csh

#BSUB -a poe                            # at NCAR: bluevista
#BSUB -R "span[ptile=16]"               # how many tasks per node (up to 8)
#BSUB -n 16                              # number of total tasks
#BSUB -o nemsint.out                    # output filename (%J to add job id)
#BSUB -e nemsint.err                    # error filename
#BSUB -J nemsint                        # job name
#BSUB -q caldera                        # queue
#BSUB -W 0:10                           # wallclock time
#BSUB -P P48503002



mpirun.lsf nemsinterp.exe

