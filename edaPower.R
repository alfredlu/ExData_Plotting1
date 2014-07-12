## This script explore the Electric power consumption
## data set from UC Irvine Machine Learning Repository
## and make some exploratory plots
## to examine how household energy usage varies over a 
## 2-day period in February, 2007

rm(list=ls());
source("readData.R");

dataSub <- readData();

## Following code construct the plot and save it to a PNG file with a 
## width of 480 pixels and a height of 480 pixels.

source("plot1.R");
plot1(dataSub);

source("plot2.R");
plot2(dataSub);

source("plot3.R");
plot3(dataSub);

source("plot4.R");
plot4(dataSub);