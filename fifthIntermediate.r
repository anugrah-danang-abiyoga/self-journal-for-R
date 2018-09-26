# 1st
# The errors vector has already been defined for you
errors <- c(1.9, -2.6, 4.0, -9.5, -3.4, 7.3)

# Sum of absolute rounded values of errors
sum(abs(round(errors)))

# 2nd
# Don't edit these two lines
vec1 <- c(1.5, 2.5, 8.4, 3.7, 6.3)
vec2 <- rev(vec1)

# Use abs function
mean(abs(vec1))

# 3rd 
# The linkedin and facebook lists have already been created for you
linkedin <- list(16, 9, 13, 5, 2, 17, 14)
facebook <- list(17, 7, 5, 16, 8, 13, 14)

# Convert linkedin and facebook to a vector: li_vec and fb_vec
li_vec <- unlist(linkedin)
fb_vec <- unlist(facebook)

# Append fb_vec to li_vec: social_vec
social_vec <- append(li_vec, fb_vec)

# Sort social_vec
sort(social_vec, decreasing = TRUE)

# 4th: Debug this code:
seq(rep(1, 7, by = 2), times = 7)
# result
rep(seq(1, 7, by = 2), times = 7)

# 4th 
# Create first sequence: seq1
seq1 <- seq(from=1, to=500, by=3)

# Create second sequence: seq2
seq2 <- seq(from=1200, to=900, by=-7)

# Calculate total sum of the sequences
sum(seq1, seq2)

# 5th 
# The emails vector has already been defined for you
emails <- c("john.doe@ivyleague.edu", "education@world.gov", "dalai.lama@peace.org",
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")

# Use grepl() to match for "edu"
grepl(pattern="edu", x=emails)

# Use grep() to match for "edu", save result to hits
grep(pattern="edu", x=emails)

# Subset emails using hits
hits <- grep("edu",emails)
emails[hits]

# 6th 
# The emails vector has already been defined for you
emails <- c("john.doe@ivyleague.edu", "education@world.gov", "dalai.lama@peace.org",
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")

# Use grepl() to match for .edu addresses more robustly
grepl(pattern="@.*\\.edu$", x=emails)

# Use grep() to match for .edu addresses more robustly, save result to hits
grep(pattern="@.*\\.edu$", x=emails)

# Subset emails using hits
hits <- grep("@.*\\.edu$",emails)
emails[hits]

# 7th 
# The emails vector has already been defined for you
emails <- c("john.doe@ivyleague.edu", "education@world.gov", "global@peace.org",
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")

# Use sub() to convert the email domains to datacamp.edu
sub(pattern="@.*\\.edu$", replacement="@datacamp.edu", x=emails)

# 8th 
# Get the current date: today
today <- Sys.Date()
today

# See what today looks like under the hood
unclass(today)

# Get the current time: now
now <- Sys.time()
now

# See what now looks like under the hood
unclass(now)

# 9th 
# Definition of character strings representing times
str1 <- "May 23, '96 hours:23 minutes:01 seconds:45"
str2 <- "2012-3-12 14:23:08"

# Convert the strings to POSIXct objects: time1, time2
time1 <- as.POSIXct(str1, format = "%B %d, '%y hours:%H minutes:%M seconds:%S")
time2 <- as.POSIXct(str2, format = "%Y-%m-%d %H:%M:%S")

# Convert times to formatted strings
format(time1, "%M")
format(time2, "%I:%M %p")

# 10th 
# Calculate the difference between login and logout: time_online
time_online <- logout - login

# Inspect the variable time_online
time_online

# Calculate the total time online
sum(time_online)

# Calculate the average time online
mean(time_online)