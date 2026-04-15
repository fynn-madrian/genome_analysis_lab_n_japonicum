#!/bin/bash
#SBATCH -A uppmax2026-1-61
#SBATCH -J quality_control
#SBATCH -t 15:00


echo USER = $USER
echo QOS = $SLURM_JOB_QOS
cat $0

module load FastQC/0.12.1-Java-17
#data/raw/reads/genomics_chr3_data
#data/raw/reads/transcriptomic_data

fastqc ../data/raw/reads/genomics_chr3_data/chr3_illumina_* -o ../analysis/01_preprocessing/raw_qc