library("readr")
new_data <- read_csv("new_data.csv")

final_data <- new_data[-c(7, 11)]
fit <- lm(total_children ~ ., data = final_data)
summary(fit)

par(mfrow=c(2,2))
plot(fit)


