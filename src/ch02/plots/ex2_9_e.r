# Exercise 2.9(e)(v) - Plots of auto data

auto <- read.csv(
  "../../datasets/Auto.csv",
  na.strings = "?",
  stringsAsFactors = TRUE
)
auto <- na.omit(auto)
attach(auto)

pdf("plots/ex2_9_e.pdf")

par(mfrow = c(2, 2))
plot(cylinders, mpg)
plot(cylinders, horsepower)
plot(horsepower, mpg)
plot(acceleration, horsepower)
