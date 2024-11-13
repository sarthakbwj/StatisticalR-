library("tidyr")
students <- read.csv("/Users/sarthakbwj/Documents/GitHub/Statistical_R/Lectures/Tidying_Data_L4/students.csv")


pivot_wider(
  students,
  id_cols = student, # make first column as 'student'
  names_from = attribute, # take column names from 'attribute'
  values_from = value # take rows from 'value'
)
