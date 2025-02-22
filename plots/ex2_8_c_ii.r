# Exercise 2.8(c)(ii) - Plots of college data

college <- read.csv(
  "../../datasets/College.csv",
  na.strings = "?",
  stringsAsFactors = TRUE
)
rownames(college) <- college[, 1]
college <- college[, -1]
attach(college)

pdf("plots/ex2_8_c_ii.pdf")
pairs(college[, 1:10])
dev.off()
