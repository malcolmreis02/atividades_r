library(tidyverse)
library(dslabs)


data(murders)
glimpse(murders)

# 1 
murders <- murders %>% mutate(rate = total / population * 100000)

# 2
filter(select(murders, c("state", "region", "rate")), rate > 0.6)

#3
murders %>% 
  select(state, region, rate) %>%
  filter(rate > 0.6)

#4
murders <- murders %>%
  mutate(rank = rank(rate)) %>%
  arrange(desc(rank))

#5
group.by.region <- murders %>% 
  group_by(region) %>%
  summarise(media = mean(rate), desvpad = sd(rate))

group.by.region %>% slice_min(media)
### a regiao mais perigosa é a regiao sul

#6
group.by.region %>%
  arrange(desc(media))

#7 
murders_south_1 <- murders %>% 
  filter(region == "South") %>%
  filter(rate < mean(rate)) %>%
  summarise(qntd = n())
murders_south_1
  
#8 
murders %>% 
  select(state, region, rate) %>%
  group_by(region) %>%
  mutate(mean_rate = mean(rate), 
         rate_lower = rate < mean(rate)) %>%
  summarise(low_rate = sum(rate_lower),
            n = n(), 
            prop = mean(rate_lower)) %>%
  arrange(prop)

#9
murders %>%
  mutate(rank10 = ifelse(rank < 11, 1, 0)) %>%
  filter(rank10 == 1) %>%
  group_by(region) %>%
  summarise(qntd_rank = n()) %>%
  arrange(desc(qntd_rank))











