plot4 <- function(dataSub) {
    
    png(file = "plot4.png", width = 480, height = 480);
    
    par(mfrow=c(2,2));
    
    with(dataSub, plot(dateTime,
                       Global_active_power,type="l",
                       ylab="Global Active Power",xlab=""));
    
    with(dataSub,plot(dateTime,
                      Voltage,type="l",col="black",
                      ylab="Voltage",
                      xlab="datatime"));
    
    with(dataSub,plot(dateTime,
                      Sub_metering_1,type="l",col="black",
                      ylab="Energy sub metering",
                      xlab=""));
    with(dataSub,lines(dateTime,Sub_metering_2, col="red"));
    with(dataSub,lines(dateTime,Sub_metering_3, col="blue")); 
    
    legend("topright", col=c("black","red","blue"),lwd=1,bty="n",
           legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"));
    
    with(dataSub,plot(dateTime,
                      Global_reactive_power,type="l",col="black",
                      ylab="Global_reactive_power",
                      xlab="datatime")); 
        
    graphics.off(); ## Don't forget to close the PNG device!    
}