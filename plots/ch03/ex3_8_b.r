# Exercise 3.8(b) - Plots of response and predictor for least squares reqression
# of Auto.mpg on Auto.horsepower

Auto <- read.table("../datasets/Auto.data", header = T, na.strings = "?", stringsAsFactors = T)
attach(Auto)
na.omit(Auto)

lm.fit <- lm(mpg ~ horsepower)

pdf("ex3_8_b.pdf")
plot(horsepower, mpg)
abline(lm.fit, col = "red")
