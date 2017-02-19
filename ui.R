# ui.R page

library(shiny)

shinyUI(
  pageWithSidebar(
    headerPanel("Body Mass Index (BMI) Calculator"),
    # User will utilize the input controls and enter their height and weight
    sidebarPanel(
      numericInput('height', 'Height (inches)', 68, min = 36, max = 200, step = 1),
      numericInput('weight', 'Weight (pounds)', 170, min = 50, max = 500, step = 1),
      submitButton('Submit')
    ),
    # Display the output to the user.
    mainPanel(
      h3('Results:'),
      h4('Your Body Mass Index Calcluator is '),
      verbatimTextOutput("bmi"),
      h5('BMI Weight Categories:        '),
      h5('                              '),
      h5('                              '),
      h5('BMI              Weight Status'),
      h5('------------------------------'),
      h5('Below  18.5      Underweight'),
      h5('18.5 - 24.9      Normal'),
      h5('25 - 29.9        Overweight'),
      h5('30+              Obese')
    )
  )
)


