ui <- fluidPage(
  sidebarPanel(
    shiny::numericInput("bp", "BP", 5600),
    shiny::numericInput("sd", "+/-", 60)),
  mainPanel(
    plotOutput("plot"))
)
server <- function(input, output) {
  output$plot <- renderPlot({
    c14date <- Bchron::BchronCalibrate(ages=input$bp,
                               ageSds=input$sd,
                               calCurves='intcal13',
                               ids='date')
    plot(c14date)
  })
}
shinyApp(ui, server)

