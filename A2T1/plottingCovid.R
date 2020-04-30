data = read.csv("Covid19death.csv", header = TRUE)
library(ggplot2)
ggplot(data = data, aes(reorder(Country, Deaths.100k.pop., sum),Deaths.100k.pop.)) + geom_col(colour = "blue", fill = "blue") + coord_flip() + theme_classic() + labs( y = "Deaths per 100k Population", x = "Country", title = "Covid19 Deaths per 100k Population by Country ")

