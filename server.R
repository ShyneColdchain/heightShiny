# model territory analysis with simulated bird data
# X and Y coords as well as seed consumption
library(ggplot2)
library(shiny)
library(scatterplot3d)
data <- read.csv("data/simData.csv")

source("DTW.R")

shinyServer(function(input, output) {
	
	output$plot <- renderPlot({
		Xmin <- input$range[1]
		Xmax <- input$range[2]
		tall <- input$height
		
		#territory_map(data, Xmin, Xmax)
		dtw_plot(data, tall, Xmin, Xmax)
	
	})
	
})

