#!/bin/bash

#!!! adjust the time quota !!!

#SBATCH --time=70:00:00
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=9000
#SBATCH --cpus-per-task=16
#SBATCH --partition=single

datadir="/pfs/work7/workspace/scratch/fr_xl1011-data/evosexrole"
./bin/evorole --force param=2023-03-16_Fig.5_check.json rep=2 outdir=$datadir/2023-03-16_Fig.5_check_1

