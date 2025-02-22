# Exercise 2.8(c)(v) - Plots of college data

college <- read.csv(
  "../../datasets/College.csv",
  na.strings = "?",
  stringsAsFactors = TRUE
)
rownames(college) <- college[, 1]
college <- college[, -1]
attach(college)

pdf("plots/ex2_8_c_v.pdf")

par(mfrow = c(2, 2))
hist(
  Apps,
  xlab = "Number of applications received",
  ylab = "Frequency",
  main = "College Applications",
  breaks = 25
)
hist(
  Accept,
  xlab = "Number of applicants accepted",
  ylab = "Frequency",
  main = "College Acceptance",
  breaks = 25
)
hist(
  Enroll,
  xlab = "Number of new students enrolled",
  ylab = "Frequency",
  main = "College Enrolment",
  breaks = 25
)
hist(
  Top10perc,
  xlab = "New students from top 10% of high school class",
  ylab = "Frequency",
  main = "College Grade Preferences",
  breaks = 25
)

dev.off()
