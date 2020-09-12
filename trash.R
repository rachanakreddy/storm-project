
#FULL MAP -USELESS

storms1 = storms %>% slice(1:707)
storms2 = storms %>% slice(708:1554)

storms3 = storms %>% slice(1555:2673)
storms4 = storms %>% slice(2674:3984)

storms5 = storms %>% slice(3985:5394)
storms6 = storms %>% slice(5395:7379)

storms7 = storms %>% slice(7380:8672)
storms8 = storms %>% slice(8673:10010)

namecolor1 = colorFactor ( palette = "Reds", domain = storms1$name)
namecolor2 = colorFactor ( palette = "Purples", domain = storms2$name)
namecolor3 = colorFactor ( palette = "Oranges", domain = storms3$name)
namecolor4 = colorFactor ( palette = "Greens", domain = storms4$name)
namecolor5 = colorFactor ( palette = "Blues", domain = storms5$name)
namecolor6 = colorFactor ( palette = "Greys", domain = storms6$name)
namecolor7 = colorFactor ( palette = "Set2", domain = storms7$name)
namecolor8 = colorFactor ( palette = "Dark2", domain = storms8$name)


leaflet() %>% 
  addProviderTiles(providers$CartoDB.DarkMatter) %>%
  addCircleMarkers(lat = storms1$lat, lng = storms1$long,  popup = paste("Name:", storms1$name), color = namecolor1(storms1$name), group = "1975-1980") %>%
  addCircleMarkers(lat = storms2$lat, lng = storms2$long,  popup = paste("Name:", storms2$name), color = namecolor2(storms1$name), group = "1981-1985") %>%
  addCircleMarkers(lat = storms3$lat, lng = storms3$long,  popup = paste("Name:", storms3$name), color = namecolor3(storms1$name), group = "1986-1990") %>%
  addCircleMarkers(lat = storms4$lat, lng = storms4$long,  popup = paste("Name:", storms4$name), color = namecolor4(storms1$name), group = "1991-1995") %>%
  addCircleMarkers(lat = storms5$lat, lng = storms5$long,  popup = paste("Name:", storms5$name), color = namecolor5(storms1$name), group = "1996-2000") %>%
  addCircleMarkers(lat = storms6$lat, lng = storms6$long,  popup = paste("Name:", storms6$name), color = namecolor6(storms1$name), group = "2001-2005") %>%
  addCircleMarkers(lat = storms7$lat, lng = storms7$long,  popup = paste("Name:", storms7$name), color = namecolor7(storms1$name), group = "2006-2010") %>%
  addCircleMarkers(lat = storms8$lat, lng = storms8$long,  popup = paste("Name:", storms8$name), color = namecolor8(storms1$name), group = "2011-2015") %>%
  addLayersControl(
    baseGroups =c("1975-1980", "1981-1985","1986-1990", "1991-1995", "1996-2000", "2001-2005", "2006-2010", "2011-2015"),
    options = layersControlOptions(collapsed=FALSE)
  )
#addLegend('bottomright', pal = namecolor1, values = storms1$name,
#title = 'Names',
#opacity = 1)



