#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

source("ggplot.R")

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    # Import data
    
    ad_clicks <- ...
    
    
    output$plot <- renderPlot({
        
        plot_clicks(ad_clicks)

    })

})
