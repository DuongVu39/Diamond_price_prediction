## This is the first script
# read_data.R
# Duong Vu, Dec 2017
#
# This script load the library `tidyverse` where it contains the data
# and clean up the file by selecting only neededvariables.
# Then it saves the new dataframe into a .csv file. 
#
# Usage: Rscript read_data.R ../data/diamonds_tiny.csv


# Step 1: read in command line arguments
args <- commandArgs(trailingOnly = TRUE)
output <- args[1]

# Step 2: load the library that contains the data
library(tidyverse)

## Step 3: looking at the table  
summary(diamonds)
head(diamonds)

## Step 4: Cleaning the data: 
# Take only the variables that I needs to build the model 
# and change the type of categorical variable into factor
diamonds_tiny <- diamonds %>% 
  select(carat, cut, color, clarity, price) %>% 
  mutate(color = as.factor(as.character(color)),
         cut = as.factor(as.character(cut)),
         clarity = as.factor(as.character(clarity)))
  
# Step 5: write and export it in the data folder
write.csv(diamonds_tiny, file = output, row.names = FALSE)
