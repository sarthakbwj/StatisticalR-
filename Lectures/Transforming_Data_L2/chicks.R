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
chicks <- chicks[!is.na(chicks$weight), ]
chicks
 
# another way of writing the above line using the keyword "subset"
chicks <- subset(chicks, is.na(weight))

# creating a subset of chicks who were feed linseed.
soybean_chicks <- subset(chicks, feed == "soybean")
View(soybean_chicks)
mean(soybean_chicks$weight)
summary(soybean_chicks$weight)

# resetting row names after excluding NAs
rownames(chicks) <- NULL
rownames(chicks)

# another way to know the number of NAs in original Data Set. 
sum(is.na(chicks$weight))

# Escape Characters 
# \n - new line 
# \t - tab

# clean NAs and create a subset
chicks <- subset(chicks, !is.na(weights))

# Determine feed options
feed_options <- unique(chicks$feed)

# Format options 
formatted_options <- paste0(1:6, ". ", feed_options)
formatted_options

