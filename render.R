#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(knitr)
Sys.setenv(RSTUDIO_PANDOC = "pandoc-3.1.8")

# Define UI for application that draws a histogram
ui <- fluidPage(
  textInput("area", value = "Burwood", label = "Suburb:"),
  actionButton("Submit", "Submit"),
)

# Define server logic required to draw a histogram
server <- function(input, output, session) {
  observeEvent(input$Submit, {
    rmarkdown::render("Demographics.rmd", params = list(Area = input$area))
    browseURL("Demographics.html")
  })
}

# Run the application
shinyApp(ui = ui, server = server, options = list(launch.browser = TRUE))
