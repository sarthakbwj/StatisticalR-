source("/Users/sarthakbwj/Documents/GitHub/Statistical_R/Lectures/Testing_Programs_L6/greet.R")

test_that("`greet` say hello to a user", {
  expect_equal(greet("Carter"), "hello, Carter")
})