votes <- read.csv("votes.csv")

votes[1,] # column
votes[,1] # row 
votes$mail # access the column using the column name. 


poll <- sum(votes$poll[1,2,3])
print(poll)

