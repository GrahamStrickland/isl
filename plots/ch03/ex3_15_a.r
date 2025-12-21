# Exercise 3.15(a) - Plots for linear models of all predictors with
# response crim

library(ISLR2)
attach(Boston)

lmcrimchas <- lm(crim ~ chas)
lmcrimdis <- lm(crim ~ dis)
lmcrimrad <- lm(crim ~ rad)
lmcrimmedv <- lm(crim ~ medv)

pdf("ex3_15_a.pdf")
par(mfrow = c(2, 2))

plot(crim, chas)
abline(lmcrimchas, col = "red")

plot(crim, dis)
abline(lmcrimdis, col = "red")

plot(crim, rad)
abline(lmcrimrad, col = "red")

plot(crim, medv)
abline(lmcrimmedv, col = "red")