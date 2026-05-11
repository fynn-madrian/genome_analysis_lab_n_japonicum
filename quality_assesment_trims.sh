#!/bin/bash
#SBATCH -A uppmax2026-1-61
#SBATCH -J quality_control
#SBATCH -t 15:00


echo USER = $USER
echo QOS = $SLURM_JOB_QOS
cat $0

module load FastQC/0.12.1-Java-17

fastqc /proj/uppmax2026-1-61/nobackup/work/fynn/trimmed/* -o ../analysis/01_preprocessing/trimmed_qc