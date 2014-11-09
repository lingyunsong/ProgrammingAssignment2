#codes for Exploratory Data Aanalysis project 1, Plot2.npg
#set up directory
setwd( "C:/Users/jason/Desktop/Coursera_homeworks/exploratory_data/")
#read data into R
household <- read.csv("household_power_consumption.txt", header=T, sep=';', na.string='?')
#subset the data to two days
household_sub <- subset(household, Date == "1/2/2007" | Date == "2/2/2007", select=Date:Sub_metering_3)
#combine "Date' and "Time" into one variable and remove the old column "Date"
household_sub$Time <- strptime(paste(household_sub$Date, household_sub$Time), "%d/%m/%Y %H:%M:%S") 
household_sub <- household_sub[, -1]
#check the data before plotting
head(household_sub)

#plot plot2.png
x <- household_sub$Time
y <- household_sub$Global_active_power
png(filename = "plot2.png", width = 480, height = 480, pointsize = 12, bg = "white")
plot2.png <- plot(x, y, type = "l", xlab="", ylab="Global Active Power (kiloWatts)" )
dev.off()



