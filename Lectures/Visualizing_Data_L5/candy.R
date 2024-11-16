candy <- load("/Users/sarthakbwj/Documents/GitHub/Statistical_R/Lectures/Visualizing_Data_L5/candy.RData")


ggplot(
  candy,
  aes(x = price_percentile, y = sugar_percentile)
)+
  geom_jitter(
    color = "darkorchid",
    fill = "orchid",
    shape = 21,
    size = 2
  )+
  labs(
    x = "Price",
    y = "Sugar",
    title = "Price and Sugar Relationship"
  ) +
  theme_classic() 
  



