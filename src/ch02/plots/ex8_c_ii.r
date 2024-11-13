# Exercise 2.9(c)(ii) - Plots of college data

college <- read.csv(
  "../../datasets/College.csv",
  na.strings = "?",
  stringsAsFactors = TRUE
)
rownames(college) <- college[, 1]
college <- college[, -1]
attach(college)

pdf("plots/ex8_c_ii.pdf")
pairs(college[, 1:10])
dev.off()
