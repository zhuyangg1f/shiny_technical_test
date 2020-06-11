library(shiny)
library(here)
library(dplyr)

source(here("ggplot.R"))

shinyServer(function(input, output) {

    options(stringsAsFactors = FALSE)
    
    # Import data
    ad_clicks <- read.csv(here("ad_clicks.csv")) %>%
        mutate(day = as.Date(day))
    
    # Create plot output object
    output$plot <- renderPlot({
        
        ad_dt <- ad_clicks %>% 
            filter(day >= input$daterange[1],
                   day <= input$daterange[2])
        
        plot_clicks(ad_dt, input$plot_type)
    })

})
