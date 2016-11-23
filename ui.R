
setwd("C:/Users/Edward/Documents/GitHub/My-Shiny-App")

library(shiny)

# Define UI for application that draws a plot
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Stock Price- Apple, Google and IBM"),
  
  # Sidebar with a slider input for the mean, sd and obs
  sidebarLayout(
    sidebarPanel(
      
      br(),
      br(),
      
      p("If you cannot operate this app, please ensure libarary- quantmod- is in your R system; otherwise, please install it. "),
      
      
      selectInput(inputId = "stockcode",
                  label = "Stock Code:",
                  choices = c("Apple" = "AAPL", 
                              "Google" = "GOOG", 
                              "IBM" = "IBM")),
      sliderInput("duration",
                  "Duration (1-12 months):",
                  min = 1,
                  max = 12,
                  value = 1),
      p('Output duration'),
      textOutput('duration'),
      br(),
      
      p("Data are from ",
        a("quantmod", 
          href = "http://www.quantmod.com"))
      
      ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("stockPlot")
    )
  )
))