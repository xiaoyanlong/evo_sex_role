#!/bin/bash

#!!! adjust the time quota !!!

#SBATCH --time=01:00:00
#SBATCH --ntasks=1
#SBATCH --mem=1000
#SBATCH --cpus-per-task=16
#SBATCH --partition=dev_multiple

datadir="/home/fr/fr_fr/fr_xl1011/evo_sex_role/evorole"
./bin/evorole --force param=param.json rep=10 outdir=$datadir/data

