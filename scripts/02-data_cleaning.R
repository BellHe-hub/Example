#### Preamble ####
# Purpose: Cleans the raw plane data recorded by two observers..... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 6 April 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]



#### Workspace setup ####
library(dplyr)
library(tidyr)
library(lubridate)



#### Clean data ####
# Read the raw data
raw_data <- read.csv("data/raw_data/raw_data.csv")

# Separate the TIME_PERIOD column into Year and Month
cleaned_data <- raw_data %>%
  separate(TIME_PERIOD, into = c("Year", "Month"), sep = "-") %>%
  mutate(
    # Combine Year and Month into a Date object
    DATE = ymd(paste(Year, Month, "01", sep = "-")),
    # Drop the separate Year and Month columns if you only want the date
    Year = as.numeric(Year),
    Month = as.numeric(Month)
  )




#### save data ####
write_csv(
  x = cleaned_data,
  file = "data/analysis_data/analysis_data.csv"
)


