plot3 <- function(dataSub) {
    png(file = "plot3.png", width = 480, height = 480);
    
    with(dataSub,plot(dateTime,
         Sub_metering_1,type="l",col="black",
         ylab="Energy sub metering",
         xlab=""));
    with(dataSub,lines(dateTime,Sub_metering_2, col="red"));
    with(dataSub,lines(dateTime,Sub_metering_3, col="blue")); 
    
    legend("topright", col=c("black","red","blue"),lwd=1,
           legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"));
    
    graphics.off(); ## Don't forget to close the PNG device!    
}