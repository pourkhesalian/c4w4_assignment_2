#1
total.emit.yearly<- pm.summary %>% 
  group_by(year) %>%
  summarise(total.emission= sum(Emissions))
png(filename = 'plot1.png')
with(total.emit.yearly,
     plot(x= year, 
          y= total.emission,
          ylab = 'Total PM2.5 emission (tonnes)'))
dev.off()
