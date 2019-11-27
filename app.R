source("helpers.R")
source("ui.R")
counties <- readRDS("data/counties.rds")
library(maps)
library(mapproj)

# Run app ----
shinyApp(ui, server)