# Exercise 2.10(b) - Plots of boston data

library(ISLR2)
attach(Boston)

pdf("ex2_10_b.pdf")

par(mfrow = c(2, 2))
plot(
  nox,
  dis,
  xlab = "Nitrogen oxides concentration",
  ylab = "Distance to employment centres"
)
plot(
  dis,
  age,
  xlab = "Distance to employment centres",
  ylab = "Proportion of units older than 1940"
)
plot(
  rm,
  lstat,
  xlab = "Average rooms",
  ylab = "Lower status of population (%)"
)
plot(
  lstat,
  medv,
  xlab = "Lower status of population (%)",
  ylab = "Median value of owner-occupied homes ($1000s)"
)
