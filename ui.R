# install.packages("ggplot2")
# library(agridat, shiny, readxl, ggplot2)
# library(ggplot2)

datasets <- c("economics", "faithfuld", "seals")

ui <- fluidPage(
  selectInput("datasets", label = "Dataset", choices = datasets),
  verbatimTextOutput("summary"),
  plotOutput("plot")
)
