#!/bin/bash
#SBATCH -A uppmax2026-1-61
#SBATCH -J feature_counts
#SBATCH -t 12:00:00

#use aligned rna and .gff to map and count
module load Subread/2.1.1-GCC-13.3.0


featureCounts -a /home/fynn/genome_project/braker/braker.gtf -o feature_counts.txt -T 1 -p -B -C /proj/uppmax2026-1-61/nobackup/work/fynn/hisat2_alignments/Control_1.sorted.bam \
              /proj/uppmax2026-1-61/nobackup/work/fynn/hisat2_alignments/Control_2.sorted.bam \
              /proj/uppmax2026-1-61/nobackup/work/fynn/hisat2_alignments/Control_3.sorted.bam \
              /proj/uppmax2026-1-61/nobackup/work/fynn/hisat2_alignments/Heat_treated_42_12h_1.sorted.bam \
              /proj/uppmax2026-1-61/nobackup/work/fynn/hisat2_alignments/Heat_treated_42_12h_2.sorted.bam \
              /proj/uppmax2026-1-61/nobackup/work/fynn/hisat2_alignments/Heat_treated_42_12h_3.sorted.bam