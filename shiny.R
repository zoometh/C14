library(shiny)
library(rmarkdown)
ui <- shinyUI(
  fluidPage(
    includeHTML(rmarkdown::run("index.Rmd"))
  )
)
server <- function(input, output) { }

shinyApp(ui, server) 