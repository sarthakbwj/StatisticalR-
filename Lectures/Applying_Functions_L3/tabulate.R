votes <- read.csv("/Users/sarthakbwj/Documents/GitHub/Statistical_R/Lectures/Applying_Functions_L3/votes.csv")
View(votes)

total_votes <- c() # create a vector
for (candidate in rownames(votes)){ # for loop to traverse through each row of the data set.
  total_votes[candidate] <-  sum(votes[candidate, ]) # storing the total votes for a candidate along with the candidate name. 
}
total_votes


# APPLY FUNCTION 
# apply helps iterate over rows and columns and perform operations, no need to write loops.  
# margin 1 = rows and margin 2 = columns. 

total_votes <- apply(votes, MARGIN = 1, FUN = sum)
apply(votes, MARGIN = 2, FUN = sum)
sort(total_votes, decreasing = TRUE)

