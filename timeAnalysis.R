dtw_plot <- function(data, tall, windStart, windEnd) {
	
	timeLen = nrow(data)
	
	loopX <- rep(NA, timeLen)
	loopY <- rep(NA, timeLen)
	loopId <- rep(NA, timeLen)
	loopHeight <- rep(NA, timeLen)

	#For each value in time
	#add corresponding values in data
	#to loopX and loopY(temp data)
	for (k in 1:timeLen) {

		if ((data$time[k] >= windStart) &&
		    (data$time[k] <= windEnd)) {

			loopX[k] = data$x[k];
			loopY[k] = data$y[k];
			loopId[k] = data$id[k];
			loopHeight[k] = data$height[k];
		}	

	}

	#Determine nonzeros in loopX and loopY
	#If more than 3 points calculate KDE. 
	tempX = subset(loopX,loopX != "NA")
	tempY = subset(loopY,loopY != "NA")
	tempId = subset(loopId, loopId != "NA")
	tempHeight = subset(loopHeight, loopHeight != "NA")

	if (length(tempX) >= 3) {
	
		tempData <- matrix(c(tempX, tempY, tempId, tempHeight), ncol=4)
		colnames(tempData) <- c("x", "y", "id", "height")
		data <- data.frame(tempData)
		
		# New data.frame for height data
		tallData <- subset(data, height >= tall)		
		
		scatterplot3d(tallData$x, tallData$y,
			 tallData$height, color=tallData$id, pch=21, xlab="", ylab="",
			  zlab="Height", main="Perches Above Specified Heights")
			  

	}

	#END 
}