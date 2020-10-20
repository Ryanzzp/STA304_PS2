# Load data
library("readr")
raw_data <- read_csv("gss.csv")

# library(magrittr)
# na_summary <- raw_data %>%
#  summarise_all(
#     ~ sum(is.na(.))
#   )
# na_summary <- na_summary / 20602

# length(na_summary)

select_data <- raw_data[c(2, 5, 11, 12, 21, 28, 41, 42, 44, 47, 48)]

# library("dplyr")
str(select_data)

# Remove all NA obs
new_data <- na.omit(select_data)
str(new_data)

# Convert categorical to Numerical
new_data[new_data == "Don't know"] <- "0"
new_data[new_data == "Not at all important"] <- "1"
new_data[new_data == "Somewhat important"] <- "2"
new_data[new_data == "Not very important"] <- "3"
new_data[new_data == "Very important"] <- "4"

new_data[new_data == "Poor"] <- "1"
new_data[new_data == "Fair"] <- "2"
new_data[new_data == "Good"] <- "3"
new_data[new_data == "Very good"] <- "4"
new_data[new_data == "Excellent"] <- "5"

new_data[new_data == "Female"] <- "0"
new_data[new_data == "Male"] <- "1"

new_data[new_data == "Less than high school diploma or its equivalent"] <- "1"
new_data[new_data == "High school diploma or a high school equivalency certificate"] <- "2"
new_data[new_data == "Trade certificate or diploma"] <- "3"
new_data[new_data == "College, CEGEP or other non-university certificate or di..."] <- "4"
new_data[new_data == "University certificate or diploma below the bachelor's level"] <- "5"
new_data[new_data == "Bachelor's degree (e.g. B.A., B.Sc., LL.B.)"] <- "6"
new_data[new_data == "University certificate, diploma or degree above the bach..."] <- "7"

new_data[new_data == "Less than $25,000"] <- "1"
new_data[new_data == "$25,000 to $49,999"] <- "2"
new_data[new_data == "$50,000 to $74,999"] <- "3"
new_data[new_data == "$75,000 to $99,999"] <- "4"
new_data[new_data == "$100,000 to $ 124,999"] <- "5"
new_data[new_data == "$125,000 and more"] <- "6"

new_data[new_data == "Prince Edward Island"] <- "1"
new_data[new_data == "Rural areas and small population centres (non CMA/CA)"] <- "2"
new_data[new_data == "Larger urban population centres (CMA/CA)"] <- "3"

write_csv(new_data, "new_data.csv")

# library("tidyverse")
# new_data <- new_data %>%
#   mutate_all(type.convert) %>%
#   mutate_if(is.factor, as.character)
# cor(new_data)
# summary(lm(age_first_child ~ ., data = new_data))
# pairs(new_data)
# summary(lm(age_first_child ~ age + total_children + sex + education + income_family, data = new_data))
# fit1 <- lm(age_first_child ~ age + total_children + sex + education + income_family, data = new_data)
# par(mfrow=c(2,2))
# plot(lm(age_first_child ~ age + total_children + sex + education + income_family, data = new_data))
# pairs(age_first_child ~ age + total_children + sex + education + income_family, data = new_data)
