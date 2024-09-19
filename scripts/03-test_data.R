#### Preamble ####
# Purpose: Tests... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]



#### Workspace setup ####
library(dplyr)
library(testthat)
library(lubridate)



#### Tests ####
# Read the simulated data
raw_data <- read.csv("data/simulation_data.csv")

# Test 1: Check that the number of rows in the simulated data matches the expected number
test_that("The simulated data contains the correct number of rows", {
  expect_equal(nrow(simulated_data), num_rows)
})

# Test 2: Check that the MARRIAGE_LICENSES column contains only non-negative integers
test_that("The MARRIAGE_LICENSES column contains non-negative integers", {
  expect_true(all(simulated_data$MARRIAGE_LICENSES >= 0))
  expect_true(all(simulated_data$MARRIAGE_LICENSES == floor(simulated_data$MARRIAGE_LICENSES)))
})

