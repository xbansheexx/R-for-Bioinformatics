############################################################
# Function:Median
############################################################

median <-meta_info %>%
  group_by(Disease_status)%>% 
  summarise(median = median(Age))
print(median)

############################################################
# Function:Mean
############################################################

mean_age <-meta_info %>%
  group_by(Disease_status)%>% 
  summarise(average_age = mean(Age))
print(mean_age)
