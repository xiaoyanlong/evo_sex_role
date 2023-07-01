#!/bin/bash

#!!! adjust the time quota !!!

#SBATCH --time=03:00:00
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=5000
#SBATCH --cpus-per-task=16
#SBATCH --partition=single

datadir="/pfs/work7/workspace/scratch/fr_xl1011-data/evosexrole"
./bin/evorole --force param=2023-07-01_fig.2_pcfem0.0075_pcmale0.0025_bothCare5.json rep=100 outdir=$datadir/2023-07-01_fig.2_pcfem0.0075_pcmale0.0025_bothCare5

