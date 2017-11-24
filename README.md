## Diamond Price Prediction

![teenager_money](/doc/img/dia.jpg)

Looking at the data of diamond with 10 features including price, I want to build a model to predict the diamond price base on its color and clarity only.

1. The dataset that I am using for this project is from a "young people survey" dataset of the [Kaggle website](https://www.kaggle.com).

2. With this dataset, I'm particularly interested in the spending habit difference between genders.

3. My hypothesis is that women are more likely to spend money than men.

4. For this question, I will only use the information from column `Gender` and all columns related to spending. For a better view of the data, I may use the boxplot or scatterplot to see the differences in spending habit between genders. There are several steps I could do to clean the data:

   - A new table containing all the needed data should be create, so I can eliminate all the unused factors.
   - Since each question's response gives a rate from 1 to 5, an answer of 3 or more would be categorized as likely and less than 3 will be unlikely.  From this divided, I can simplify all the response into 1 and 0 as likely and not likely.

   After cleaning the data, I can use permutation method to create a sampling distribution from the sample and perform a hypothesis test to test my question.