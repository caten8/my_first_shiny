# Documentation
# This Shiny app acquires input values from the user to calculate Body Mass Index for a 
# variety of heights and weights. It contains two inputs, one for height in inches and one 
# for weight in pounds, and calculates BMI. The function takes two arguments, height and 
# weight, and returns a numerical value based on a simple formula.
# This is the back end file.


BMI = function(height,weight){
        return(0.45455*weight/(.0254*height)^2)
}

shinyServer(
        function(input, output) {
                output$oht <- renderPrint({input$ht})
                output$owt <- renderPrint({input$wt})
                output$prediction <- renderPrint({BMI(input$ht, input$wt)})
        }
)
