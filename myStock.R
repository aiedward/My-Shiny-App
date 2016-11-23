setwd("C:/Users/Edward/Documents/GitHub/My-Shiny-App")

library('quantmod')
#install.packages('quantmod')
#install.packages('xts')
#install.packages('zoo')
# get data
#getSymbols("AAPL")
#getSymbols("ORCL")
#getSymbols("IBM")
#'last 1 months'
#'last 3 months'
#'last 6 months'
#'last 1 year'


# pre-process 
getData <- function(name, criteria) {
  if(name=='AAPL'){
    getSymbols('AAPL')
    chartSeries(AAPL, subset=criteria)
    addBBands()
  }else if(name=='GOOG'){
    getSymbols('GOOG')
    chartSeries(GOOG, subset=criteria)
    addBBands()
  }else if(name=='IBM'){
    getSymbols('IBM')
    chartSeries(IBM, subset=criteria)
    addBBands()
  }
}

