#!/bin/csh

#BSUB -a poe                            # at NCAR: bluevista
#BSUB -R "span[ptile=16]"               # how many tasks per node (up to 8)
#BSUB -n 16                             # number of total tasks
#BSUB -o nps.out                       # output filename (%J to add job id)
#BSUB -e nps.err                       # error filename
#BSUB -J nps.Thompson                   # job name
#BSUB -q caldera                        # queue
#BSUB -W 1:30                           # wallclock time
#BSUB -P P48503002


mpirun.lsf geogrid.exe
mpirun.lsf ungrib.exe
mpirun.lsf metgrid.exe
#mpirun.lsf nemsinterp.exe

