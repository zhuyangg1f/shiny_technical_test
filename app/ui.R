library(shiny)

shinyUI(fluidPage(

    # Application title
    titlePanel("Ad Clicks Visualizer"),

    sidebarLayout(
        sidebarPanel(
            radioButtons(
                inputId = "plot_type",
                label = "Plot Type",
                choices = c("line", "scatter", "both"),
                selected = c("both"),
                inline = TRUE
            )
        ),

        mainPanel(
            plotOutput("plot")
        )
    ),
    
    dateRangeInput("daterange", "Date range:",
                   start  = "2019-05-01",
                   end    = "2020-06-10",
                   min    = "2019-05-01",
                   max    = "2020-06-10")
))
