
setwd("C:/Users/Edward/Documents/GitHub/My-Shiny-App")

library(shiny)
library('quantmod')

source('./myStock.R')

# Define server logic required to draw a histogram
shinyServer(
  
  function(input, output) {
        
    output$stockPlot <- renderPlot({
      
      # Extract input values
      stockcode <- input$stockcode
      duration  <- input$duration
      durationc  <- paste0("last ",duration," months")
      merge  <- input$merge
      output$stockcode <- renderPrint(stockcode)
      output$duration <- renderPrint(durationc)
      output$merge <- renderPrint(merge)
      getData(stockcode,durationc)
    })
  })