library(shiny)
# library(openxlsx)
library(bibtex)
library(RefManageR)
# library(rcrossref)
# library(purrr)
library(dplyr)
# library(bib2df)
# library(readtext)
# library(repmis)
# library(rbibutils)

# gh.master <- 'https://raw.github.com/zoometh/C14/master/'
# gh.master <- 'https://github.com/zoometh/C14/blob/main/'
gh.master <- 'C:/Users/supernova/Dropbox/My PC (supernova-pc)/Documents/C14/'
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
c14bibtex.url <- paste0(gh.master, 'neonet/references_france.bib')
bib <- read.bib(c14bibtex.url)
bib <- sort(bib) # sort
bibrefs <- capture.output(print(bib))
bibrefs <- replace(bibrefs, bibrefs == "", "<br><br>") # HTML layout

# Define UI for application that draws a histogram
ui <- navbarPage(
  tabPanel("references",
           fluidPage(
             htmlOutput("references")
           )
  )
)
server <- function(input, output) {
  output$references <- renderText({ 
    # a.bibref
    # 'dede deed <br> edededed'
    bibrefs
  })
}

# Run the application 
shinyApp(ui = ui, server = server)