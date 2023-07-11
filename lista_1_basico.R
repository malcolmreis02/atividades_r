## 1
x = seq(1:100)
sum(x)

sum(1:100)

## 2
sum(1:1000)

## 3
n <- 1000 #atribui um valor ao n
x <- seq(1, n) #atribui uma lista com numeros de 1 n com intervalo de um a um por default
sum(x) #soma todos os numeros da lista contida em x

## 4
temp <- c(35, 88, 42, 84, 81, 30)

## 5
city <- c('Beijing', 'Lagos', 'Paris', 'Rio de Janeiro', 'San Juan', 'Toronto')

## 6
names(temp) <- city #'a primeira temperatura se chama cidade 1' atribui um nome as posicoes do vetor

## 7
temp[1:3]
temp[c('Paris', 'San Juan')]

## 8
lista <- list(12:73)
print(lista)

## 9
impares <- seq(1, 100, 2)
print(impares)

## 10
inc <- seq(6, 55, 4/7)
print(inc)

## 11
a <- seq(1, 10, 0.5) #numeric
b <- seq(1, 10) #integer
class(b)

## 12
x <- c('1', '3', '5')
as.integer(x)

## 13
vetor1 <- seq(1, 12)
vetor2 <- seq(101, 108)
m <- matrix(c(vetor1, vetor2), nrow = 4)
print(m2)

vetor <- c(1:12, 101:108)
m2 <- matrix(vetor, nrow = 4)

## 14
m[2, 1:3]
m[,3]
m[4,]
m[[1]] <- 20

## 15
tempc <- (temp-32)*5/9
city_temps <- data.frame(Name = city, Temperature = tempc)
print(city_temps)

## 16 
library(dslabs)
data("murders")

typeof(murders)
str(murders)

## 17
murder_rate <- murders$total / murders$population * 100000
low <- murder_rate<=1 #indica os indices que tem a taxa menor que um
murders$state[low] #indica os estados que estao nos indices obtidos com low
sum(low) #conta quantas observacoes tem a taxa menor que um

## 18 pra frente

ind <- which(murder_rate<1)
murders$state[ind]

ind2 <- which(murders$region=='Northeast' & murder_rate<1)
murders$state[ind2]

media <- mean(murder_rate)

sum(murder_rate<media)

x <- murders$population / 10^6
y <- murders$total
plot(log10(x), y,
     xlab = 'Log da população por milhões',
     ylab = 'Homicídios')

hist(murders$population)
boxplot(population~region, data=murders)


## REFAZER DEPOIS OS GRAFICOS COM GG PLOT BONITINHO








