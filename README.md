# AIT_664_Varun_Assignment
Prediction of house price using the Regression and Classification models using "R"

FOR LINEAR REGRESSION.
 
Loading Libraries and Data: I loaded the necessary libraries (tidyverse, ggplot2) and read the housing dataset from the specified path.

Scatter Plot with Linear Regression: I created a scatter plot showing the relationship between median_income and median_house_value. The plot revealed a positive correlation, and I added a linear regression line to illustrate this relationship.

Fitting Linear Regression Model: I fitted a linear regression model, resulting in an R-squared value of 0.4734, indicating that the model explains about 47.34% of the variance in house values. I added residuals and predicted values to the dataframe for further analysis.

Made Predictions: Using sample median_income values of 2.5, 4.0, 6.0, and 8.0, the model predicted corresponding house values.

FOR LOGISTIC REGRESSION (CLASSIFICATION MODEL)

Categorizing House Prices: I calculated the median house price and created a new column (price_category) to classify houses as "High"  or "Low" , converting this column to a factor for classification.

Splitting Data and Fitting Logistic Model: I split the dataset into training (70%) and testing (30%) sets and built a logistic regression model using median_income, total_rooms, total_bedrooms, and population as predictors.

CONCLUSION

The logistic regression model showed statistically significant predictors, effectively distinguishing between "High" and "Low" price categories, while the linear regression model explained only 47.34% of the variance, highlighting its limitations for predicting individual house prices based solely on income.
