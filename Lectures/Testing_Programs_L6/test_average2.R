library("testthat")
source("/Users/sarthakbwj/Documents/GitHub/Statistical_R/Lectures/Testing_Programs_L6/average.R")

test_that("`average` function calculates the mean", {
  expect_equal(average(c(1,2,3)), 2)
  expect_equal(average(c(-1,-2,-3)), -2)
  expect_equal(average(c(-1,0,1)), 0)
})

test_that("`average` returns NAs with NAs in input", {
  expect_equal(suppressWarnings(average(c(1,NA,3))), NA)
  expect_equal(suppressWarnings(average(c(NA,NA,NA))), NA)
})

test_that("`average` warns about the NAs in input", {
  expect_warning(average(c(1,NA,3)))
  expect_warning(average(c(NA,NA,NA)))
})

test_that("`average` stops if `x` is non-numeric", {
  expect_error(average(c("quacks!")))
  expect_error(average(c("1","2","3")))
})




