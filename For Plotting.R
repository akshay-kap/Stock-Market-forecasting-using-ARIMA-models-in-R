library(ggplot2)
library(forecast)
library(fpp)
library(knitr)
library(quantmod)
library(timeSeries)
library(tseries)
library(xts)
library(zoo)
library(gridExtra)
suppressMessages(library(dplyr))
library(tidyverse)
library(tibbletime)
library(ggfortify)

kroger <- read_csv("KR.csv")
costco <- read_csv("COST.csv")
walmart <- read_csv("WMT.csv")
target <- read_csv("TGT.csv")

costco.close <-ts(costco$Close, start = 2005, frequency = 12)
walmart.close <-ts(walmart$Close, start = 2005, frequency = 12)
target.close <-ts(target$Close, start = 2005, frequency = 12)
kroger.close <-ts(kroger$Close, start = 2005, frequency = 12)

ggplot(kroger,aes(Date,Close))+geom_line(aes(color="Kroger Closing Price"), size = 1.1)+
  geom_line(data=costco,aes(color="Costco Closing Price"), size = 1.1)+
  geom_line(data=walmart,aes(color="Walmart Closing Price"), size = 1.1)+
  geom_line(data=target,aes(color="Target Closing Price"), size = 1.1)+
  labs(color="Companies", y="Closing Price", x = "Year") +  ggtitle("Stock Closing Price Trend from 2005 to 2020") 


