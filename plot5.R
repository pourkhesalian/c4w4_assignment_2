#plot 5

subset(pm.summary, type=="ON-ROAD" & fips=="24510") -> pm.vehicle.baltimore
str(pm.vehicle)

pm.vehicle.baltimore.yearly <- pm.vehicle.baltimore %>% 
  group_by(year)%>%
  summarise(total.emission=sum(Emissions))

png(filename = 'plot4.png')
with(pm.vehicle.baltimore.yearly,
     plot(x= year, 
          y= total.emission,
          ylab = 'Total PM2.5 emission (tonnes)',
          title('PM2.5 from motor vehicles in Baltimore')))

dev.off()
