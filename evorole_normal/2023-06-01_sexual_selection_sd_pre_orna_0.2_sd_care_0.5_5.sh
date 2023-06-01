#!/bin/bash

#!!! adjust the time quota !!!

#SBATCH --time=24:00:00
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=8000
#SBATCH --cpus-per-task=16
#SBATCH --partition=single

datadir="/pfs/work7/workspace/scratch/fr_xl1011-data/evosexrole_normal"
./bin/evorole --force param=2023-06-01_sexual_selection_sd_pre_orna_0.2_sd_care_0.5.json rep=2 outdir=$datadir/2023-06-01_sexual_selection_sd_pre_orna_0.2_sd_care_0.5_5

