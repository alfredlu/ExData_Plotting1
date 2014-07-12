plot2 <- function(dataSub) {
    png(file = "plot2.png", width = 480, height = 480);
    
    with(dataSub, plot(dateTime,
                       Global_active_power,type="l",
                       ylab="Global Active Power (kilowatts)",xlab=""));
    
    graphics.off(); ## Don't forget to close the PNG device!    
}