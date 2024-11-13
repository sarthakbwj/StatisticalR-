shows <- read.csv("/Users/sarthakbwj/Documents/GitHub/Statistical_R/Lectures/Tidying_Data_L4/shows.csv")

shows |>
  group_by(show) |>
  summarize(votes = n()) |>
  ungroup() |>
  arrange(desc(votes))
  
  
shows
