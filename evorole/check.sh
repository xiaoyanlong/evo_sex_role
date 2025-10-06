#!/bin/bash

#!!! adjust the time quota !!!

#SBATCH --time=00:20:00
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=1000
#SBATCH --cpus-per-task=16

datadir="//scratch/$(whoami)"
./bin/evorole --force param=param.json rep=5 outdir=$datadir/check


