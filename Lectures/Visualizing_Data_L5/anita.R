load("/Users/sarthakbwj/Documents/GitHub/Statistical_R/Lectures/Visualizing_Data_L5/anita.RData")

ggplot(
  anita,
  aes(x = timestamp, y = wind)) +
  geom_line(
    linetype = 1,
    linewidth = 0.4
  ) +
    geom_point(
      color = "deepskyblue4",
      size = 1.5  
  ) +
  labs(
    x = "Data",
    y = "Wind Speed",
    title = "Hurricane Anita"
  ) + 
  theme_classic()


#ggsave(
  "anita.png",
  width = 900, 
  height = 1200,
  units = "px"
)
