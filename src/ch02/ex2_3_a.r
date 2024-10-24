# Exercise 2.3(a) - Plots of error curves

squared_bias <- function(x) {
  return(x)
}

variance <- function(x) {
  return(x)
}

training_err <- function(x) {
  return(x)
}

test_err <- function(x) {
  return(x)
}

bayes_err <- function(x) {
  return(rep(1.0, length(x)))
}

x <- seq(0, 10, by = 0.1)

y1 <- squared_bias(x)
y2 <- variance(x)
y3 <- training_err(x)
y4 <- test_err(x)
y5 <- bayes_err(x)

pdf("ex2_3_a.pdf")

plot(x, y1,
  type = "l", col = "blue", lwd = 2, ylim = c(0, 10), xlab = "Flexibility",
  ylab = "Value", main = "Typical Error Curves"
)

lines(x, y2, col = "red", lwd = 2)
lines(x, y3, col = "green", lwd = 2)
lines(x, y4, col = "purple", lwd = 2)
lines(x, y5, col = "orange", lwd = 2)

legend("topright",
  legend = c(
    "(Squared) bias", "Variance", "Training Error", "Test Error",
    "Bayes (irreducible) Error"
  ),
  col = c("blue", "red", "green", "purple", "orange"), lwd = 2
)

dev.off()
