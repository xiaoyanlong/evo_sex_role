#!/bin/bash

#!!! adjust the time quota !!!

#SBATCH --time=24:00:00
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=8000
#SBATCH --cpus-per-task=16
#SBATCH --partition=single

datadir="/pfs/work7/workspace/scratch/fr_xl1011-data/evosexrole"
./bin/evorole --force param=2023-06-12_premating_original_mu0.0_premale2.json rep=10 outdir=$datadir/2023-06-12_premating_original_mu0.0_premale2_9

