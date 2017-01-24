
my.sd <- function (input_vector){
  n <- length(input_vector)
  input_vector_sum <- sum(input_vector)
  input_vector_square_sum <- 0
  
  for (i in 1:n){
    input_vector_square_sum <- input_vector_square_sum + input_vector[i]^2
  }
  
  S_xx <- input_vector_square_sum -(input_vector_sum^2)/n
  s <- sqrt(S_xx/(n-1))
  return(s)
}

sd_vector <- c(8,11,7,13,10,11,7,9)
my.sd(sd_vector)
sd(sd_vector)
   