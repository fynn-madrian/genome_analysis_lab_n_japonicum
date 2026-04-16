#!/bin/bash
#SBATCH -A uppmax2026-1-61
#SBATCH -J polish_assembly
#SBATCH -t 12:00:00
#SBATCH -n 2

module load Pilon/1.24-Java-17
module load SAMtools/1.22.1-GCC-13.3.0

samtools index /proj/uppmax2026-1-61/nobackup/work/fynn/bam/output.sorted.bam
pilon --genome /gorilla/home/fynn/genome_project/data/genome_assembly/flye/assembly.fasta --frags /proj/uppmax2026-1-61/nobackup/work/fynn/bam/output.sorted.bam --outdir /gorilla/home/fynn/genome_project/data/genome_assembly/pilon/