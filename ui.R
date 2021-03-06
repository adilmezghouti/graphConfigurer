
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Chart Configurer:"),
  
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      textInput(inputId = "textId",label = "Application Description"),
      radioButtons(inputId = "radioId",label = "Chart Color",choices = c("Green" = "green",
                                                                                "Red" = "red",
                                                                                "Black" = "black",
                                                                                "Orange" = "orange")),      
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 100,
                  value = 30)
    ),    
    # Show a plot of the generated distribution
    mainPanel(
      textOutput("textId"),
      plotOutput("distPlot")
    )
  )
))
