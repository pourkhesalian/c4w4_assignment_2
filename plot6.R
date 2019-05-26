#plot6


subset(pm.summary, type=="ON-ROAD" & (fips=="24510"| fips=="06037")) -> pm.vehicle.bal.la
pm.vehicle.ba.la.yearly <- pm.vehicle.bal.la %>% 
  group_by(fips,year)%>%
  summarise(total.emission=sum(Emissions))
pm.vehicle.ba.la.yearly$fips<- factor(pm.vehicle.ba.la.yearly$fips, levels = c('06037', '24510'), labels = c('Los Angeles', 'Baltimore'))

png(filename = 'plot6.png')
ggplot(data= pm.vehicle.ba.la.yearly, aes(x= year, y= total.emission))+
  geom_point(aes(color= fips))+
  geom_line(aes(color=fips), lty=2)+
  labs(x='Year', y= 'PM2.5 emissions (tonnes)', title = 'PM2.5 from motor vehicles')

dev.off()
