### Plot4.R

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

 par(mfrow = c(1,2,3,4), mar = c(4,4,2,1))

#### plot the data -  voltage

    with(hxd2, plot(hxd2$Day, hxd2$Global_active_power, type = "n", xlab = "Days", ylab = "Voltage"))
    with(subset(hxd2, Day == "Thu"), points(Voltage = "blue"))
    with(subset(hxd2, Day == "Fri"), points(Voltage, col = "red"))
    with(subset(hxd2, Day == "Sat"), points(Voltage, col = "green"))
    with(subset(hxd2, Day == "Tue"), points(Voltage, col = "blue"))
     with(subset(hxd2,Day == "Wed"),points(Voltage,  col = "red" ))
     with(subset(hxd2,Day == "Sun"), points(Voltage, col = "green" ))

 
 dev.copy(png, file = "Plot4.png", bg = "transparent", width = 524, height = 524, units = "px")
 dev.off()

##preview "plot3.png" 



