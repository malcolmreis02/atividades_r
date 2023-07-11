X <- matrix(data=seq(1, 9), nrow=3, ncol=3, byrow = T)

## 1
sum(X[2,])
sum(X[,3])
sum(diag(X))

## 2
Y <- matrix(data=seq(1, 100), nrow=10,byrow = T)
Y[,seq(2,10,2)]
Y[seq(2,10,2),]
Y[seq(2,10,2), seq(2,10,2)]

## 3
install.packages('dslabs')
library(dslabs)
data(murders)
murders[1, 1] # eh o elemento da linha um e da coluna um
murders[1, ] # sao todos os elementos da primeira linha
murders[, 1] # sao todos os elementos da primeira coluna
murders[1:2, ] # sao todos os elementos das linhas 1-2
murders[, 3:4] # sao todos os elementos das colunas 3-4

## 4
x <- c (1, 2, -3, 4)
if (all (x > 0)) {
  print("Todos sao positivos")
} else {
  print("Nem todos sao positivos")
}
#porque a condicao de que todos os elementos da lista de x sao positivos eh mentira
#uma vez que existe um numero negativo entre eles

#a
if (!all(x > 0)) {
  print("Todos sao positivos")
} else {
  print("Nem todos sao positivos")
}

#b
if (all (x%%2==0)) {
  print("Todos sao numeros pares")
} else {
  print("Nem todos sao numeros pares")
}

#c
if (any(x < 0)) {
  print('Algum numero negativo')
} else {
  print("Nenhum numero negativo")
}

#d
y <- c (6, 2, 10, 4)
if (all (x%%2==0)) {
  print("Todos sao numeros pares")
} else {
  print("Nem todos sao numeros pares")
}

## 5
library(dslabs)
data(murders)
murder_rate <- murders$total/murders$population*100000 # taxa de assassinato por 100.000
murder_rate

ind <- which(murder_rate < 0.5)
if(length(ind) > 0){
  print(murders$state[ind])
} else{
  print("No state has murder rate that low")
}

#a
ind <- which(murder_rate >= 2)
if(length(ind) > 0){
  print(murders$state[ind])
} else{
  print("No state has murder rate that low")
}

#b
ind <- which(murder_rate > 0.5 & murder_rate < 2)
if(length(ind) > 0){
  print(murders$state[ind])
} else{
  print("No state has murder rate that low")
}

#c
ind <- which(murder_rate < 0.25)
if(length(ind) > 0){
  print(murders$state[ind])
} else {
  print("No state has murder rate that low")
}

## 6
a <- seq(-10,120)
ifelse(a>=0,sqrt(a),NA)
ifelse(a%%2==0,1,0)
ifelse(a%%3==0,1,0)


## 7

#b
south <- which(murders$region=='South')
s <- 0
for (i in south) {
  s = s+murder_rate[i]
}
media_south = s/length(south)

#c
outras <- which(murders$region!='South' & murders$region!='North Central')
for (i in outras) {
  s2 = s+murder_rate[i]
}

media.outras <- s2/length(outras)

## 8
v <- 0
for (i in 1:10) {
  for (j in 1:10) {
    v <- v + (i*j)
  }
}
m <- v/100

## 9 

#a
s <- -108:88
ind <- 1
v <- 0
while (s[ind]<0) {
  v <- v + s[ind]
  ind <- ind + 1
}

#b
s <- -108:88
ind <- length(s)
v <- 0
while (s[ind]>0) {
  v <- v + s[ind]
  ind <- ind - 1
}






