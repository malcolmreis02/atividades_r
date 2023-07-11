## 1
player <- c("James", "Durant", "Curry", "Harden", "Paul", "Wade")
team <- c("CLEOH", "GSWCA", "GSWCA", "HOUTX", "HOUTX", "CLEOH")
day1points <- c(25, 23, 30, 41, 26, 20)
day2points <- c(24, 25, 33, 45, 26, 23)
dados <- tibble(player, team, day1points, day2points)
head(dados, 10)

## 2
nba_long <- pivot_longer(dados, cols = day1points:day2points, names_to = 'day', values_to = 'points')
nba_long

## 3
nba_wide <- pivot_wider(nba_long, names_from = day, values_from = points)
nba_wide

## 4
nba_sep <- separate(nba_long, team, sep = 3, into = c('team', "state"))
nba_sep

## 5
wide <- tibble(ID = 1:10,
               Face.1 = c(411, 723, 325, 456, 579, 612, 709, 513, 527, 379),
               Face.2 = c(123, 300, 400, 500, 600, 654, 789, 906, 413, 567),
               Face.3 = c(1457, 1000, 569, 896, 956, 2345, 780, 599, 1023, 678))
wide
long <- pivot_longer(wide, cols = Face.1:Face.3, names_to = "Face", values_to = "ResponseTime")
long
sepa <- separate(long, Face, sep = '[.]', into = c('Target', 'Number'))
sepa








