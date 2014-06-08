plot1 <- function(){
    power <- read.table('household_power_consumption.txt', header = TRUE, sep = ';', na.strings = '?')
    power.split <- split(power, power$Date)
    power.use <- rbind(power.split$'1/2/2007', power.split$'2/2/2007')
    png('plot1.png')
    hist(power.use$'Global_active_power', col = 'red', xlab = 'Global Active Power (kilowatts)', main = 'Global Active Power')
    dev.off()
}