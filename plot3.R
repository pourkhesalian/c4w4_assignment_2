#plot 3
baltimore.emission<- subset(pm.summary, fips=="24510")
baltimotr.emission.type <- baltimore.emission %>%
  group_by(type, year)%>%
  summarise(total.emission= sum(Emissions))
png('plot3.png')
ggplot(data= baltimotr.emission.type, aes(x= year, y= total.emission))+
  geom_point()+
  geom_line(color= 'blue', lty=2)+
  facet_wrap(.~ type)+
  labs(x='Year', y='PM2.5 Emissions (tonnes)', title = 'Changes in PM2.5 in Baltimore')
dev.off()
