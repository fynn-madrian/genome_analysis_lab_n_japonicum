#!/bin/bash
#SBATCH -A uppmax2026-1-61
#SBATCH -J trim_rna
#SBATCH -t 12:00:00
#SBATCH -n 2

module load Trimmomatic/0.39-Java-17

#output dir /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed_rna

trimmomatic PE \
  /home/fynn/genome_project/data/raw/reads/transcriptomic_data/Control_1_f1.fq.gz /home/fynn/genome_project/data/raw/reads/transcriptomic_data/Control_1_r2.fq.gz \
  /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed_rna/Control_1_f1_paired.fastq.gz /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed_rna/Control_1_f1_unpaired.fastq.gz \
  /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed_rna/Control_1_r2_paired.fastq.gz /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed_rna/Control_1_r2_unpaired.fastq.gz \
  ILLUMINACLIP:/sw/arch/eb/software/Trimmomatic/0.39-Java-17/adapters/TruSeq3-PE-2.fa:2:30:10 \
  LEADING:3 \
  TRAILING:3 \
  SLIDINGWINDOW:4:15 \
  MINLEN:36

trimmomatic PE \
  /home/fynn/genome_project/data/raw/reads/transcriptomic_data/Control_2_f1.fq.gz /home/fynn/genome_project/data/raw/reads/transcriptomic_data/Control_2_r2.fq.gz \
  /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed_rna/Control_2_f1_paired.fastq.gz /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed_rna/Control_2_f1_unpaired.fastq.gz \
  /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed_rna/Control_2_r2_paired.fastq.gz /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed_rna/Control_2_r2_unpaired.fastq.gz \
  ILLUMINACLIP:/sw/arch/eb/software/Trimmomatic/0.39-Java-17/adapters/TruSeq3-PE-2.fa:2:30:10 \
  LEADING:3 \
  TRAILING:3 \
  SLIDINGWINDOW:4:15 \
  MINLEN:36

trimmomatic PE \
  /home/fynn/genome_project/data/raw/reads/transcriptomic_data/Control_3_f1.fq.gz /home/fynn/genome_project/data/raw/reads/transcriptomic_data/Control_3_r2.fq.gz \
  /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed_rna/Control_3_f1_paired.fastq.gz /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed_rna/Control_3_f1_unpaired.fastq.gz \
  /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed_rna/Control_3_r2_paired.fastq.gz /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed_rna/Control_3_r2_unpaired.fastq.gz \
  ILLUMINACLIP:/sw/arch/eb/software/Trimmomatic/0.39-Java-17/adapters/TruSeq3-PE-2.fa:2:30:10 \
  LEADING:3 \
  TRAILING:3 \
  SLIDINGWINDOW:4:15 \
  MINLEN:36

trimmomatic PE \
  /home/fynn/genome_project/data/raw/reads/transcriptomic_data/Heat_treated_42_12h_1_f1.fq.gz /home/fynn/genome_project/data/raw/reads/transcriptomic_data/Heat_treated_42_12h_1_r2.fq.gz \
  /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed_rna/Heat_treated_42_12h_1_f1_paired.fastq.gz /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed_rna/Heat_treated_42_12h_1_f1_unpaired.fastq.gz \
  /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed_rna/Heat_treated_42_12h_1_r2_paired.fastq.gz /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed_rna/Heat_treated_42_12h_1_r2_unpaired.fastq.gz \
  ILLUMINACLIP:/sw/arch/eb/software/Trimmomatic/0.39-Java-17/adapters/TruSeq3-PE-2.fa:2:30:10 \
  LEADING:3 \
  TRAILING:3 \
  SLIDINGWINDOW:4:15 \
  MINLEN:36

trimmomatic PE \
  /home/fynn/genome_project/data/raw/reads/transcriptomic_data/Heat_treated_42_12h_2_f1.fq.gz /home/fynn/genome_project/data/raw/reads/transcriptomic_data/Heat_treated_42_12h_2_r2.fq.gz \
  /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed_rna/Heat_treated_42_12h_2_f1_paired.fastq.gz /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed_rna/Heat_treated_42_12h_2_f1_unpaired.fastq.gz \
  /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed_rna/Heat_treated_42_12h_2_r2_paired.fastq.gz /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed_rna/Heat_treated_42_12h_2_r2_unpaired.fastq.gz \
  ILLUMINACLIP:/sw/arch/eb/software/Trimmomatic/0.39-Java-17/adapters/TruSeq3-PE-2.fa:2:30:10 \
  LEADING:3 \
  TRAILING:3 \
  SLIDINGWINDOW:4:15 \
  MINLEN:36

trimmomatic PE \
  /home/fynn/genome_project/data/raw/reads/transcriptomic_data/Heat_treated_42_12h_3_f1.fq.gz /home/fynn/genome_project/data/raw/reads/transcriptomic_data/Heat_treated_42_12h_3_r2.fq.gz \
  /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed_rna/Heat_treated_42_12h_3_f1_paired.fastq.gz /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed_rna/Heat_treated_42_12h_3_f1_unpaired.fastq.gz \
  /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed_rna/Heat_treated_42_12h_3_r2_paired.fastq.gz /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed_rna/Heat_treated_42_12h_3_r2_unpaired.fastq.gz \
  ILLUMINACLIP:/sw/arch/eb/software/Trimmomatic/0.39-Java-17/adapters/TruSeq3-PE-2.fa:2:30:10 \
  LEADING:3 \
  TRAILING:3 \
  SLIDINGWINDOW:4:15 \
  MINLEN:36