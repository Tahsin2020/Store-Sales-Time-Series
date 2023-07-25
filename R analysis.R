install.packages("tidyverse")
library(tidyverse)

clean = train[seq(1, nrow(train), 1000), ]
glimpse(clean)
ggplot(data=clean,mapping =aes(x=date, y = sales))+  geom_point()
mean(clean$sales)
clean <- drop_na(clean)
str(clean)

model <- lm(sales~family+ date+ id+ store_nbr+onpromotion,data=clean)
summary(model)
unique(train$family) # 33 items
max(train$store_nbr) # 1-54 stores
max(train$sales       ) # double
max(train$onpromotion       ) # double

train$family <- as.factor(train$family)
View(train)
