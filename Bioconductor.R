############################################################
# Packages
############################################################
library(readr) #reads data files.
library(GEOquery) #Gene Expression Omnibus (GEO).
library(tidyverse) #Collection of packages.
library(tidyr) #Data reshaping.
library(dplyr) #Data manipulation tools.
library(ggplot2) #High-quality visuals.

############################################################
# Files
############################################################
series_file <- read_csv("filepath.txt", skip = 83)
meta_file <- read_csv("filepath.txt")

############################################################
# Data Cleaning  (E.g. Age)
############################################################
meta_file$Age<- as.numeric(as.character(GSE9476_meta$Age))
meta_file <-meta_file %>% fill(Age, .direction = "up") # Replaces missing values.
series_file <- series_file %>% rename_at('ID_REF', ~ 'Gene')  # Renames column
series_file <- series_file %>% filter(row_number() <= n()-1  #Removes the last row

############################################################
# Pivot table
############################################################
joined_file <- series_file %>% pivot_longer(   
  # Wide to lnmg format
  cols = -c(Gene),
  names_to = "SampleID",  #Genes.
  values_to = "Gene_expression"  #Gene expression.
)
expression_file <- meta, GSE9476_new, by = "SampleID")  # First column.
                                 
========================================================================================================================
# disease vs control
control_count <-sum(meta_file$Disease_status == "Control")
disease_count <- sum(meta_file$Disease_status == "AML")
paste("Control:",control_count)
paste("AML:",disease_count)
#Genes
gene_count<- nrow(series_file)
paste("Gene count:", gene_count)


















