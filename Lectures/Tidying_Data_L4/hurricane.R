library("dplyr")


# sort as per the strongest hurricane from the Data Set. 

hurricane <- read.csv("/Users/sarthakbwj/Documents/GitHub/Statistical_R/Lectures/Tidying_Data_L4/hurricanes.csv")

View(hurricane)

hurricane |>
  distinct(year, .keep_all = TRUE) |>
  arrange(year)
