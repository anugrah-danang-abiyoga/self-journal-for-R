library(dplyr)
#`student_services_data(1).(1)`$helper <- 1

#agg <- cbind(aggregate(age ~ gender, `student_services_data(1).(1)`, min), aggregate(helper ~ gender, `student_services_data(1).(1)`, sum))

#agg$gender

#agg$helper

shs <- `student_services_data(1).(1)`
shs$helper <- 1
#cor.test(shs$age, shs$cnt)

agg <- cbind(aggregate(age ~ international, shs, min), aggregate(helper ~ international, shs, sum))

agg$international

agg$helper

cor(agg$international, agg$helper)