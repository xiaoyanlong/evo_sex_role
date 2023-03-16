#!/bin/bash

#!!! adjust the time quota !!!

#SBATCH --time=01:00:00
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=5000
#SBATCH --cpus-per-task=16
#SBATCH --partition=single

datadir="/$(whoami) /pfs/work7"
./bin/evorole --force param=param.json rep=10 outdir=$datadir/evosexrole/data/2023-03-16/premating_initial5_m0_prefemale1

