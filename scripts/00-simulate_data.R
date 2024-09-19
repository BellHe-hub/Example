#### Preamble ####
# Purpose: Simulates... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]



#### Workspace setup ####
library(tidyverse)
library(dplyr)



#### Simulate data ####
# Set the parameters for simulation
num_rows <- 1000  # Number of rows to generate
civic_centers <- c('ET', 'NY', 'SC', 'TO', 'BX')  # List of civic centers
lambda_value <- 10  # Lambda for the Poisson distribution

# Set a seed for reproducibility
set.seed(304)

# Generate _id as sequential integers
simulated_id <- 1:num_rows

# Randomly select civic centers
simulated_civic_centres <- sample(civic_centers, size = num_rows, replace = TRUE)

# Simulate marriage licenses using Poisson distribution
set.seed(123)  # Set seed for reproducibility
simulated_licenses <- rpois(num_rows, lambda_value)

# Generate random dates between 2020-01-01 and 2024-12-31
start_date <- as.Date("2020-01-01")
end_date <- as.Date("2024-12-31")
random_dates <- sample(seq(start_date, end_date, by = "day"), num_rows, replace = TRUE)

# Convert the dates to "YYYY-MM" format
simulated_time_period <- format(random_dates, "%Y-%m")

# Create the simulated data frame
simulated_data <- data.frame(
  id = simulated_id,
  CIVIC_CENTRE = simulated_civic_centres,
  MARRIAGE_LICENSES = simulated_licenses,
  TIME_PERIOD = simulated_time_period
)



#### save data ####
write_csv(
  x = raw_data,
  file = "data/simulation_data.csv"
)


