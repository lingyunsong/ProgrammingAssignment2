#codes for Exploratory Data Aanalysis project 1, Plot4.npg
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

#plot plot4.png
png("plot4.png", width=480, height=480, pointsize = 12, bg = "white")
plot4.png <- par(mfrow = c(2,2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))
with(household_sub, {
#panel_1
 plot(Time, Global_active_power, type = "l",xlab = "", ylab="Global Active Power" )
#panel_2
 plot(Time, Voltage, type = "l",xlab = "datetime", ylab = "Voltage")
#panel_3
 plot(Time, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering", col ="black")
 lines(Time, Sub_metering_2, type = "l", col = "red")
 lines(Time, Sub_metering_3, type = "l", col = "blue")
 legend("topright",bty="n",  col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty =1)
#panel_4
 plot (Time, Global_reactive_power,type = "l", xlab = "datetime", ylab = "Global_reactive_power")
 
})
dev.off()


