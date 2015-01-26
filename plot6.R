NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
years <-tapply(NEI$Emissions, NEI$year, sum)

png(file = "plot6.png", width = 480, height = 480)
barplot(years,col=years)

dev.off()
