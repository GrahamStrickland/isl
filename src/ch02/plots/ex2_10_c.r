# Exercise 2.10(c) - Plots of boston data

library(ISLR2)
attach(Boston)

pdf("plots/ex2_10_c.pdf")

plot(
  crim,
  lstat,
  xlab = "Per capita crime rate by town",
  ylab = "Lower status of population (%)",
)
