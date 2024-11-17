# grammar of graphics
# each variable should be a column, each observation should be a row, and 
# each type of observational unit should be a table

library("ggplot2")

votes <- read.csv("/Users/sarthakbwj/Documents/GitHub/Statistical_R/Lectures/Visualizing_Data_L5/votes.csv")


p <- ggplot(votes, aes(x = candidate, y = votes)) +    #defining values of x and y axis. 
  geom_col(
    aes(fill = candidate),    # new color for each candidate. 
    show.legend = FALSE      # remove legend since redundant.   
    ) +   
  scale_fill_viridis_d("Candidates") +        # color blind friendly
  scale_y_continuous(limits = c(0,255)) +       # creating headroom
  labs(             # label
    x = "Candidates",
    y = "Votes",
    title = "Election Results"
  ) + 
  theme_classic()   # themes are added at the end.

ggsave(
  "votes.png",
  plot = p,
  width = 1200,
  height = 900,
  units = "px"
)



