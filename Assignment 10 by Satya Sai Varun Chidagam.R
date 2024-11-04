

library(tidyverse)
library(ggplot2)

# Here I am Loading the data
df <- read.csv("C:/Users/varun/Downloads/housing.csv")  # Adjusted path to match the uploaded file location

# In this step I am Plotting a Scatter plot with a linear regression line
ggplot(df, aes(x = median_income, y = median_house_value)) +
  geom_point(alpha = 0.5) +                      # Scatter plot with transparency
  geom_smooth(method = 'lm', se = FALSE, color = "blue") +  # Linear regression line
  labs(title = "House Prices vs. Income", x = "Median Income", y = "Median House Value")

# Here I am Fittingn the linear regression model by using the median house value and median income
model <- lm(median_house_value ~ median_income, data = df)
summary(model)  # Display model summary with R-squared and p-values

# Here I am Adding residuals and predicted values to the housing data set
df$residuals <- model$residuals
df$predicted <- model$fitted.values

# View the modified data frame (optional)
head(df)  # Check the first few rows of df with residuals and predictions
##########################################################################################

#At this step I am taking some  Sample median income values for prediction.
new_data <- data.frame(median_income = c(2.5, 4.0, 6.0, 8.0))  
predicted_values <- predict(model, newdata = new_data)
results <- cbind(new_data, predicted_house_value = predicted_values)
print(results)

# *******************************************************************************************************
  
#Classification Model using Logistic Regression
  
# Load necessary libraries
library(tidyverse)


# Loading the data
df <- read.csv("C:/Users/varun/Downloads/housing.csv")  # Adjust the path to match your setup

# Calculating the median house price
median_price <- median(df$median_house_value)

# Printing the median price
print(paste("Median House Price:", median_price))

# Creating a new column to categorize house prices by meadian valuse as hight or low
df <- df %>%
  mutate(price_category = ifelse(median_house_value >= median_price, "High", "Low"))

# Converting price_category to a factor
df$price_category <- as.factor(df$price_category)

# Set seed for reproducibility
set.seed(1234)

# Splitting the data into training and testing sets (70% train, 30% test)
cat <- sample(2, nrow(df), replace = TRUE, prob = c(0.7, 0.3))
train.data <- df[cat == 1, ]
test.data <- df[cat == 2, ]

# Building the logistic regression model
model <- glm(price_category ~ median_income + total_rooms + total_bedrooms + population, 
             data = train.data,
             family = binomial)

# Displaying model summary
summary(model)


