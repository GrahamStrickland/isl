# Exercise 2.9(c)(iv) - Plots of Elite and Outstate data

college <- read.csv(
  "../../datasets/College.csv",
  na.strings = "?",
  stringsAsFactors = TRUE
)
rownames(college) <- college[, 1]
college <- college[, -1]
attach(college)

Elite <- rep("No", nrow(college))
Elite[Top10perc > 50] <- "Yes"
Elite <- as.factor(Elite)
college <- data.frame(college, Elite)

pdf("plots/ex8_c_iv.pdf")
plot(
  Elite,
  Outstate,
  varwidth = TRUE,
  xlab = "Elite (proportion of students coming from top 10% exceeding 50%)",
  ylab = "Out-of-state tuition (USD)"
)
dev.off()
