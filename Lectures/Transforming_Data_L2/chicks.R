chicks <- read.csv("chicks.csv") 
View(chicks)
summary((chicks$weight))

# na.rm helps remove the NA values from the selected column of the DataSet. 
mean(chicks$weight, na.rm = TRUE)
      
casein_chicks <- chicks[1:3,]
                      #[Row,Column]

# mean of the  weight column of the newly created subset. 
mean(casein_chicks$weight)


# Logical Functions 

# is.infinite
# is.na
# is.nan
# is.null

which(is.na(chicks$weight))


# subset of the DataSet without the NA values. 
chicks[!is.na(chicks$weight), ]


