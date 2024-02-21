# Let's create a very simple teal app
# 
# ?teal::init
# - what are the required parameters?
# 
# ?teal_data
# Show what the data object looks like
# 
# ?modules and module
# 
# Let's use a module from teal.modules.general
# ?teal.modules.general -> index
# ?tm_data_table
# use tm_data_table, change the label value to "Data Table Module"
# 
# add header: PHUSE US Connect 2024 teal Workshop

library(teal.modules.general)

app <- init(
  data = teal_data(
    iris = iris,
    mtcars = mtcars
  ),
  modules = modules(
    tm_data_table(
      label = "Data Table Module"
    )
  ),
  header = tags$h1("PHUSE US Connect 2024 teal Workshop")
)

shinyApp(app$ui, app$server)