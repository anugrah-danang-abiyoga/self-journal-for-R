# 1st 
# Inspect the arguments of the mean() function
args(mean)
?mean

# 2nd 
# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Calculate the mean of the sum
avg_sum <- mean(linkedin + facebook)

# Calculate the trimmed mean of the sum
avg_sum_trimmed <- mean(linkedin + facebook, trim = 0.2)

# Inspect both new variables
avg_sum
avg_sum_trimmed

# 3rd 
# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)

# Basic average of linkedin
mean(linkedin)

# Advanced average of linkedin
mean(linkedin, trim = 0, na.rm = TRUE)

# 4th 
# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)

# Calculate the mean absolute deviation
x <- abs(linkedin - facebook)

mean(x, na.rm = TRUE)

# 4th
# Create a function pow_two()
pow_two <- function(x) {
  x ^ 2
}

# Use the function
pow_two(12)

# Create a function sum_abs()
sum_abs <- function(x, y) {
  abs(x) + abs(y)
}

# Use the function
sum_abs(-2, 3)