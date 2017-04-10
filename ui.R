# 8-4-2017,pth


library(shiny)

shinyUI(fluidPage(

  titlePanel("Calculator of your risk of heart attack within 5 years"),
  
  sidebarLayout(
          sidebarPanel(sliderInput("bp", "Your systolic bloodpressure is:",
                        min = 70, max = 200, value = 120),
          sliderInput("nc", "Number of cigarettes  a day:",
                      min = 0, max = 30, value = 0)),
    
    mainPanel(h3(".  "),
              h3(".  "),
              h3(".  "),
              h3("Your risk in percent is: "),
              h2(textOutput("risk")))
  )
))
