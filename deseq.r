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
vsd <- vst(dds, blind = TRUE)
plotPCA(vsd, intgroup = "condition")
res_df <- as.data.frame(res)
res_df$gene <- rownames(res_df)

# Manually label only the HSPs
res_df$label <- ""
res_df$label[res_df$gene == "g348"] <- "HSP70"
res_df$label[res_df$gene == "g2025"] <- "HSP60"

rownames(res_df) <- res_df$gene

library(EnhancedVolcano)
EnhancedVolcano(
    res_df,
    lab = res_df$label,
    selectLab = c("HSP70", "HSP60"),
    x = "log2FoldChange",
    y = "padj",
    pCutoff = 0.05,
    FCcutoff = 1,
    title = "Heat vs Control",
    subtitle = NULL,
    caption = NULL,
    pointSize = 1.8,
    labSize = 4.5,
    drawConnectors = TRUE,
    widthConnectors = 0.5,
    boxedLabels = TRUE,
    colAlpha = 0.6,
    legendPosition = "top",
    legendLabSize = 11,
    axisLabSize = 12
)
