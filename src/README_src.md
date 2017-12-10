## Diamond Price Prediction

by Duong Vu, Nov 23, 2017

Last update: Dec 10, 2017.

### Source folder documentation

There are 4 scripts in this folder:

1. read_data.R

   Usage: Open a bash shell and type

   ```
   Rscript read_data.R ../data/diamonds_tiny.csv
   ```

   This first script load the library `tidyverse` where it contains the data and clean up the file by selecting only needed variables. Then it saves the new dataframe into a .csv file in `data` folder.

   ​

2. visualize.R

   Usage: Open a bash shell and type

   ```
   Rscript visualize.R ../data/diamonds_tiny.csv ../results/figure/color_price.png ../results/figure/cut_price.png ../results/figure/clarity_price.png ../results/figure/carat_price.png ../results/figure/corr.png
   ```

   This script reads the clean-up data exported by the read_data.R above, then it plots some initial visualization of the relationship between variables. All the plots will be saved into .png file in `src/figure `folder. 

   ​

3. build_model.R

   Usage: Open a bash shell and type

   ```
   Rscript build_model.R ../data/model.csv
   ```

   This script reads the clean-up data exported by the read_data.R above, and fits the data into a linear model. The 2 variables used for the hypothesis are: carat and color. Then it saves the result into a .csv file of `data` folder.

   ​

4. report.R

   Usage: Open a bash shell and type

```
Rscript -e "ezknitr::ezknit('src/report.Rmd', out_dir = 'results')"
```

​	The purpose of this script is to create a report.  

This script reads the clean-up data exported by the read_data.R, includes some visulizations of the relationship between variables and shows the result table of the model.R script.          

The final report will be saved into a .pdf file in `results` folder. 