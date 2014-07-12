plot1 <- function(dataSub) {
    png(file = "plot1.png", width = 480, height = 480);
    
    hist(dataSub$Global_active_power,
         main = "Global Active Power",
         xlab = "Global Active Power (kilowatts)",
         ylab = "Frequency",
         col = "Red");

    graphics.off(); ## Don't forget to close the PNG device!    
}