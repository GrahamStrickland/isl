# Exercise 3.15(c) - Univariate vs multiple regression coefficients for
# response crim

library(ISLR2)

predictors <- setdiff(names(Boston), "crim")

lmcrimmultiple <- lm(crim ~ ., data = Boston)
multiplecoefs <- coef(lmcrimmultiple)[predictors]

univariatecoefs <- sapply(predictors, function(p) {
  coef(lm(reformulate(p, response = "crim"), data = Boston))[p]
})

pdf("ex3_15_c.pdf")
plot(univariatecoefs, multiplecoefs,
  xlab = "Univariate Coefficient",
  ylab = "Multiple Regression Coefficient",
  main = "Univariate vs Multiple Regression Coefficients",
  pch = 19
)
text(univariatecoefs, multiplecoefs, labels = predictors, pos = 4, cex = 0.8)
