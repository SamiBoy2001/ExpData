### Plot2.R

library(datasets)
library(dplyr)
library(lubridate)
library(lettice)
libarary(ggplot2)

### saved 2 days data in day1-2.txt
 
 hxd <- read.table("day1-2.txt", sep = ";", stringsAsFactors = TRUE )

             xnames <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2", "Sub_metering_3" )

             names(hxd) <- xnames

#### convert dates to wkays
            hxd1 <- mutate(hxd, Day=wday(Date, label = TRUE))

### Drop the date,time for plotting
          hxd2 <- subset(hxd1, select = c(-Date, -Time))


#### plot the data -  Not getting any data for Thu,Fri,Sat - plotting Wed and Sunday   
 
             qplot(Day,Global_active_power, data = hxd2, xlab = "Days", ylab = "Global Active Power (killowatts)")


## save the graph in a png device file
 
 dev.copy(png, file = "Plot2.png", bg = "transparent", width = 480, height = 480, units = "px")
 dev.off()

##preview "plot2.png" 



