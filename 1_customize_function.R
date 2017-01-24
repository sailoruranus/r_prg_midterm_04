 
sort.asc <- function (input_vector){
  i_bound <- length(input_vector)
  result_vector <- c()
  for (i in 1:i_bound){
    result_vector <- c(result_vector,min(input_vector))
    input_vector <- input_vector[-which.min(input_vector)]
  }
  return(result_vector)
}

sort.desc <- function (input_vector){
  i_bound <- length(input_vector)
  result_vector <- c()
  for (i in 1:i_bound){
    result_vector <- c(result_vector,max(input_vector))
    input_vector <- input_vector[-which.max(input_vector)]
  }
  return(result_vector)
}

customize.sort <- function (input_vector, decreasing = FALSE){
  if (decreasing == FALSE){
    sort.asc(input_vector)
  }
  else{
    sort.desc(input_vector)
  }
}

unsorted_vector <- round(runif(10) * 100)
customize.sort(unsorted_vector, decreasing = FALSE)
customize.sort(unsorted_vector, decreasing = TRUE)