library(tidyverse)

data(cars)
head(cars)

# 1

## a
cars %>% ggplot() +
  geom_point(aes(x = dist, y = speed),
             col = 'red') +
  labs(x = 'Distancia',
       y = 'Velocidade',
       title = 'Dados de 1920')

## b
cars %>% ggplot() +
  geom_point(aes(x = dist, y = speed), col = 'red') +
  labs(x = 'Distancia',
       y = 'Velocidade',
       title = 'Dados de 1920')
