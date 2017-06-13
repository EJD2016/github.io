# title: "DS10 - Swiftkey and Natural Language Processing (NLP) Project - N-Grams Project"
# author: "Elek Dobos"
# date: "June 11, 2017"
# filename: server.R

options(shiny.maxRequestSize=30*1024^2) 

# Import libraries that are needed for processing in this module.
library(shiny) 
library(data.table) 
library(NLP) 
library(tm) 


# Define server logic required to summarize and view the selected dataset 
shinyServer(function(input, output) {     
  # Generate a summary of the dataset 
  output$Original <- renderText({ 
    OriginalTextInput <- input$obs 
    return(OriginalTextInput) 
  }) 
  
  # Summarize the data set.
  output$Translated <- renderText({ 
    OriginalTextInput <- input$obs 
    Translated_Input <- Translate_Input(OriginalTextInput) 
    return(Translated_Input) 
  }) 
  
  #Find the best guess
   output$BestGuess <- renderText({ 
    OriginalTextInput <- input$obs 
    Translated_Input <- Translate_Input(OriginalTextInput) 
    PredictOutput <- "The Prediction will be output here."
    TokenizeInput <- Split_Translate_Input(OriginalTextInput) 
    WordCount <- length(TokenizeInput) 
    
    if(WordCount==1){ 
      PredictOutput <- WordCount1(TokenizeInput) 
    } 
    if(WordCount==2){ 
      PredictOutput <- WordCount2(TokenizeInput) 
    } 
    if(WordCount==3){ 
      PredictOutput <- WordCount3(TokenizeInput) 
    } 
    if(WordCount > 3){ 
      WordSearch <- c(TokenizeInput[WordCount - 2], 
                           TokenizeInput[WordCount - 1], 
                           TokenizeInput[WordCount]) 
      PredictOutput <- WordCount3(WordSearch) 
    } 
    return(PredictOutput) 
  }) 
  
  # Display the top predictive observations 
  output$view <- renderTable({ 
    OriginalTextInput <- input$obs 
    TokenizeInput <- Split_Translate_Input(OriginalTextInput) 
    WordCount <- length(TokenizeInput) 
    
    if(WordCount==1){ 
      PredictOutput <- WordCount1(TokenizeInput) 
    } 
    if(WordCount==2){ 
      PredictOutput <- WordCount2(TokenizeInput) 
    } 
    if(WordCount==3){ 
      PredictOutput <- WordCount3(TokenizeInput) 
    } 
    if(WordCount > 3){ 
      WordSearch <- c(TokenizeInput[WordCount - 2], 
                           TokenizeInput[WordCount - 1], 
                           TokenizeInput[WordCount]) 
      PredictOutput <- WordCount3(WordSearch) 
    } 
    
    #If Prediction exists, then display it to the user. Otherwise print empty.
    if(exists("Prediction", where = -1)){ 
      Prediction 
    }else{ 
      XNgramsTable <- data.frame(Word=NA, Likelihood=NA) 
    } 
    
  }) 
}) 
