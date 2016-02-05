#!/bin/tcsh
#
### simple qsub script 
#
##
#PBS -N Qmb
#PBS -A dtc-hurr
#PBS -l procs=166
#PBS -l walltime=00:30:00
#PBS -q batch
#PBS -d .

# for jet:
#PBS -l partition=tjet:ujet:njet
mpiexec -np 166 ./NEMS.x

# for zeus:
#
#   module load intel
#   module load mpt
#
#mpiexec_mpt -np 166 omplace ./NEMS.x

