## This is the second script
# visualize.R
# Duong Vu, Dec 2017
#
# This script reads the clean-up data exported by the read_data.R
# Then it plots some initial visulization of the relationship between variables
# All the plots will be saved into .png file in src/figure folder. 
#
# Usage: 
# Rscript visualize.R ../data/diamonds_tiny.csv ../results/figure/color_price.png ../results/figure/cut_price.png ../results/figure/clarity_price.png ../results/figure/carat_price.png ../results/figure/corr.png 


# Step 1: read in command line arguments
args <- commandArgs(trailingOnly = TRUE)
input <- args[1]
color_price <- args[2]
cut_price <- args[3]
clarity_price <- args[4]
carat_price <- args[5]
corr <- args[6]

# Step 2: load the library that contains the data
library(tidyverse)

# Step 3: read the new data from "../data/diamonds_tiny.csv"
diamonds_tiny <- read.csv(input, header = TRUE)
head(diamonds_tiny)

## Step 4: Including Plots for exploration:

# Looking at the dataset and the relationship 
# between Price and color
p1 <- ggplot(diamonds_tiny, aes(color, price)) +
  geom_jitter(alpha = 0.5,color = "Orange") +
  geom_violin(fill = "pink") +
  labs(x = "Color type", y = "Price")

# between Price and cut
p2 <- ggplot(diamonds_tiny, aes(cut, price)) +
  geom_jitter(alpha = 0.5,color = "Orange") +
  geom_violin(fill = "pink") +
  labs(x = "Cut", y = "Price")

# between Price and clarity
p3 <- ggplot(diamonds, aes(clarity, price)) +
  geom_jitter(alpha = 0.5,color = "Orange") +
  geom_violin(fill = "pink") +
  labs(x = "Clarity", y = "Price")

# between Price and carat
p4 <- ggplot(diamonds, aes(carat, price)) +
  geom_point(alpha = 0.5, color = "orange") +
  geom_smooth(color = "blue") +
  labs(x = "Carat")

# Check the correlation between variables:
p5 <- GGally::ggpairs(diamonds_tiny)

# Step 5: Saving all the plots:

# "../results/figure/color_price.png"
ggsave(color_price, plot = p1)

# "../results/figure/cut_price.png"
ggsave(cut_price, plot = p2)

# "../results/figure/clarity_price.png"
ggsave(clarity_price, plot = p3)

# "../results/figure/carat_price.png"
ggsave(carat_price, plot = p4)

# "../results/figure/corr.png"
ggsave(corr, plot = p5)