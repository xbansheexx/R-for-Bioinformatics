############################################################
# Function: Find Mode
############################################################
//

############################################################
# Function: Find Median
############################################################
#Function
find_median <- function(numbers){
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
#Variables
disease_median <- find_median(meta_info$Age[meta_info$Disease_status == "Disease"])
control_median <- find_median(meta_info$Age[meta_info$Disease_status == "Control"])
#Output
print(paste("The median of 'Disease' is:",disease_median)) #56
print(paste("The median of 'Control' is:",control_median)) #67

############################################################
# Function: Find Mean
############################################################
#Function
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
#Variables
disease_mean <- find_mean(meta_info$Age[meta_info$Disease_status == "Disease"])
control_mean <- find_mean(meta_info$Age[meta_info$Disease_status == "Control"])
#Output
print(paste("The median of 'Disease' is:",disease_median)) #56
print(paste("The median of 'Control' is:",control_median)) #67

############################################################
# Function: Find Min
############################################################


############################################################
# Function: Find Max
############################################################



############################################################
# Function: Find Range
############################################################




############################################################
