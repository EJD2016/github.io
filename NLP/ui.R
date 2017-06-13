# title: "DS10 - Swiftkey and Natural Language Processing (NLP) Project - N-Grams Project"
# author: "Elek Dobos"
# date: "June 11, 2017"
# filename: ui.R
 
 library(shiny) 
 
 
 # Define UI for dataset viewer application 
 shinyUI(fluidPage( 
    
     # Application title. 
     titlePanel("*** Prediction of the Next Word ***"), 
    
       
       mainPanel( 
         
         textInput("obs", "Please enter your statement:"),  
         helpText("The Shiny App will analyze the entered statement in order to predict the most likely next word.", style = "color:blue"),
         helpText("After you enter your statement, please press the 'Predict Next Word Button' below:", style = "color:blue"),
         submitButton("Predict the Next Word"),
        
         
         h5("You have entered the following statement:", style = "color:blue"),
           h5("_______________________________________"),
           textOutput("Original"), 
           br(), 
           h5("Your statement has been reformatted to the following:", style = "color:blue"),
           h5("_______________________________________"),
           textOutput("Translated"), 
           br(), 
           br(), 
           h3("The Most Likely Next Word is:", style = "color:green"), 
           div(textOutput("BestGuess"), style = "color:blue"), 
           br(), 
           h3("The Shiny App predicted the next word could be the following:", style = "color:green"), 
           tableOutput("view") 
     ) 
   ) 
 ) 
