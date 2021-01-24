library(openxlsx)
library(dplyr)
library(Bchron)
library(c14bazAAR)
library(grDevices)
library(sp)
# library(RColorBrewer)

# load a database
dbs <- c("radon","calpal","euroevol","pacea","14cpalaeolithic")
db <- "14cpalaeolithic"
dbC14 <- get_c14data(db)
# write.xlsx(dbC14, file = "c14all.xlsx", row.names = TRUE, col.names=TRUE)
# sdb.Fr <- head(db.Fr, 150)
sdb <- dbC14 %>%
  fix_database_country_name() %>%
  determine_country_by_coordinate()
# clean up
sdb.Fr <- sdb[sdb$country_thes == "France",]
sdb.Fr <- sdb.Fr[sdb.Fr$lat <= 46,]
sdb.Fr <- sdb.Fr[sdb.Fr$c14age <= 8000,]
sdb.Fr <- sdb.Fr[sdb.Fr$c14age >= 5000,]
sdb.Fr <-sdb.Fr[!is.na(sdb.Fr$country_thes), ]
nrow(sdb.Fr)
sdb.Fr$tpq <- sdb.Fr$taq <-NA
sdb.Fr <- head(sdb.Fr, 150)
sdb.Fr <- as.data.frame(sdb.Fr)
for (i in 1:nrow(sdb.Fr)){
  #i <- 1
  ages1 <- BchronCalibrate(ages=as.numeric(sdb.Fr[i,"c14age"]),
                           ageSds=as.numeric(sdb.Fr[i,"c14std"]),
                           calCurves='intcal13',
                           ids='Date1')
  max.calBC <- max(ages1$Date1$ageGrid)-1950
  min.calBC<- min(ages1$Date1$ageGrid)-1950
  sdb.Fr[i, "tpq"] <- max.calBC
  sdb.Fr[i, "taq"] <- min.calBC
}
write.xlsx(sdb.Fr, file = paste0("c14_",db,"_NeoNet_Fr.xlsx"),
           row.names = TRUE, col.names=TRUE)


summary(ages1)

xy <- list(longitude=c(sdb.Fr$lon),
           latitude=c(sdb.Fr$lat))
sdb.Fr.sp <- SpatialPointsDataFrame(coords = xy,
                                    data = sdb.Fr,
                                    proj4string = CRS("+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0"))

# sdb.Fr <- sdb.Fr %>%
#   remove_duplicates(mark_only = TRUE)
# spatial subset
sp.ch <- SpatialPolygons(list(Polygons(list(Polygon(coords)),ID=1)))
sp.ch.df <- SpatialPolygonsDataFrame(sp.ch, data=data.frame(ID=1))


long.lat <- cbind(dbC14$lon, dbC14$lat) # matrix
# clean up
long.lat.clean <- long.lat[complete.cases(long.lat), ] # rm NA values
long.lat.clean <- long.lat.clean[(long.lat.clean[,1] >= -90) & (long.lat.clean[,1] <= 90),]
long.lat.clean <- long.lat.clean[(coords.clean[,2] >= -90) & (long.lat.clean[,2] <= 90),]
ch <- chull(long.lat.clean)
coords <- long.lat.clean[c(ch, ch[1]), ]
sp.ch <- SpatialPolygons(list(Polygons(list(Polygon(coords)),ID=1)))
sp.ch.df <- SpatialPolygonsDataFrame(sp.ch, data=data.frame(ID=1))

ui <- bootstrapPage(
  tags$style(type = "text/css", "html, body {width:100%;height:100%}"),
  leafletOutput("map", width = "100%", height = "100%"),
  absolutePanel(top = 10, right = 10,
                sliderInput("range", "BP", min(quakes$mag), max(quakes$mag),
                            value = range(quakes$mag), step = 0.1
                ),
                selectInput("colors", "Color Scheme",
                            rownames(subset(brewer.pal.info, category %in% c("seq", "div")))
                ),
                checkboxInput("legend", "Show legend", TRUE)
  )
)

server <- function(input, output, session) {
  
  # Reactive expression for the data subsetted to what the user selected
  filteredData <- reactive({
    quakes[quakes$mag >= input$range[1] & quakes$mag <= input$range[2],]
  })
  
  # This reactive expression represents the palette function,
  # which changes as the user makes selections in UI.
  colorpal <- reactive({
    colorNumeric(input$colors, quakes$mag)
  })
  
  output$map <- renderLeaflet({
    leaflet(quakes) %>% addTiles() %>%
      fitBounds(~min(long), ~min(lat), ~max(long), ~max(lat))
  })
  
  # Incremental changes to the map (in this case, replacing the
  # circles when a new color is chosen) should be performed in
  # an observer. Each independent set of things that can change
  # should be managed in its own observer.
  observe({
    pal <- colorpal()
    
    leafletProxy("map", data = filteredData()) %>%
      clearShapes() %>%
      addPolygons(data = sp.ch.df,
                  # popup= ~secteur,
                  stroke = TRUE,
                  color = "#000000",
                  weight = 2,
                  fillOpacity = 0,
                  smoothFactor = 0.5)
      # addCircles(radius = ~10^mag/10, weight = 1, color = "#777777",
      #            fillColor = ~pal(mag), fillOpacity = 0.7, popup = ~paste(mag)
  })
  
  # Use a separate observer to recreate the legend as needed.
  observe({
    proxy <- leafletProxy("map", data = quakes)
    
    # Remove any existing legend, and only if the legend is
    # enabled, create a new one.
    proxy %>% clearControls()
    if (input$legend) {
      pal <- colorpal()
      proxy %>% addLegend(position = "bottomright",
                          pal = pal, values = ~mag
      )
    }
  })
}

shinyApp(ui, server)