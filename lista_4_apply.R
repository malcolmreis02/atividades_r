## 1
my.matrix <- matrix(data = c(6, 34, 923, 5, 0, 112:116, 5, 9, 34, 76, 2, 545:549), nrow = 5)
my.matrix

apply(my.matrix, 1, mean) #a
apply(my.matrix, 2, mean) #b
apply(my.matrix, 2, sort) #c

## 2
data('mtcars')
#a
l <- lapply(mtcars, min)
s <- sapply(mtcars, min)
m <- mapply(min, mtcars)
#b
list.objects <- list(l,s,m)
list.objects
#c
lapply(list.objects, class)

## 3
t <- mapply(rep, x = c('ME', '115'), times = 8:1) #a
mapply(rep, x = c('ME', '115'), times = 1:8, USE.NAMES = F) #b
#quando nao da nomes, da a quantidade de elementos de cada parte

## 4
data("Titanic")
Titanic

apply(Titanic, 2, sum) #a
apply(Titanic, c(2, 4), sum) #b
apply(Titanic, c(3, 2), sum) #c

## 5
first <- matrix(38:67, 3)
second <- matrix(56:91, 3)
third <- matrix(82:144, 3)
fourth <- matrix(46:93, 6)
listobj <- list(first, second, third, fourth) #a

#lapply(listobj, '[',, 2) #b
lapply(listobj, '[', 3, ) #c

## 6
data("iris")
mapply(class, iris) #a
levels(iris$Species) #b
unique(iris$Species) #c
summary(iris$Species)

## 7
data('PlantGrowth')
tapply(PlantGrowth$weight, PlantGrowth$group, sd)












