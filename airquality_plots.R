#
#
#
#
#loading libraries
library(ggplot2)
library(dplyr)
library(data.table)
#downloading data
zip.file.url<- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip'
zip.file.name<- 'exdata_data_NEI_data.zip'
file.1.name<- 'Source_Classification_Code.rds'
file.2.name <- 'summarySCC_PM25.rds'
folder.name <- ""
if (!file.exists(zip.file.name)){download.file(zip.file.url,destfile = zip.file.name )}
if (!file.exists(file.1.name)| !file.exists(file.2.name)){unzip(zip.file.name )}
#reading data
pm.summary <- readRDS(file.2.name)
pm.source <- readRDS(file.1.name)
