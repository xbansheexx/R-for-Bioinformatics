############################################################
# Function: Calculate the length of a protein sequence
############################################################

find_length <- function(seq) { 
  counter <- 0
# Convert string to characters
  chars <- unlist(strsplit(seq, "")) 
# Counts the number of characters in each sequence
  for (aa in chars) { 
    counter <- counter + 1
  }
# Return the count
  counter 
}

length <- find_length
sequence_lengths <- sapply(sequences, length)
print(sequence_lengths)

############################################################
# Function: Calculate hydrophobicity percentage
############################################################

hydrophobic_content <- function(seq) {
# Hydrophobic amino acids to check against
  hydrophobic_residues <- c("A","V","I","L","M","F","W","Y")
# Count how many characters in the sequence match hydrophobic residues 
  count <- sum(strsplit(seq, NULL)[[1]] %in% hydrophobic_residues)
# Return hydrophobic percentage using your custom length() function 
  return((count / length(seq)) * 100)
}
# Apply hydrophobicity calculation to all sequences
hydrophobic_percentages <- sapply(sequences, hydrophobic_content)
print(hydrophobic_percentages)

############################################################
# Function: Find maximum hydrophobicity value
############################################################

find_max <- function(hydrophobic_percentages) 
# Start with the first hydrophobicity value
  current_value <- hydrophobic_percentages[1]
# Loop through all values and update if a # Return the highest hydrophobicity value larger one is found
  for (value in hydrophobic_percentages) {
    if (value > current_value)
      current_value <- value
  }
 # Return the highest hydrophobicity value
  return(current_value)
}
# Print maximum hydrophobicity
print(find_max(hydrophobic_percentages))

############################################################
# Function: Calculate average hydrophobicity
############################################################

find_average <- function(values) {
 # Compute mean using sum() and your custom length()
  sum(values) / length(values)
}
# Print average hydrophobicity
find_average(hydrophobic_percentages)
