#!/bin/bash
#SBATCH -A uppmax2026-1-61
#SBATCH -J trim_illumina
#SBATCH -t 2:00:00

module load Trimmomatic/0.39-Java-17

#output dir /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed
trimmomatic PE \
  ../data/raw/reads/genomics_chr3_data/chr3_illumina_R1.fastq.gz ../data/raw/reads/genomics_chr3_data/chr3_illumina_R2.fastq.gz \
  /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed/chr3_illumina_R1_paired.fastq.gz /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed/chr3_illumina_R1_unpaired.fastq.gz \
  /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed/chr3_illumina_R2_paired.fastq.gz /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed/chr3_illumina_R2_unpaired.fastq.gz \
  ILLUMINACLIP:/sw/arch/eb/software/Trimmomatic/0.39-Java-17/adapters/TruSeq3-PE-2.fa:2:30:10 \
  LEADING:3 \
  TRAILING:3 \
  SLIDINGWINDOW:4:15 \
  MINLEN:36