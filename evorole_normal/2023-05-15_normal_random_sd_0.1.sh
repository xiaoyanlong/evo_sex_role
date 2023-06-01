#!/bin/bash

#!!! adjust the time quota !!!

#SBATCH --time=24:00:00
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=8000
#SBATCH --cpus-per-task=16
#SBATCH --partition=single

datadir="/pfs/work7/workspace/scratch/fr_xl1011-data/evosexrole_normal"
./bin/evorole --force param=2023-05-15_normal_random_sd_0.1.json rep=20 outdir=$datadir/2023-05-15_normal_random_sd_0.1
