 Plot1.R

library(datasets)
library(lettice)
libarary(ggplot2)


 hxd <- read.table("day1-2.txt", sep = ";", stringsAsFactors = TRUE )

xnames <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2",Sub_metering_3" )

names(hxd) <- xnames

#### plot the historgram

    hist(hxd$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (killowatt)" )



## save the graph in a png device file
 
 dev.copy(png, file = "Plot1.png", bg = "transparent", width = 480, height = 480, units = "px")
 dev.off()

##preview "plot1.png" 



