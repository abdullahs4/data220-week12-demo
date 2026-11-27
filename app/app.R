# app.R  -  a first Shiny app: choose a show, R redraws the chart
# Run it in RStudio with the "Run App" button, or with shiny::runApp().

library(shiny)       # install.packages("shiny") once
library(ggplot2)
library(dplyr)

episodes <- read.csv("data/episodes.csv")

# ---- ui: what the user sees -------------------------------------------------
ui <- fluidPage(
  titlePanel("Episode ratings"),
  selectInput("show", "Choose a show:", choices = unique(episodes$show)),
  plotOutput("chart")
)

# ---- server: what R does when the user changes something ---------------------
server <- function(input, output) {
  output$chart <- renderPlot({
    one_show <- filter(episodes, show == input$show)

    ggplot(one_show, aes(x = episode_no, y = rating)) +
      geom_line(colour = "grey70") +
      geom_point(colour = "steelblue", size = 2) +
      ylim(4, 10) +
      labs(title = paste(input$show, "-", nrow(one_show), "episodes"),
           x = "Episode (in order of release)", y = "Episode rating (out of 10)")
  })
}

shinyApp(ui, server)
