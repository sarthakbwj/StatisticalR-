# grammar of graphics
# each variable should be a column, each observation should be a row, and 
# each type of observational unit should be a table

library("ggplot2")

votes <- read.csv("/Users/sarthakbwj/Documents/GitHub/Statistical_R/Lectures/Visualizing_Data_L5/votes.csv")

# ggplot = plotting the graph
# geom_col = designing the graph
# scales = 2 types: Discrete & Continuous

ggplot(votes, aes(x = candidate, y = votes)) + 
  geom_col() + 
  scale_y_continuous(limits = c(0,255)) + 
  labs(
    x = "Candidates",
    y = "Votes"
  )










  