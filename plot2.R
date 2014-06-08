plot2 <- function(){
    power <- read.table('household_power_consumption.txt', header = TRUE, sep = ';', na.strings = '?')
    power.split <- split(power, power$Date)
    power.use <- rbind(power.split$'1/2/2007', power.split$'2/2/2007')
    power.use$Date <- as.POSIXct(power.use$Date, format = '%d/%m/%Y')
    xaxis <- paste(power.use$Date, power.use$Time)
    xaxis <- as.POSIXct(xaxis)
    Sys.setlocale("LC_TIME", "C")
    png('plot2.png')
    plot(xaxis, power.use$Global_active_power, type = 'l', ylab = 'Global Active Power(kilowatts)', xlab = '')
    dev.off()
}