############################################################
# Function: Find Mode
############################################################
find_mode <- function(numbers){
  counts <- table(numbers)   
  max_count <- max(counts) # Identify the highest frequency
  
  # Extract the value(s) that appear the most
  modes <- as.numeric(names(counts[counts == max_count]))
  return(modes)
}
############################################################
# Function: Find Median
############################################################
#Function
find_median <- function(numbers){
  sorted <- sort(numbers) # Sorts numbers in ascending order
  count <- length(sorted)
 
  if(count %% 2 != 0) {
  # If Odd
    result <- sorted[(count + 1) / 2]
  } else {
  # If Even
    result <- (sorted[count/2] + sorted[count/2 + 1]) / 2
  }
  return(result)
}
############################################################
# Function: Find Mean
############################################################
find_mean <- function(numbers){
  sorted <- sort(numbers) #Sorts numbers in ascending order
  count <- length(sorted)
 
  if(count %% 2 != 0) {
  # If Odd
    result <- sorted[(count + 1) / 2]
  } else {
  # If Even
    result <- (sorted[count/2] + sorted[count/2 + 1]) / 2
  }
  return(result)
}

############################################################
# Function: Find Min
############################################################
find_min <- function(numbers) {
    current <- numbers[1]
    for (value in numbers) {
      if (value < current)
        current <- value
    }
    current
  }
############################################################
# Function: Find Max
############################################################
  find_max <- function(numbers) {
    current <- numbers[1]
    for (value in numbers) {
      if (value > current)
        current <- value
    }
    current
  }
############################################################
# Function: Find Range
############################################################
find_range <- function(numbers) {
# Subtract minimum value from maximum value
   return(find_max(numbers) - find_min(numbers))
