#shiny R app

#fluidPage creates display that auto adjusts
#to dimension of web browser
shinyUI(fluidPage(
	titlePanel("Territory Analysis"),
	
	sidebarLayout(
		sidebarPanel(
				fileInput("fileData", label = h4("File Input")),
				p("--or--"),
				h4("Simulated Data"),
				checkboxInput("simData", label = "UTM", 
				value = TRUE),
				
				br(),
				br(),
			
				
				sliderInput("range", label = "Time range",
				min = 1, max = 75, value = c(1, 20)),	
	
				sliderInput("height", label = h5("Height"),
				min = 0, max = 10, value = 5)
				
		),
			

		mainPanel(tabPanel("Main", plotOutput("plot", 
		height = 500)))
		
		)
))