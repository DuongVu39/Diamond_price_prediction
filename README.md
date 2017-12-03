## Diamond Price Prediction

![teenager_money](/doc/img/dia.jpg)

Looking at the data of diamond with 10 features, I want to build a model to predict the diamond price base on its features.

1. The dataset that I am using for this project is a dataset of almost 54,000 diamonds, a provided dataset from `ggplot2`.
2. With this dataset, I'm particularly interested in the how the price of diamond is determined based on the combination of four variable: carat, cut quality, color and clarity.
3. My hypothesis is that: "Which factors influance the diamond price?"
4. For this question, I will only use the information from 5 columns: price, carat, cut quality, color and clarity. The rest of the information can be dropped out of the data. Before doing any analysis, some visualization to show the price by carat, cut quality, color and clarity will be nice to look at. Then I will split the data into training set and validation set and use linear model to guess the relation between four categories with the response variable (price) and test it with the validation set. 

