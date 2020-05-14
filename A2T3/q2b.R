library(devtools)
install_github("DougLuke/UserNetR")
library(UserNetR)
library(statnet)
data(Bali)
# get data for Bali
plot(Bali, displaylabels = TRUE, label.cex = 0.8, pad = 0.4, main = "Plot of Bali Terrorist Network")
# plot a graph with labels