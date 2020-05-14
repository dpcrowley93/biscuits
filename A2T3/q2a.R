library(WDI)
library(maps)
library(dplyr)
library(ggplot2)
library(countrycode)
#load the WDI library
WDIsearch("CO2.*capita")
# find the indicator that relates to CO2 per capita
wdi_data <- WDI(indicator = "EN.ATM.CO2E.PC", start = 2010, end = 2010, extra = TRUE)
wdi_data = as_tibble(wdi_data)
glimpse(wdi_data)
wdi_data <- wdi_data %>% rename(Emit_CO2percap = EN.ATM.CO2E.PC)
# create a dataset for emissions from the WDI data
dat_map <- map_data("world")
dat_map$ccode <-countrycode(dat_map$region, origin = "country.name", destination = "wb")
wdi_data$ccode <-countrycode(wdi_data$country, origin = "country.name", destination = "wb")
merged <- full_join(dat_map, wdi_data, by= "ccode")
ggplot(merged,aes(x=long,y=lat,group=group,fill=Emit_CO2percap))+geom_polygon() +theme_classic() + labs( title = "C02 emision per capita per country")
# plot the emision of co2 per capita