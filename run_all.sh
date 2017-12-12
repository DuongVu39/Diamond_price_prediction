# This is the master script: run_all.sh
# Duong Vu, Dec 2017
# The purpose of this script is to run all the scripts needed and return a report stored in the results folder.
# The final report will be saved into a .pdf file in `results` folder.

# Usage: bash run_all.sh

# Load the library contained the raw data, clean up and export a new dataframe:
Rscript read_data.R ../data/diamonds_tiny.csv

# Initiate some visualizations decribing the data:
Rscript visualize.R ../data/diamonds_tiny.csv ../results/figure/color_price.png ../results/figure/cut_price.png ../results/figure/clarity_price.png ../results/figure/carat_price.png ../results/figure/corr.png

# Build a linear regression model between carat and color with regards to diamond price:
Rscript build_model.R ../data/diamonds_tiny.csv ../data/model.csv

# Export the report as a pdf file
Rscript -e "ezknitr::ezknit('src/report.Rmd', out_dir = 'results')"
