Q1 <- read.csv("/Users/sarthakbwj/Documents/GitHub/Statistical_R/Lectures/Transforming_Data_L2/src2/sales/Q1.csv")
Q1$quater <- "Q1"
Q2 <- read.csv("/Users/sarthakbwj/Documents/GitHub/Statistical_R/Lectures/Transforming_Data_L2/src2/sales/Q2.csv")
Q2$quater <- "Q2"
Q3 <- read.csv("/Users/sarthakbwj/Documents/GitHub/Statistical_R/Lectures/Transforming_Data_L2/src2/sales/Q3.csv")
Q3$quater <- "Q3"
Q4 <- read.csv("/Users/sarthakbwj/Documents/GitHub/Statistical_R/Lectures/Transforming_Data_L2/src2/sales/Q4.csv")
Q4$quater <- "Q4"

# Row Bind
# columns of the respective Data Sets should match.
# Data will be binded together in the order of the files

sales <- rbind(Q1,Q2,Q3,Q4)
sales

# adding a column "Value" 
# "ifelse" as a function 
sales$value <- ifelse(sales$sale_amount > 100, "High Value", "Regular")
View(sales)
 