heightShiny
===========

Shiny (R) visualization of X, Y, Z bird data

requires R and Shiny installed 

> library(Shiny)

data - 
        store partially simulated data inside (CSV) of
        three birds with GPS (X and Y coordinates)
        height (Z coordinate) data. Additionally, seed 
        data for each of the three birds (not used yet). 
        
server.R -
        server script builds app 
        
ui.R -
        user interface script controls layout
        
timeAnalysis.R -
        time window based analysis

Launch Shiny App of this data with the commands: 

heightShiny - 

> runGithub(heightShiny, ShyneColdchain) 

