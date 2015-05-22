#
# Question 1: 
# 	Have total emissions from PM2.5 decreased in the United States 
#	from 1999 to 2008? Using the base plotting system, make a plot 
#	showing the total PM2.5 emission from all sources for each of 
#	the years 1999, 2002, 2005, and 2008.
#

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



