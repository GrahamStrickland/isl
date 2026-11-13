# Exercise 3.13(f) - Scatter plot for the given linear model
# with least squares and population regression lines

set.seed(1)
x <- rnorm(100, 0, 1)
eps <- rnorm(100, 0, 0.0625)
y <- -1.0 + 0.5 * x + eps
lm.fit <- lm(y ~ x)

pdf("ex3_13_f.pdf")
plot(x, y)
abline(lm.fit, col = "red")
abline(-1.0, 0.5, col = "blue")
legend("topleft",
  legend = c(
    "Least squares line", "Population regression line"
  ),
  col = c("blue", "red"), lwd = 1
)
