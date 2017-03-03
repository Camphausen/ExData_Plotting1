## rm(list=ls())
## set your own working directory
wd <- "C:/Users/Max/Dropbox/Health-IT/coursera/Data Science - Johns Hopkins University/Course 4 - Exploaratory Data Analysis"
setwd(wd)

data_dir <- "data"
if(!file.exists(data_dir)){dir.create(data_dir)}
setwd(file.path(wd,data_dir))

## Download data zip file and unzip it
##
fn <- "dataset.zip"
fUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fUrl,fn,method="curl")
unzip(zipfile=fn)

## Read data from the files into the variables
## 
datafile <- "household_power_consumption.txt"

install.packages("sqldf")
library(sqldf)
hhpc <- read.csv.sql(datafile, sql="select * from file where `Date` In ('1/2/2007','2/2/2007')",header=TRUE,sep=";")

## Convert dates
datetime <- strptime(paste(hhpc$Date, hhpc$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
hhpc$DT <- as.POSIXct(datetime)

