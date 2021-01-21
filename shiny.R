# library(shiny)
# ui <- shinyUI(
#   fluidPage(
#     includeHTML(rmarkdown::render("index.Rmd"))
#   )
# )
# server <- function(input, output) { }
# 
# shinyApp(ui, server) 

library(shiny)
library(knitr)

ui <- shinyUI(
    fluidPage(
      includeHTML(rmarkdown::render("index.Rmd"))
    )
)
server <- function(input, output) {
  output$markdown <- renderUI({
    HTML(markdown::markdownToHTML(knit('index.rmd', quiet = TRUE)))
  })
}

shinyApp(ui, server)