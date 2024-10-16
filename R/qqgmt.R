#' qqgmt
#'
#' @param gene_file a list of your interest genes
#' @param gene_set_name your interest gene set name
#' @param description whatever
#'
#' @return your interest gmt file
#' @export
#'
#' @examples
#' qqgmt("2022minor_ZGA_genes.xlsx", "Minor ZGA genes(Chunxia,2022)", "NA")
qqgmt <- function(gene_file, gene_set_name, description) {
  library(openxlsx)
  gene_list <- read.xlsx(gene_file)$gene
  output_file <- sub("\\.xlsx$", ".gmt", gene_file)  # 修改输出文件名
  gmt_line <- paste(c(gene_set_name, description, gene_list), collapse = "\t")
  write(gmt_line, file = output_file)
  cat("GMT file written to", output_file, "\n")
}

# 使用示例
# qqgmt("2022minor_ZGA_genes.xlsx", "Minor ZGA genes(Chunxia,2022)", "NA")
