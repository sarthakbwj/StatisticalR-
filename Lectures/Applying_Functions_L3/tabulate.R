votes <- read.csv("/Users/sarthakbwj/Documents/GitHub/Statistical_R/Lectures/Applying_Functions_L3/votes.csv")

total_votes <- c() # create a vector
for (candidate in rownames(votes)){ # for loop to traverse through each row of the data set.
  total_votes[candidate] <-  sum(votes[candidate, ]) # storing the total votes for a candidate along with the candidate name. 
}
total_votes
