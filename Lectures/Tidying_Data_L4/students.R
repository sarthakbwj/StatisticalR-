library("tidyr")
students <- read.csv("/Users/sarthakbwj/Documents/GitHub/Statistical_R/Lectures/Tidying_Data_L4/students.csv")


new_students <- pivot_wider(
  students,
  id_cols = student, # make first column as 'student'
  names_from = attribute, # take column names from 'attribute'
  values_from = value # take rows from 'value'
)

new_students$GPA <- as.numeric(new_students$GPA)

new_students |>
  group_by(major) |>
  summarize(GPA = mean(GPA))






