################################################################################
# Plot helpers: list and determine gene "types"
################################################################################
gene_types <- function(){
  c("auto", "arrows", "blocks", "bars", "points", "side_blocks",
    "side_bars", "side_points")
}
auto_gene_type <- function(n_genes){
  if (max(n_genes) > 1000){
    gene_type <- "side_bars"
  } else if (max(n_genes) > 100) {
    gene_type <- "side_blocks"
  } else {
    gene_type <- "side_bars"
  }
  gene_type
}