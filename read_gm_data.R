gdp <- read.csv("data/data-1952.csv")
new <- read.csv("data/data-1957.csv")
#append new to gdp
gdp <- rbind(gdp, new)

#Calculating GDP by ewolfrum
gdp$gdp <- gdp$gdpPercap * gdp$pop

keep <- c('country', 'year', 'lifeExp', 'gdp')
gdp <- gdp[keep]
write.csv(gdp, "gdpc.csv")
