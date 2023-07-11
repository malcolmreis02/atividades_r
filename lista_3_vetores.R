## 1
library(dslabs)
data(murders)


nome_novo <- subset(murders, nchar(murders$state)>8, abb)
nome_novo

## 2
soma_n <- function(n) {
  a <- 0
  for (i in 1:n){
    a <- a+i
  }
  return(a)
}
soma_n(5000)
sum(1:5000)

## 3
calcule_sn <- function(n) {
  a <- 0
  for (i in 1:n){
    a <- a+i^2
  }
  return(a)
}
calcule_sn(10)

## 5
10*(10 + 1)*(2*10 + 1)/6

## 4
s_n <- vector("numeric", 25)
for (i in 1:length(s_n)) {
  s_n[i] = calcule_sn(i)
}
s_n

## 6
dados_rolando <- function(n) {
  resultados <- sample(1:6, size=n, replace=TRUE)
  return(sum(resultados))
}
dados_rolando(10)

## 7 
grausFtoK <- function(tempF) {
  TempK <- (tempF+459.67)*5/9
  return(round(TempK, 1))
}
fusao <- grausFtoK(32)
ebulicao <- grausFtoK(212)


## 8 

stats <- function(x) {
  media <- 0
  vari_aux <- 0
  
  for (i in x) {
    media <- media + i
  }
  media <- media / length(x)
  print(c('media calculada: ', sprintf(media, fmt = '%.4f')))
  
  for (j in x) {
    vari_aux = vari_aux + (j-media)**2
  }
  variancia <- vari_aux/(length(x)-1)
  print(c('variancia calculada: ', sprintf(variancia, fmt = '%.4f')))
  
  desv <- sqrt(variancia)
  print(c('desvio padrao calculado: ', sprintf(desv, fmt = '%.4f')))
  
  
}

teste <- sample(1:10, size = 15, replace= TRUE)
stats(teste)

## 9

qualquer <- function(qnt, min, max) {
  a <- round(runif(qnt, min, max), 0)
  return(a)
}

qualquer(1, 0, 100)

##10
multiplos3 <- function(a) {
  v <- c()
  for (i in 1:a) {
    v[i] = i*3
  }
  v <- array(v, dim = c(length(v), 1)) # apenas uma coluna
  return(v)
}
multiplos3(20)








