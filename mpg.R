library(tidyverse)
data()
view(mpg)
?mpg
glimpse(mpg)

filter(mpg, cty >= 20)
mpg_efficient <- filter(mpg, cty >= 20)
View(mpg_efficient)

filter(mpg, manufacturer == 'ford')
mpg_ford <- filter(mpg, manufacturer =='ford')
View(mpg_ford)

mpg_metric <- mutate(mpg, cty_metric = 0.425144 * cty)
glimpse((mpg_metric))

mpg_metric <- mpg%>%
  mutate(cty_metric = 0.425144 * cty)
  
  mpg %>%
    group_by(class)%>%
    summarise(mean(cty),median(mpg))
  
  
  