# grammar of graphics
# each variable should be a column, each observation should be a row, and 
# each type of observational unit should be a table

library("ggplot2")

votes <- read.csv("/Users/sarthakbwj/Documents/GitHub/Statistical_R/Lectures/Visualizing_Data_L5/votes.csv")



ggplot() # blank canvas

ggplot(votes, 
       aes(x = candidate, y = votes),
       barplot(height = 1, width = 1),
       labs(title = "Votes"))

?barplot
