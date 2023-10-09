turtle_sales <- read.csv("/Users/orkestro/Downloads/LSE_DA301_assignment_files/turtle_sales.csv")

# Installing libraries

install.packages("dplyr")
install.packages("ggplot2")

# Load libraries
library(dplyr)
library(ggplot2)

# Load the dataset
turtle_sales <- read.csv("/Users/orkestro/Downloads/LSE_DA301_assignment_files/turtle_sales.csv")

# Basic Data Exploration
head(turtle_sales)
summary(turtle_sales)

# Data Cleaning
# Checking for and handling NA values
turtle_sales <- turtle_sales %>% 
  mutate(across(everything(), ~ifelse(is.na(.), 0, .)))  # Replace NAs with 0

# Data Analysis
## Investigating Relationships between Variables
### NA vs EU Sales
ggplot(data = turtle_sales, aes(x = NA_Sales, y = EU_Sales)) +
  geom_point() +
  labs(title = "Relationship between NA and EU Sales",
       x = "NA Sales",
       y = "EU Sales")

## Distribution Analysis
### Global Sales
ggplot(data = turtle_sales, aes(x = Global_Sales)) + 
  geom_histogram(binwidth = 5, fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Histogram of Global Sales",
       x = "Global Sales",
       y = "Frequency")

## Outliers Analysis
### Global Sales per Platform
ggplot(data = turtle_sales, aes(x = Platform, y = Global_Sales)) + 
  geom_boxplot(outlier.colour = "red", outlier.shape = 8) +
  labs(title = "Boxplot of Global Sales by Platform",
       x = "Platform",
       y = "Global Sales") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Derived Metrics
## Total Global Sales per Platform
total_sales_per_platform <- turtle_sales %>% 
  group_by(Platform) %>% 
  summarise(Total_Sales = sum(Global_Sales, na.rm = TRUE)) %>%  # Handling potential NAs
  arrange(desc(Total_Sales))

# Visualisation of Derived Metrics
## Bar Plot of Total Sales per Platform
ggplot(data = total_sales_per_platform, aes(x = Platform, y = Total_Sales)) + 
  geom_bar(stat = "identity", fill = "steelblue") +
  labs(title = "Total Global Sales per Platform",
       x = "Platform",
       y = "Total Global Sales") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Assignment 5: Turtle Sales Analysis

#----- Dependencies -----
# Install and load required packages
required_packages <- c("tidyr", "dplyr", "ggplot2", "corrplot", "here")
new_packages <- required_packages[!(required_packages %in% installed.packages()[,"Package"])]
if(length(new_packages)) install.packages(new_packages)

lapply(required_packages, require, character.only = TRUE)

#----- Data Loading and Validation -----
# Use 'here' to construct a path that is independent of the working directory
data_path <- here::here("Downloads", "LSE_DA301_assignment_files", "turtle_sales.csv")

# Check if the file exists
if(!file.exists(data_path)) stop("Data file not found: ", data_path)

# Load data
turtle_sales <- read.csv(data_path)

# Validate data
if(!all(c("Product", "Year", "Global_Sales", "NA_Sales", "EU_Sales") %in% colnames(turtle_sales)))
  stop("Expected columns not found in the data.")

#----- Data Processing and Analysis -----
# Assuming 'Year' should be a numeric variable - validate and convert if needed
turtle_sales$Year <- as.numeric(turtle_sales$Year)

# Reshaping the data for regional analysis
turtle_sales_long <- turtle_sales %>%
  pivot_longer(
    cols = starts_with("Sales_"),
    names_to = "Region",
    values_to = "Sales"
  )

# Summary statistics and impact on sales per product_id
sales_impact_per_product <- turtle_sales %>%
  group_by(Product) %>% 
  summarise(Total_Sales = sum(Global_Sales, na.rm = TRUE), 
            Mean_Sales = mean(Global_Sales, na.rm = TRUE)) %>%
  arrange(desc(Total_Sales))

#----- Visualisations -----
# Time Series Analysis
p1 <- ggplot(turtle_sales, aes(x = Year, y = Global_Sales)) +
  geom_line() +
  labs(title = "Global Sales Over Time",
       x = "Year",
       y = "Global Sales")

# Comparative Regional Analysis
p2 <- ggplot(data = turtle_sales_long, aes(x = Year, y = Sales, color = Region, group = Region)) +
  geom_line() +
  labs(title = "Comparative Analysis of Sales across Regions over Years",
       x = "Year",
       y = "Sales") +
  theme_minimal()

# Genre Analysis
p3 <- ggplot(turtle_sales, aes(x = Genre, y = Global_Sales)) +
  geom_boxplot() +
  labs(title = "Global Sales Across Different Genres",
       x = "Genre",
       y = "Global Sales") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Correlation Analysis
turtle_sales_numeric <- turtle_sales %>%
  select(NA_Sales, EU_Sales, Global_Sales) %>%
  mutate(across(everything(), as.numeric))  # Ensure data is numeric

correlations <- cor(turtle_sales_numeric)

# Correlogram
p4 <- corrplot(correlations, method = "circle")

# Optionally save the plots
ggsave("time_series_plot.png", p1)
ggsave("regional_analysis_plot.png", p2)
ggsave("genre_analysis_plot.png", p3)
ggsave("correlation_plot.png", p4)

# Explore plots
print(p1)
print(p2)
print(p3)
print(p4)

# Create and Explore Q-Q Plots for All Sales Data:

sales_columns <- c("Global_Sales", "NA_Sales", "EU_Sales")  # Add or modify columns as per your dataset

library(ggplot2)

# For each sales-related column, create a Q-Q plot
sales_columns <- c("Global_Sales", "NA_Sales", "EU_Sales") # and others if applicable

par(mfrow = c(2, 2)) # Adjust grid size accordingly
for(col in sales_columns) {
  qqnorm(turtle_sales[[col]], main = paste("Q-Q Plot of", col))
  qqline(turtle_sales[[col]], col = "blue")
}

# Perform a Shapiro-Wilk Test on All the Sales Data

for(col in sales_columns) {
  shapiro_test <- shapiro.test(turtle_sales[[col]])
  print(paste("Shapiro-Wilk test for", col, ": W =", round(shapiro_test$statistic, 3), "p-value =", round(shapiro_test$p.value, 3)))
}

# Install e1071 if not installed
if (!requireNamespace("e1071", quietly = TRUE)) {
  install.packages("e1071")
}

# Load e1071
library(e1071)

# Define sales columns
sales_columns <- c("Global_Sales", "NA_Sales", "EU_Sales")  

# Calculating and printing skewness and kurtosis for each sales column
for(col in sales_columns) {
  skewness_value <- skewness(turtle_sales[[col]], na.rm = TRUE)
  kurtosis_value <- kurtosis(turtle_sales[[col]], na.rm = TRUE)
  
  cat("For", col, ": Skewness =", round(skewness_value, 2), 
      "and Kurtosis =", round(kurtosis_value, 2), "\n")
}


# Calculate correlations
correlations <- cor(turtle_sales[sales_columns], use = "complete.obs") 

# Visualizing the correlation matrix
corrplot(correlations, method = "circle", type = "upper", 
         title = "Correlation Matrix", mar = c(1,1,1,1))

