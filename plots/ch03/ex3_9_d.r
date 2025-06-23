# Exercise 3.9(d) - Diagnostic plots for linear regression of Auto data

Auto <- read.table("../datasets/Auto.data", header = T, na.strings = "?", stringsAsFactors = T)
attach(Auto)

lm.fit <- lm(mpg ~ ., data = Auto[, 1:8])

pdf("ex3_9_d.pdf")
par(mfrow = c(2, 2))
plot(lm.fit)
