library(shiny)

shinyUI(fluidPage(

    # Application title
    titlePanel("Course Project: Shiny Application and Reproducible Pitch"),

    
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Number of clusters:",
                        min = 1,
                        max = 10,
                        value = 3)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot"),
            wellPanel(h3("Documentation"),
                h4("This is a plot showing K-means clustering on the famous Iris dataset"),
                h4("Actual species is represented by the shapes and the number of K-means clusters is represented by the color and can be selected using the slider on the left.")
            )
        )
    )
))
