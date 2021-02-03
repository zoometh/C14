library(rnrfa)
library(shiny)
library(leaflet)
library(tidyverse)
library(sf)

url.root <- 'https://archaeologydataservice.ac.uk/catalogue/adsdata/arch-282-11/'
dendro.list.url <- paste0(url.root, 'dissemination/csv/ind_ful_to50.csv&hs=true')
dendro.list <- read.csv(dendro.list.url, stringsAsFactors = F)
# clean the database
dendro <- dendro.list[nchar(dendro.list$GRID_LETTE) == 2, ]
dendro <- dendro[nchar(dendro$EASTING) == 3, ]
dendro <- dendro[nchar(dendro$NORTHING) == 3, ]
dendro <- dendro[!is.na(dendro$YEAR_SHORT), ]
dendro$GEO <- paste0(dendro$GRID_LETTE, dendro$EASTING, dendro$NORTHING)
# convert British National Grid coord. system to CRS 27700
dendro.coords <- osg_parse(dendro$GEO)
dendro$lon = dendro.coords[[1]]
dendro$lat = dendro.coords[[2]]
# convert CRS 27700 to lat/long
nDB <- dendro %>%
  st_as_sf(coords = c("lon", "lat"), crs = 27700) %>%
  st_transform(4326) %>%
  st_coordinates() %>%
  as_tibble()
dendro.dec <- cbind(dendro, nDB)
# filter on year
dendro.dec <- dendro.dec[dendro.dec$YEAR_SHORT < input$dend.thrs]
# color ramp and features labels
colpal <- colorBin("RdYlGn", dendro.dec$YEAR_SHORT, bins  = 10)
dendro.dec$lbl <- paste("numero:", dendro.dec$LIST_SEQ, '<br>',
                        "year:", dendro.dec$YEAR_SHORT)
# plot map with B/W background
leaflet(options = leafletOptions(zoomControl = FALSE)) %>%
  addProviderTiles(providers$Stamen.Toner) %>%
  addCircleMarkers(data = dendro.dec,
                   lng = ~X,
                   lat = ~Y,
                   popup = ~lbl,
                   color = ~colpal(YEAR_SHORT),
                   radius = 0.3,
                   opacity = 1) %>%
  addLegend('bottomright', pal = colpal, values = dendro.dec$YEAR_SHORT,
            title = 'Calendar Year <br> Ranges',
            opacity = 1)

