library(devtools)
install_github("DougLuke/UserNetR")
library(UserNetR)
library(statnet)
data(Bali)
# get data for Bali
role <- get.vertex.attribute(Bali, "role")
# create a vector of roles to be the labels
plot(Bali, label = role, displaylabels = TRUE, label.cex = 0.8, pad = 0.4, main = "Plot of Bali Terrorist Network by Role")
# plot a graph with labels