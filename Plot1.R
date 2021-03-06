getwd()
data <- read.table("./data/power/household_power_consumption.txt",header=TRUE,sep=";",stringsAsFactors = FALSE, dec=".")
str(data)
subset <- data[data$Date %in% c("1/2/2007","2/2/2017") ,]
str(subset)
head(subset)

GAP <- as.numeric(subset$Global_active_power)
png("plot1.png", width=480, height=480)
hist(GAP, col="red", main="Global Active Power", xlab="global Active Power (killowatts)", ylab="Frequency")
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
