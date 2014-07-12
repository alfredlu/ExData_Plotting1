readData <- function() {
    ## since missing data is codes as '?'
    cat("start read data...\n");    
    data <- read.csv("household_power_consumption.txt", 
                     sep = ";", header=T, na.strings="?");
    cat("column names: ");
    cat(colnames(data));
    head(data,2);
    data$dateTime <- strptime(
        paste(data$Date,data$Time), 
        format="%d/%m/%Y %H:%M:%S");
    
    poxT <- strptime(as.character(data$Date), format = "%d/%m/%Y");

    dataSub <- data[poxT == as.POSIXlt("2007-02-01") |
                        poxT == as.POSIXlt("2007-02-02"),]    
} 