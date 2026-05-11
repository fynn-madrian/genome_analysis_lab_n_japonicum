#!/bin/bash
#SBATCH -A uppmax2026-1-61
#SBATCH -J assembly_evaluation
#SBATCH -t 30:00


module load BUSCO/5.8.2-gfbf-2024a
module load QUAST/5.3.0-gfbf-2024a

quast.py /home/fynn/genome_project/data/genome_assembly/pilon/pilon.fasta --gene-finding -o /home/fynn/genome_project/analysis/04_assembly_evaluation/quast/
busco -i /home/fynn/genome_project/data/genome_assembly/pilon/pilon.fasta --mode genome -o /home/fynn/genome_project/analysis/04_assembly_evaluation/busco/