#!/bin/tcsh
#
### simple qsub script 
#
##
#PBS -N Qnps
#PBS -A dtc-hurr
#PBS -l procs=16
#PBS -l walltime=00:30:00
#PBS -q batch
#PBS -d .


# for jet:
#PBS -l partition=tjet:ujet:njet
mpiexec -np 1 ./geogrid.exe
mpiexec -np 1 ./ungrib.exe
mpiexec -np 16 ./metgrid.exe
mpiexec -np 16 ./nemsinterp.exe

#for zeus:
#
#   module load intel
#   module load mpt
#
#mpiexec_mpt -np 1 omplace ./geogrid.exe
#mpiexec_mpt -np 1 omplace ./ungrib.exe
#mpiexec_mpt -np 16 omplace ./metgrid.exe
#mpiexec_mpt -np 16 omplace ./nemsinterp.exe


