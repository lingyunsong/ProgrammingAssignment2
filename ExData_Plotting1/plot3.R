#codes for Exploratory Data Aanalysis project 1, Plot3.npg
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

#plot plot3.png
x <- household_sub$Time
y1 <- household_sub$Sub_metering_1
y2 <- household_sub$Sub_metering_2
y3 <- household_sub$Sub_metering_3
png(filename = "plot3.png", width = 480, height = 480, pointsize = 12, bg = "white")
plot3.png <- plot(x,y1, type = "l",xlab = "", ylab="Energy sub metering", col = "black")
lines(x, y2, type = "l", col = "red")
lines(x, y3, type = "l", col = "blue")
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty =1)
dev.off()




