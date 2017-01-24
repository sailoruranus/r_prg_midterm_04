
my.BMI <- function(heights,weights){
  return(weights/(heights/100)^2)
}

heights <- c(173, 168, 171, 189, 179)
weights <- c(65.4, 59.2, 63.6, 88.4, 68.7)
heights_and_weights <- data.frame(heights, weights)
bmi <- mapply(my.BMI,heights,weights,MoreArgs = NULL, SIMPLIFY = TRUE,USE.NAMES = TRUE)
heights_and_weights <- cbind(heights_and_weights,bmi)
View(heights_and_weights)