library("stringr")
shows <- read.csv("/Users/sarthakbwj/Documents/GitHub/Statistical_R/Lectures/Tidying_Data_L4/shows.csv")

shows$show <- shows$show |> 
  str_trim() |>   # removes white spaces from the beginning and the end. 
  str_squish() |>   # removes extra white spaces between the words.
  str_to_title()  
  
str_detect(shows$show, "Avatar")


shows |>
  group_by(show) |> 
  summarize(votes = n()) |> # make column votes and the number of times it has been repeated will show up.
  ungroup() |>
  arrange(desc(votes))

  
  
 shows
