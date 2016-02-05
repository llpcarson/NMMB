#!/bin/csh

#BSUB -a poe                            # at NCAR: bluevista
#BSUB -R "span[ptile=16]"               # how many tasks per node (up to 8)
#BSUB -n 16                              # number of total tasks
#BSUB -o metgrid.out                    # output filename (%J to add job id)
#BSUB -e metgrid.err                    # error filename
#BSUB -J metgrid                        # job name
#BSUB -q caldera                        # queue
#BSUB -W 0:10                           # wallclock time
#BSUB -P P48503002


mpirun.lsf metgrid.exe

