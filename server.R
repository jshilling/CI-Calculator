library(shiny)
shinyServer(
        function(input, output) {

                output$sterr <- renderPrint({round(input$stdv/sqrt(input$size), 3)})
                output$me <- renderPrint({round(as.numeric(input$confLvl) *
                                                        round(input$stdv/sqrt(input$size), 3), 3)})
                output$lower <- renderPrint({input$x_bar -
                                                     round(as.numeric(input$confLvl) *
                                                        round(input$stdv/sqrt(input$size), 3), 3)})
                output$upper <- renderPrint({input$x_bar +
                                                     round(as.numeric(input$confLvl) *
                                                        round(input$stdv/sqrt(input$size), 3), 3)})
        }
)