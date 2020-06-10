library(shiny)
library(here)
library(dplyr)

source(here("ggplot.R"))

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    options(stringsAsFactors = FALSE)
    
    # Import data
    ad_clicks <- read.csv(here("ad_clicks.csv")) %>%
        mutate(day = as.Date(day))
    
    # Create plot output object
    output$plot <- renderPlot({
        plot_clicks(ad_clicks)
    })

})
