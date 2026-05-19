library(DESeq2)

reference_path <- "/Users/fynnmadrian/Downloads/pilon/pilon.fasta"
braker_path <- "/Users/fynnmadrian/Downloads/braker.gff3"
feature_counts_path <- "/Users/fynnmadrian/Downloads/feature_counts.txt"

cts <- read.table(
    feature_counts_path,
    header = TRUE,
    sep = "\t",
    skip = 1,
    check.names = FALSE
)

rownames(cts) <- cts$Geneid
cts <- as.matrix(cts[, -(1:6)])


colnames(cts) <- c(
    "Control_1",
    "Control_2",
    "Control_3",
    "Heat_1",
    "Heat_2",
    "Heat_3"
)


coldata <- data.frame(
    condition = factor(
        c("Control", "Control", "Control", "Heat", "Heat", "Heat"),
        levels = c("Control", "Heat")
    ),
    row.names = colnames(cts)
)


dds <- DESeqDataSetFromMatrix(
    countData = cts,
    colData = coldata,
    design = ~condition
)
dds <- DESeq(dds)
resultsNames(dds)

res <- lfcShrink(dds, coef = "condition_Heat_vs_Control", type = "apeglm")

library(EnhancedVolcano)

EnhancedVolcano(
    res,
    lab = rownames(res),
    x = "log2FoldChange",
    y = "padj",
    pCutoff = 0.05,
    FCcutoff = 1,
    title = "Heat vs Control",
    pointSize = 2,
    labSize = 3
)
