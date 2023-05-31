#!/bin/bash

#!!! adjust the time quota !!!

#SBATCH --time=25:00:00
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=2000
#SBATCH --cpus-per-task=16
#SBATCH --partition=single

datadir="/pfs/work7/workspace/scratch/fr_xl1011-data/evosexrole"
./bin/evorole --force param=2023-05-31_premating_initial_fel20_male1_m0.0_premale2.json rep=100 outdir=$datadir/2023-05-31_premating_initial_fel20_male1_m0.0_premale2

