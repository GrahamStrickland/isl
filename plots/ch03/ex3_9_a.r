# Exercise 3.9(a) - Scatterplot matrix of Auto data

Auto <- read.table("../datasets/Auto.data", header = T, na.strings = "?", stringsAsFactors = T)
attach(Auto)

pdf("ex3_9_a.pdf")
pairs(Auto)
