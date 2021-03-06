#!/bin/csh

#BSUB -a poe                            # at NCAR: bluevista
#BSUB -R "span[ptile=16]"               # how many tasks per node (up to 8)
#BSUB -n 64                             # number of total tasks
#BSUB -o nii.out                       # output filename (%J to add job id)
#BSUB -e nii.err                       # error filename
#BSUB -J nps.Thompson                   # job name
#BSUB -q premium                        # queue
#BSUB -W 0:30                           # wallclock time
#BSUB -P P48503002


#mpirun.lsf geogrid.exe
#mpirun.lsf ungrib.exe
#mpirun.lsf metgrid.exe
mpirun.lsf nemsinterp.exe

