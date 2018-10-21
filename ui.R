#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(fluidPage(
  
  headerPanel(h4("My first shiny App - A histogram with iris dataset", align = "center")),
  
  sidebarPanel(selectInput("var", label ="1. Select the quantitative variable",
  
  choices = c("Sepal.Length" = 1, "Sepal.Width" = 2, "Petal.Length" = 3, "Petal.Width" = 4), selected = 3),
  
  sliderInput("bin",  "2. Select the number of histogram BINS by using the slider below", min=5, max=25, value=15),
  
  radioButtons("radio", label = "3. Select the color of histogram", choices= c("Green", "Red", "Yellow"), selected= "Green")),
  
  #Main panel
  mainPanel(
    textOutput("text1"),
    textOutput("text2"),
    textOutput("text3"),
    plotOutput("myhist")
    
  )
  
  
))