# Driver script
# Duong Vu
# Dec 2017
#

# usage: make all

# run from top to bottom
all: report

# Load the library contained the raw data, clean up and export a new dataframe:
read_data: src/read_data.R data/diamonds_tiny.csv
	Rscript src/read_data.R data/diamonds_tiny.csv

# Initiate some visualizations decribing the data:
visualize: src/visualize.R read_data
	Rscript src/visualize.R data/diamonds_tiny.csv results/figure/color_price.png results/figure/cut_price.png results/figure/clarity_price.png results/figure/carat_price.png results/figure/corr.png

# Build a linear regression model between carat and color with regards to diamond price:
model: src/build_model.R read_data
	Rscript src/build_model.R data/diamonds_tiny.csv data/model.csv

# Export the report as a pdf file
report: src/report.Rmd visualize model
	Rscript -e "ezknitr::ezknit('src/report.Rmd', out_dir = 'doc')"


# Clean up intermediate files
clean:
	rm -f doc/*.pdf
	rm -f results/figure/*.png
	rm -f data/*.pdf
