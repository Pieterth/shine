# 8-4-2017, pth

library(shiny)

shinyServer(function(input, output) {
   
  output$risk <- renderText({
    
    z <-  -0.07 * (input$bp - 160) + -0.25 * input$nc
    max(round(100 * (1/(1 + exp(z))) - 10, 0), 0)
    
  })
  
})
