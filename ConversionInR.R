# 1: Conversion
# Make this evaluate to "character"
class("TRUE")

# Make this evaluate to "numeric"
class(8484.00)

# Make this evaluate to "integer"
class(99L)

# Make this evaluate to "factor"
class(factor("factor"))

# Make this evaluate to "logical"
class(FALSE)

# 2: using as. function
# Preview students with str()
str(students)

# Coerce Grades to character
students$Grades <- as.character(students$Grades)

# Coerce Medu to factor
students$Medu <- as.factor(students$Medu)

# Coerce Fedu to factor
students$Fedu <- as.factor(students$Fedu)

# Look at students once more with str()
str(students)

# 2: using dates and lubridate package
# Preview students2 with str()
str(students2)

# Load the lubridate package
library(lubridate)

# Parse as date
dmy("17 Sep 2015")

# Parse as date and time (with no seconds!)
mdy_hm("July 15, 2012 12:56")

# Coerce dob to a date (with no time)
students2$dob <- ymd(students2$dob)

# Coerce nurse_visit to a date and time
students2$nurse_visit <- ymd_hms(students2$nurse_visit)

# Look at students2 once more with str()
str(students2)

# 3 Using str_detect and str_replace
# Copy of students2: students3
students3 <- students2

# Look at the head of students3
head(students3)

# Detect all dates of birth (dob) in 1997
str_detect(students3$dob, "1997")

# In the sex column, replace "F" with "Female" ...
students3$sex <- str_replace(students3$sex, "F", "Female")

# ... and "M" with "Male"
students3$sex <- str_replace(students3$sex, "M", "Male")

# View the head of students3
head(students3)

# 4 check the NA status
# Call is.na() on the full social_df to spot all NAs
is.na(social_df)

# Use the any() function to ask whether there are any NAs in the data
any(is.na(social_df))

# View a summary() of the dataset
summary(social_df)

# Call table() on the status column
table(social_df$status)

# 4: Use of boxplot to find outliers data
# View a boxplot of age
boxplot(students3$age)

# View a boxplot of absences
boxplot(students3$absences)

# 5: View data structures
# View the structure of the data
str(weather)

# Load dplyr package
library(dplyr)

# Look at the structure using dplyr's glimpse()
glimpse(weather)

# View a summary of the data
summary(weather)

# 6: preparing data for analysis code
# Load the stringr and lubridate packages
library(stringr)
library(lubridate)

# Remove X's from day column
weather3$day <- str_replace(weather3$day, "X", "")

# Unite the year, month, and day columns
weather4 <- unite(weather3, date, year, month, day, sep = "-")

# Convert date column to proper date format using lubridates's ymd()
weather4$date <- ymd(weather4$date)

# Rearrange columns using dplyr's select()
weather5 <- select(weather4, date, Events, CloudCover:WindDirDegrees)

# View the head of weather5
head(weather5)

# 7: Replacing column 
# Replace "T" with "0" (T = trace)
weather5$PrecipitationIn <- str_replace(weather5$PrecipitationIn, "T", "0")

# Convert characters to numerics
weather6 <- mutate_at(weather5, vars(CloudCover:WindDirDegrees), funs(as.numeric))

# Look at result
str(weather6)

# 8: Counting the missing value
# Count missing values
sum(is.na(weather6))

# Find missing values
summary(weather6)

# Find indices of NAs in Max.Gust.SpeedMPH
ind <- which(is.na(weather6$Max.Gust.SpeedMPH))

# Look at the full rows for records missing Max.Gust.SpeedMPH
weather6[ind, ]