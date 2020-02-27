library(shiny)
library(ggplot2)
data("iris")
setwd("~/CourseProject")
set.seed(5000)
shinyServer(function(input, output) {
    
    output$distPlot <- renderPlot({
        # generate bins based on input$bins from ui.R
        irisCluster <- kmeans(iris[, 0:3], input$bins, nstart = 20)
        irisCluster$cluster
        
        scatter <- ggplot(data=iris, aes(x = Sepal.Length, y = Sepal.Width)) 
        scatter + geom_point(aes(color=as.factor( irisCluster$cluster), shape=Species)) +
            xlab("Sepal Length") +  ylab("Sepal Width") +
            ggtitle("Sepal Length-Width")
        
        
    })

})
