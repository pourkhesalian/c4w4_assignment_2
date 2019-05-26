#plot 4

coal.type.id<-as.character( pm.source$SCC[grep('[Cc]oal', pm.source$Short.Name)])
coal.comb <- pm.summary[which(pm.summary$SCC %in% coal.type.id),]
head(coal.comb)
coal.comb.yearly <- coal.comb %>% 
  group_by(year)%>%
  summarise(total.emission=sum(Emissions))

png(filename = 'plot4.png')
with(coal.comb.yearly,
     plot(x= year, 
          y= total.emission,
          ylab = 'Total PM2.5 emission (tonnes)',
          title('PM2.5 from coal combustion')))
          
dev.off()
