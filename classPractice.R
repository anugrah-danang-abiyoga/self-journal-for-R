# Get Mode, Mean, Median
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

getmode(`student_services_data(1).(1)`$age)

mean(`student_services_data(1).(1)`$age)
median(`student_services_data(1).(1)`$age)

# Get Max and Min
x <- max(`student_services_data(1).(1)`$age)
y <- min(`student_services_data(1).(1)`$age)
x - y

# Get variance 
var(`student_services_data(1).(1)`$age)