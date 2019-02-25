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

# 4th: practice use the col_names
# Import the first Excel sheet of urbanpop_nonames.xlsx (R gives names): pop_a
pop_a <- read_excel("urbanpop_nonames.xlsx", col_names = FALSE)

# Import the first Excel sheet of urbanpop_nonames.xlsx (specify col_names): pop_b
cols <- c("country", paste0("year_", 1960:1966))
pop_b <- read_excel("urbanpop_nonames.xlsx", sheet = 1, col_names = cols)

# Print the summary of pop_a
summary(pop_a)

# Print the summary of pop_b
summary(pop_b)

# 5th: use gdata to load excel file 
# Load the gdata package
library(gdata)

# Import the second sheet of urbanpop.xls: urban_pop
urban_pop <- read.xls("urbanpop.xls", sheet = 2)

# Print the first 11 observations using head()
head(urban_pop, n = 11)

#6th: gdata continued
# Load the gdata package
library(gdata)

# Import the second sheet of urbanpop.xls: urban_pop
urban_pop <- read.xls("urbanpop.xls", sheet = 2)

# Print the first 11 observations using head()
head(urban_pop, n = 11)

# 7th: use na.omit to clean up all the N/A data
# Add code to import data from all three sheets in urbanpop.xls
path <- "urbanpop.xls"
urban_sheet1 <- read.xls(path, sheet = 1, stringsAsFactors = FALSE)
urban_sheet2 <- read.xls(path, sheet = 2, stringsAsFactors = FALSE)
urban_sheet3 <- read.xls(path, sheet = 3, stringsAsFactors = FALSE)


# Extend the cbind() call to include urban_sheet3: urban
urban <- cbind(urban_sheet1, urban_sheet2[-1], urban_sheet3[-1])

# Remove all rows with NAs from urban: urban_clean
urban_clean <- na.omit(urban)

# Print out a summary of urban_clean
summary(urban_clean)

# 8th: use XL connect package
library(XLconnect)
# Build connection to urbanpop.xlsx
my_book <- loadWorkbook("urbanpop.xlsx")

# List the sheets in my_book
getSheets(my_book)

# Import the second sheet in my_book
readWorksheet(my_book, sheet = 2)

# 9th: use startCol and endCol when importing to excel
# XLConnect is already available

# Build connection to urbanpop.xlsx
my_book <- loadWorkbook("urbanpop.xlsx")

# Import columns 3, 4, and 5 from second sheet in my_book: urbanpop_sel
urbanpop_sel <- readWorksheet(my_book, sheet = 2, startCol = 3, endCol = 5)

# Import first column from second sheet in my_book: countries
countries <- readWorksheet(my_book, sheet = 2, startCol = 1, endCol = 1)
countries

# cbind() urbanpop_sel and countries together: selection
selection <- cbind(countries, urbanpop_sel)
selection

# 10th: creating excel new worksheet from R
# XLConnect is already available

# Build connection to urbanpop.xlsx
my_book <- loadWorkbook("urbanpop.xlsx")

# Import columns 3, 4, and 5 from second sheet in my_book: urbanpop_sel
urbanpop_sel <- readWorksheet(my_book, sheet = 2, startCol = 3, endCol = 5)

# Import first column from second sheet in my_book: countries
countries <- readWorksheet(my_book, sheet = 2, startCol = 1, endCol = 1)
countries

# cbind() urbanpop_sel and countries together: selection
selection <- cbind(countries, urbanpop_sel)
selection

# 11th: add and save some new data in excel from R
# Build connection to urbanpop.xlsx
my_book <- loadWorkbook("urbanpop.xlsx")

# Add a worksheet to my_book, named "data_summary"
createSheet(my_book, "data_summary")

# Create data frame: summ
sheets <- getSheets(my_book)[1:3]
dims <- sapply(sheets, function(x) dim(readWorksheet(my_book, sheet = x)), USE.NAMES = FALSE)
summ <- data.frame(sheets = sheets,
                   nrows = dims[1, ],
                   ncols = dims[2, ])

# Add data in summ to "data_summary" sheet
writeWorksheet(my_book, summ, "data_summary")

# Save workbook as summary.xlsx
saveWorkbook(my_book, "summary.xlsx")

# 12th: save and rename sheet
# Rename "data_summary" sheet to "summary"
renameSheet(my_book, sheet = 4, "summary")

# Print out sheets of my_book
getSheets(my_book)

# Save workbook to "renamed.xlsx"
saveWorkbook(my_book, "renamed.xlsx")

# 13th: summary on how to load, remove and save new excel name in R
# Load the XLConnect package
library(XLConnect)

# Build connection to renamed.xlsx: my_book
my_book <- loadWorkbook("renamed.xlsx")


# Remove the fourth sheet
removeSheet(my_book, "summary")

# Save workbook to "clean.xlsx"
saveWorkbook(my_book, "clean.xlsx")