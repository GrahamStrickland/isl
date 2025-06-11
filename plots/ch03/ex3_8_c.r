# Exercise 3.8(c) - Plots of diagnostics for least squares reqression
# of Auto.mpg on Auto.horsepower

Auto <- read.table("../datasets/Auto.data", header = T, na.strings = "?", stringsAsFactors = T)
attach(Auto)
na.omit(Auto)

lm.fit <- lm(mpg ~ horsepower)

pdf("ex3_8_c.pdf")
par(mfrow = c(2, 2))
plot(lm.fit)
