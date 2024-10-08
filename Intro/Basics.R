library(tidyverse)
View(mpg)
?mpg

glimpse(mpg)
# ? gets you more info in the Help pane. 
?filter 

filter(mpg, cty >= 20)
mpg_efficient <- filter(mpg, cty >= 20)
View(mpg_efficient)

mpg_ford <- filter(mpg, manufacturer == 'ford')
View(mpg_ford)

mpg_metric <- mutate(mpg, cty_metric = cty * 0.425144)
glimpse(mpg_metric)

#mpg will be passed as the first parameter to the mutate function
mpg_metric <- mpg %>% # Cmd + Shift + M 
  mutate(cty_metric = cty * 0.425144)

mpg %>% # initialize the dataset
  group_by(class) %>% # group by class 
  summarise(mean(cty),  # output the mean of the group
            median(cty)) # output the median of the group

# Data viz with ggplot2
# grammar of graphics

ggplot(mpg, aes(x = cty)) +  # aes = axis
  geom_histogram() + 
  labs(x = "City mileage")   # labs = label 
 
ggplot(mpg, aes(x = cty)) +  
  geom_freqpoly() + 
  labs(x = "City mileage")

ggplot(mpg, aes(x = cty)) +  
  geom_histogram() + 
  geom_freqpoly() + 
  labs(x = "City mileage")

ggplot(mpg, aes(x = cty, 
              y = hwy,
              color = class)) + 
  geom_point() +          # scatter plot 
  geom_smooth(method = "lm") + # regression line 
  geom_point() +
  scale_color_brewer(palette = "Dark2")


