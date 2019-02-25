# 1st: import excel package in R
# Load the readxl package
library(readxl)

# Print the names of all worksheets
excel_sheets("urbanpop.xlsx")

# 2nd: import and make a structure that is written in the excel file 

# Read the sheets, one by one
pop_1 <- read_excel("urbanpop.xlsx", sheet = 1)
pop_2 <- read_excel("urbanpop.xlsx", sheet = 2)
pop_3 <- read_excel("urbanpop.xlsx", sheet = 3)

# Put pop_1, pop_2 and pop_3 in a list: pop_list
pop_list <- list(pop_1, pop_2, pop_3)


# Display the structure of pop_list
str(pop_list)

#3rd: use lapply to get better structure of excel file 
# The readxl package is already loaded

# Read all Excel sheets with lapply(): pop_list
pop_list <- lapply(excel_sheets("urbanpop.xlsx"), 
                   read_excel, path = "urbanpop.xlsx")

# Display the structure of pop_list
str(pop_list)