## Diamond Price Prediction

by Duong Vu, Dec 5, 2017

![teenager_money](/doc/img/dia.jpg)

## Preface

Looking at the data of diamond with 10 features, I want to build a model to predict the diamond price base on its features.

1. The dataset that I am using for this project is a dataset of almost 54,000 diamonds, a provided dataset from `ggplot2`.
2. With this dataset, I'm particularly interested in the how the price of diamond is determined based on the factor `carat` and `clarity`and if possible, the combination of four variable: carat, cut quality, color and clarity.
3. My main question is that: " Is there any relationship between carat and color in the diamond price?" so the hypothesis will be focus on: "Whether there is a linear correlation between carat and color of diamond?"
4. For this question, I will only use the information from 5 columns: price, carat, cut quality, color and clarity. The rest of the information can be dropped out of the data. Before doing any analysis, some visualization to show the price by carat, cut quality, color and clarity will be nice to look at. Then I will split the data into training set and validation set and use linear model to guess the relation between four categories with the response variable (price) and test it with the validation set. 






## Project dependencies:

- R
- RStudio
- R packages:
- `packrat` (or `png`, `grid` and `gridExtra`)
- ​