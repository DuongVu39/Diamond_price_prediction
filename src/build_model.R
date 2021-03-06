## This is the third script
# build_model.R
# Duong Vu, Dec 2017
#
# This script reads the clean-up data exported by the read_data.R
# and fits the data into a linear model.
# The 2 variables used for the hypothesis are: carat and color
# Then it saves the result into a .csv file. 
#
# Usage: Rscript build_model.R ../data/diamonds_tiny.csv ../data/model.csv


# Step 1: read in command line arguments
args <- commandArgs(trailingOnly = TRUE)
input <- args[1]
output <- args[2]

# Step 2: load the library that contains the data and import the new dataset
library(tidyverse)
diamonds_tiny <- read.csv(input)

# Build the model

summary(lm(price~carat*color, data = diamonds_tiny))

lm_model <- broom::tidy(lm(price~carat*color, data = diamonds_tiny))

# Exporting the result in the table
write.csv(lm_model, file = output, row.names = FALSE)