data(cars)
head(cars)

# 1
plot(dist ~ speed, data = cars,
     xlim = c(0, 30), ylim = c(0, 140),
     xlab = "Velocidade", ylab = "Distancia",
     col = "blue", pch = 19)
abline(a = -17.58, b = 3.93, col = 'red', lwd = 2)

# 2
data("VADeaths")
head(VADeaths)


## a
medias <- apply(VADeaths, 2, mean)
barplot(medias,
        main = "Mortes em rodovias - Virginia", ylab = "Media de mortes")

## b
barplot(VADeaths,
        legend.text = T)

## c
barplot(VADeaths,
        legend.text = T,
        beside = T)

## d
barplot(VADeaths,
        legend.text = T,
        beside = T,
        col = c("lightblue", "darkblue", 'lightgreen','darkgreen', 'pink'),
        args.legend = list(x = "topleft",
                           bty = 'n'))

# 3
data("iris")
head(iris)

pdf("boxplot.pdf", width = 7, height = 5)
boxplot(Sepal.Width ~ Species, data = iris,
        col = c("lightblue", "darkblue", 'lightgreen'),
        xlab = 'Especies',
        ylab = 'Comprimento')
dev.off()

# 4
library(agridat)
data("goulden.barley.uniformity")
head(goulden.barley.uniformity)

hist(goulden.barley.uniformity$yield,
     probability = T,
     breaks = seq(21, 249, 19) + 0.5,
     main = 'Producao de cevada',
     ylab = 'Frequencia',
     xlab = 'Producao (gramas)')
lines(density(goulden.barley.uniformity$yield), col = 'blue', lwd = 2)





