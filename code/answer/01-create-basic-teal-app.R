library(teal)

app <- init(
  data = teal_data(IRIS = iris, MTCARS = mtcars),
  modules = example_module()
)

shinyApp(app$ui, app$server)