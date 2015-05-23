#
# Question 1: 
# 	Have total emissions from PM2.5 decreased in the United States 
#	from 1999 to 2008? Using the base plotting system, make a plot 
#	showing the total PM2.5 emission from all sources for each of 
#	the years 1999, 2002, 2005, and 2008.
#

# Exploratory plan:
# 1. Check data.
# 2. Calculate avg data for Emissions for each year. Store in vectors.
# 3. Make plot and annotate.
#

# Read data
#NEI <- readRDS("summarySCC_PM25.rds")
#SCC <- readRDS("Source_Classification_Code.rds")

# Check structure of data
unique(NEI$year)
#[1] 1999 2002 2005 2008
unique(NEI$Pollutant)
#[1] "PM25-PRI"
unique(NEI$type)
#[1] "POINT"    "NONPOINT" "ON-ROAD"  "NON-ROAD"
sum(is.na(NEI$Emissions))
# [1] 0
sum(NEI$Emissions > 0)
# [1] 6169157
sum(NEI$Emissions >= 0)
# [1] 6497651
sum(NEI$Emissions == 0)
# [1] 328494
sum(NEI$Emissions < 0)
# [1] 0

# get meaning value of emissions for each year
yearsEmissionMean <- function(data, years = vector()) {
	yMean <- vector()
	for(year in years) {
		yMean <- c(yMean, mean(data$Emissions[data$year == year]))
	}
	yMean
}
# get years from data
years <- unique(NEI$year)

# get years meaning
yearsMean <- yearsEmissionMean(NEI, years)

# draw graph
plot(years, yearsMean, xlab = "Years", ylab = "Year mean value of PM2.5", 
     ylim = range(0, yearsMean))

title(main = "Total emissions from PM2.5 in the United States")

lines(years, yearsMean)






