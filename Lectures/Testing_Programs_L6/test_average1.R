source("/Users/sarthakbwj/Documents/GitHub/Statistical_R/Lectures/Testing_Programs_L6/average.R")

test_average <- function() {
  if (average(c(1,2,3)) == 2) {
    cat("average passed test :) ")
  } else {
    cat("average failed test :( ")
  }
}

test_average()

