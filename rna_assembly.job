#!/bin/bash
#SBATCH -A uppmax2026-1-61
#SBATCH -J rna_assembly
#SBATCH -t 12:00:00
#SBATCH -c 4
#SBATCH --mem=100G

#run hisat2, rerun repeatmask soft, swap trinity for something else, Braker3, slack for eggnog path

module load Trinity/2.15.2-foss-2024a-Java-17

RNA_DIR="/proj/uppmax2026-1-61/nobackup/work/fynn/trimmed_rna"
OUT_DIR="/proj/uppmax2026-1-61/nobackup/work/fynn/trinity_out_dir"

LEFT=""
RIGHT=""

for f1 in "$RNA_DIR"/*_f1_paired.fastq.gz; do
    r2="${f1/_f1_paired/_r2_paired}"

    LEFT="${LEFT:+$LEFT,}$f1"
    RIGHT="${RIGHT:+$RIGHT,}$r2"
done

echo "LEFT:  $LEFT"
echo "RIGHT: $RIGHT"

Trinity --seqType fq \
        --max_memory 100G \
        --CPU 4 \
        --left "$LEFT" \
        --right "$RIGHT" \
        --output "$OUT_DIR"