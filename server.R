#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
data(iris)
shinyServer(
  function(input, output){
    
    output$text1 <- renderText({
      com = as.numeric(input$var)
      paste("Data set variable/column name is", names(iris[colm])) })
    
    output$text2 <- renderText({
      paste("Color of histogram is", input$radio) })
    
    output$text3 <- renderText({
      paste("Number of histogram BINs is", input$bin)})
    
    
    output$myhist <- renderPlot({ 
      
      colm = as.numeric(input$var)
      hist(iris[,colm], col = input$radio, xlim = c(0, max(iris[, colm])),
           main= "Histogram of iris dataset", breaks = seq(0, max(iris[,colm]),
          l=input$bin+1),xlab= names(iris[colm])
          )
      
      })
    
    
    
})

