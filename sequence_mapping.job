#!/bin/bash
#SBATCH -A uppmax2026-1-61
#SBATCH -J sequence_mapping
#SBATCH -t 1:00:00
#SBATCH -n 2

module load BWA/0.7.19-GCCcore-13.3.0
module load SAMtools/1.22.1-GCC-13.3.0

bwa index /gorilla/home/fynn/genome_project/data/genome_assembly/flye/assembly.fasta

bwa mem -t 2 \
    /gorilla/home/fynn/genome_project/data/genome_assembly/flye/assembly.fasta \
    /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed/chr3_illumina_R1_paired.fastq.gz \
    /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed/chr3_illumina_R2_paired.fastq.gz \
    | samtools sort -o /proj/uppmax2026-1-61/nobackup/work/fynn/bam/output.sorted.bam