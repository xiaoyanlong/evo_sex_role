#!/bin/bash

#!!! adjust the time quota !!!

#SBATCH --time=01:00:00
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=2000
#SBATCH --cpus-per-task=16
#SBATCH --partition=single
#SBATCH --array=1-5:1
#SBATCH -o slurm.%N.%J.%u.%a.out # STDOUT

datadir="/pfs/work7/workspace/scratch/fr_xl1011-data/evosexrole"
./bin/evorole --force param=2023-06-12_premating_original_mu0.0_prefemale0.json rep=20 outdir=$datadir/2023-06-12_premating_original_mu0.0_prefemale0_${SLURM_ARRAY_TASK_ID}

