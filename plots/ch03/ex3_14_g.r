# Exercise 3.14(g) - Scatter plots for the given linear models

set.seed(1)
x1 <- runif(100)
x2 <- 0.5 * x1 + rnorm(100) / 10
y <- 2 + 2 * x1 + 0.3 * x2 + rnorm(100)

x1 <- c(x1, 0.1)
x2 <- c(x2, 0.8)
y <- c(y, 6)

pdf("ex3_14_g_i.pdf")
par(mfrow = c(2, 2))
lmc <- lm(y ~ x1 + x2)
plot(lmc)

pdf("ex3_14_g_ii.pdf")
par(mfrow = c(2, 2))
lmd <- lm(y ~ x1)
plot(lmd)

pdf("ex3_14_g_iii.pdf")
par(mfrow = c(2, 2))
lme <- lm(y ~ x2)
plot(lme)
