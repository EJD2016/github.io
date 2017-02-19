# server.R page

library(shiny)

#Calculation of the Body Mass Index (BMI) in Imperial Units
bmi <- function(height, weight) (weight * 703) / (height ^ 2)


shinyServer(
  function(input, output) {
    output$inputWeight <- renderPrint({input$weight})
    output$inputHeight <- renderPrint({input$height})
    # Send the calculated BMI back to the user interface so it can be displayed.
    output$bmi <- renderPrint({bmi(input$height, input$weight) })

         }
)