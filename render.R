#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# Set CRAN to a fixed date to get compatible package versions
options(repos = c(CRAN = "https://packagemanager.posit.co/cran/2023-02-01"))

# List of required packages
required_packages <- c("shiny", "knitr", "rmarkdown", 
                       "tidyverse", "gridExtra", "paletteer", 
                       "reshape2", "scales")

# Function to check and install missing packages
install_if_missing <- function(pkg) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    install.packages(pkg)
  }
}

# Install any missing packages
sapply(required_packages, install_if_missing)

# Load all packages
lapply(required_packages, library, character.only = TRUE)

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
