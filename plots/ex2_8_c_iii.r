# Exercise 2.8(c)(iii) - Plots of Outstate versus Private data

college <- read.csv(
  "../datasets/College.csv",
  na.strings = "?",
  stringsAsFactors = TRUE
)
rownames(college) <- college[, 1]
college <- college[, -1]
attach(college)

pdf("ex2_8_c_iii.pdf")
plot(
  Private,
  Outstate,
  varwidth = TRUE,
  xlab = "Private",
  ylab = "Out-of-state tuition (USD)"
)
dev.off()
