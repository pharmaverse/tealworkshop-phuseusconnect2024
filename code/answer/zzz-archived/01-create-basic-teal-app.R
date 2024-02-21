# Let's create a very simple teal app
# 
# ?init
# what are the required parameters ?
# 

library(teal)

app <- init(
  data = teal_data(IRIS = iris, MTCARS = mtcars),
  modules = example_module()
)

shinyApp(app$ui, app$server)