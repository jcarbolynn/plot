server <- function(input, output, session) {
  dataset <- reactive({
    get(input$datasets, "package:ggplot2")
  })
  
  output$summary <- renderPrint({
    summary(dataset())
  })
  
  output$plot <- renderPlot({
    plot(dataset())
  }, res = 96)
}
