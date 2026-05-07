#!/bin/bash
#SBATCH -A uppmax2026-1-61
#SBATCH -J functional_annotation
#SBATCH -t 8:00:00
#SBATCH -n 2
#SBATCH --mem=64G

module load eggnog-mapper/2.1.13-gfbf-2024a

path_to_db=/sw/data/eggNOG/5.0.0/rackham/
input_fasta=/home/fynn/genome_project/braker/braker.aa

emapper.py -i $input_fasta --output functional_annotation --cpu 2 --data_dir $path_to_db --dbmem --resume
