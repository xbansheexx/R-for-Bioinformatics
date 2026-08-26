############################################################
# Class: Gene
############################################################

setClass("Gene",
  slots = list(
    gene_name  = "character",  # Name of the gene
    length     = "numeric",    # Gene length in bases
    expression = "numeric"     # Expression level
  )
)
############################################################
# Instantiate Gene object
############################################################

gene <- new("Gene",
  gene_name  = "Hfe",   # Gene name
  length     = 1008,    # Length in bases
  expression = 8.5      # Expression level
)

gene  # Display the object

############################################################
# Generic: average_expression
############################################################

setGeneric("average_expression", function(object) {
  standardGeneric("average_expression")  # Dispatch to appropriate method
})

############################################################
# Method: average_expression for Gene
############################################################

setMethod("average_expression", "Gene", function(object) {
  # Calculate expression per base
  paste(object@expression / object@length)
})
========================================================================================================================

showMethods("average_expression")  # Display available methods
average_expression(gene)           # Compute average expression per base
