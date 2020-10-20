# load data
library("readr")
new_data <- read_csv("new_data.csv")

# Remove useless data(colume)
final_data <- new_data[-c(7, 11)]

# Build MLP model
fit <- lm(total_children ~ ., data = final_data)

# Get the summary of the model
summary(fit)

# Plot Residuals vs Fitted, Normal QQ ,Scale-Location, Residuals Leverage
par(mfrow=c(2,2))
plot(fit)

# fit1 <- lm(total_children ~ sex + education, data = final_data)
# summary(fit1)
