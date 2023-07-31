#Reading txt data 

file <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")

#subset data

subdata <- subset(file,file$Date=="1/2/2007" | file$Date =="2/2/2007")


#plotting histogram

hist(as.numeric(as.character(subdata$Global_active_power)), xlab = "Global Active Power(kilowatts)", col = "red", main = "Global Active Power")

#saving histogram

png("plot1.png", width=480, height=480)

dev.off()
