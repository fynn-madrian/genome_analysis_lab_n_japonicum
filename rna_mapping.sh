#!/bin/bash -l
#SBATCH -A uppmax2026-1-61
#SBATCH -J rna_mapping
#SBATCH -c 4
#SBATCH -t 04:00:00

# Load modules
module load HISAT2/2.2.1-gompi-2024a
module load SAMtools/q1.22.1-GCC-13.3.0

# Paths — adjust to your actual locations
READS_DIR=/proj/uppmax2026-1-61/nobackup/work/fynn/trimmed_rna
GENOME=/home/fynn/genome_project/data/genome_assembly/pilon/pilon.fasta.masked
INDEX_DIR=/proj/uppmax2026-1-61/nobackup/work/fynn/hisat2_index
OUT_DIR=/proj/uppmax2026-1-61/nobackup/work/fynn/hisat2_alignments
THREADS=8

mkdir -p $INDEX_DIR $OUT_DIR

# Step 1: Build index (only if it doesn't already exist)
if [ ! -f ${INDEX_DIR}/njaponicum.1.ht2 ]; then
    echo "Building HISAT2 index..."
    hisat2-build -p $THREADS $GENOME ${INDEX_DIR}/njaponicum
fi

# Step 2: Loop through each sample, align, sort, index
SAMPLES=(Control_1 Control_2 Control_3 \
         Heat_treated_42_12h_1 Heat_treated_42_12h_2 Heat_treated_42_12h_3)

for SAMPLE in "${SAMPLES[@]}"; do
    echo "Aligning $SAMPLE..."
    hisat2 -x ${INDEX_DIR}/njaponicum \
           -1 ${READS_DIR}/${SAMPLE}_f1_paired.fastq.gz \
           -2 ${READS_DIR}/${SAMPLE}_r2_paired.fastq.gz \
           -p $THREADS \
           --summary-file ${OUT_DIR}/${SAMPLE}.summary.txt \
        | samtools sort -@ $THREADS -o ${OUT_DIR}/${SAMPLE}.sorted.bam -
    samtools index ${OUT_DIR}/${SAMPLE}.sorted.bam
done

echo "Done."