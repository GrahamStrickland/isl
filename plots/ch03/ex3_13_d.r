# Exercise 3.13(d) - Scatter plot for the given linear model

set.seed(1)
x <- rnorm(100, 0, 1)
eps <- rnorm(100, 0, 0.0625)
y <- -1.0 + 0.5 * x + eps

pdf("ex3_13_d.pdf")
plot(x, y)
