# Adding Default filters
# 
# ?teal::init --> filter argument
# ?teal::teal_slices
# ?teal.slice::teal_slice
# 
# add default filter on iris, Sepal.Length column
# add default filter on iris, Species column, with selected value virginica
# add default fixed filter on mtcars, cyl column, with selected value 6, 8
# add default anchored filter on mtcars, gear column
# add anchored and fixed filter on am (transmission), with selected value 1 (manual)
# create custom expression on iris where Petal.Length > 4 & Petal.Width > 1
# add count_type argument and set it to "all", what happens now?

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
  header = tags$h1("PHUSE US Connect 2024 teal Workshop"),
  # your code here
)

shinyApp(app$ui, app$server)