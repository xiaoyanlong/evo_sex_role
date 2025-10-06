#!/bin/bash

#!!! adjust the time quota !!!

#SBATCH --time=23:00:00
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=8000
#SBATCH --cpus-per-task=16

load_latest_gcc() {
    latest_gcc=$(module avail gcc 2>&1 | grep -o 'gcc/[0-9.]*' | sort -V | tail -n 1)
    if [ -n "$latest_gcc" ]; then
        module load "$latest_gcc"
        echo "Loaded the latest GCC module: $latest_gcc"
    else
        echo "No GCC modules found."
    fi
}

datadir="//scratch/$(whoami)"
./bin/evorole --force param=2025-10-06_highD.json rep=5 outdir=$datadir/2025-10-06_highD
