#!/bin/bash

#!!! adjust the time quota !!!

#SBATCH --time=20:00:00
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=8000
#SBATCH --cpus-per-task=16
#SBATCH --partition=multiple
#SBATCH --array=1-10:1

datadir="/pfs/work7/workspace/scratch/fr_xl1011-data/evosexrole"
./bin/evorole --force param=2023-06-12_premating_original_mu0.005_premale4.json rep=10 outdir=$datadir/2023-06-12_premating_original_mu0.005_premale4_${SLURM_ARRAY_TASK_ID}

