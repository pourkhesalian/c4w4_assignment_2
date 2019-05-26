#plot 2

baltimore.emission<- subset(pm.summary, fips=="24510")
baltimore.emission.total.yearly<- baltimore.emission%>%
  group_by(year)%>%
  summarise(total.emission=sum(Emissions))
png(filename = 'plot2.png')
with(baltimore.emission.total.yearly,
     plot(x= year, 
          y= total.emission,
          ylab = 'Total PM2.5 emission (tonnes)'))
dev.off()
