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

