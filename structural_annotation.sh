#!/bin/bash
#SBATCH -A uppmax2026-1-61
#SBATCH -J structural_annotation
#SBATCH -t 12:00:00
#SBATCH -c 4
#SBATCH --mem=100G

module load BRAKER/3.0.8-foss-2024a
module load GeneMark-ET/4.72-GCCcore-13.3.0

braker.pl \
    --species=n_japonicum \
    --genome=/home/fynn/genome_project/data/genome_assembly/pilon/pilon.fasta.masked \
    --bam=/proj/uppmax2026-1-61/nobackup/work/fynn/hisat2_alignments/Control_1.sorted.bam,/proj/uppmax2026-1-61/nobackup/work/fynn/hisat2_alignments/Control_2.sorted.bam,/proj/uppmax2026-1-61/nobackup/work/fynn/hisat2_alignments/Control_3.sorted.bam,/proj/uppmax2026-1-61/nobackup/work/fynn/hisat2_alignments/Heat_treated_42_12h_1.sorted.bam,/proj/uppmax2026-1-61/nobackup/work/fynn/hisat2_alignments/Heat_treated_42_12h_2.sorted.bam,/proj/uppmax2026-1-61/nobackup/work/fynn/hisat2_alignments/Heat_treated_42_12h_3.sorted.bam \
    --softmasking \
    --threads=4 \
    --workingdir=/home/fynn/genome_project/braker \

echo "Structural annotation completed successfully."