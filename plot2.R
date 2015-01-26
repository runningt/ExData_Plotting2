NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
balt = NEI[which(NEI$fips == 24510),]
years <-tapply(balt$Emissions, balt$year, sum)

png(file = "plot2.png", width = 480, height = 480)
barplot(years,col=years)

dev.off()
