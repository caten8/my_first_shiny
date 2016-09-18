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