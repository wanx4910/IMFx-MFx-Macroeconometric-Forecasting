setwd("Desktop/IMFx Macroeconometric Forecasting")
FIJI <- read.csv("Module 2/Fiji Dataset/Module_2_Fiji_fiji.csv")
x <- lm(log(RGDP_FIJI) ~ log(RGDP_AUS), data = FIJI, na.action = na.exclude
summary(x) ## to see the results

x_resid <- resid(x)

library(ggplot2)

plot(FIJI$Date[1:44],x_resid, type = "l")
