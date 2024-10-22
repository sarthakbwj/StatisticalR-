votes <- read.csv("votes.csv")

votes[1,] # column
votes[,1] # row 
votes$mail # access the column using the column name. 


sum(votes$poll) # sum the whole column 
sum(votes$mail)

sum(votes$poll[1], votes$mail[1])
votes$poll + votes$mail


sum(votes[, 2], votes[, 3])
sum(votes[, 3])

votes$total <- votes$poll + votes$mail

# call row and column name
rownames(votes)
colnames(votes)

# write csv
write.csv(votes, "totals.csv", row.names = FALSE)

