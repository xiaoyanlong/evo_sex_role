#!/bin/bash

#!!! adjust the time quota !!!

#SBATCH --time=30:00:00
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=5000
#SBATCH --cpus-per-task=16
#SBATCH --partition=single

datadir="/pfs/work7/workspace/scratch/fr_xl1011-data/evosexrole"
./bin/evorole --force param=2023-06-26_premating_fem10_male5_u0.002_prefemale3.json rep=20 outdir=$datadir/2023-06-26_premating_fem10_male5_u0.002_prefemale3_1

