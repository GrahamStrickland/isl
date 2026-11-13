# Exercise 3.10(h) - Diagnostic plots for linear regression of Carseats data

Carseats <- read.csv("../datasets/Carseats.csv", header = T, na.strings = "?", stringsAsFactors = T)
attach(Carseats)

lm.fit <- lm(Sales ~ Price + US, data = Carseats)

pdf("ex3_10_h.pdf")
par(mfrow = c(2, 2))
plot(lm.fit)
