load("/Users/sarthakbwj/Documents/GitHub/Statistical_R/Lectures/Visualizing_Data_L5/anita.RData")

ggplot(
  anita,
  aes(x = timestamp, y = wind)) +
    geom_point() +
  geom_line() +
  labs(
    x = "Data",
    y = "Wind Speed",
    title = "Hurricane Anita"
  ) + 
  theme_classic()
