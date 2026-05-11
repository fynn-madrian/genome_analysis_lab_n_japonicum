#!/bin/bash
#SBATCH -A uppmax2026-1-61
#SBATCH -J flye_assembly
#SBATCH -t 5:00:00
#SBATCH -n 16

module load Flye/2.9.6-GCC-13.3.0

flye --nano-raw ../data/raw/reads/genomics_chr3_data/chr3_clean_nanopore.fq.gz \
     --out-dir ../data/genome_assembly/flye \
     --threads 16 \
     --genome-size 14m