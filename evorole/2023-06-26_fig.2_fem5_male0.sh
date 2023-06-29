#!/bin/bash

#!!! adjust the time quota !!!

#SBATCH --time=02:00:00
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=5000
#SBATCH --cpus-per-task=16
#SBATCH --partition=single

datadir="/pfs/work7/workspace/scratch/fr_xl1011-data/evosexrole"
./bin/evorole --force param=2023-06-26_fig.2_fem5_male0.json rep=80 outdir=$datadir/2023-06-26_fig.2_fem5_male0

