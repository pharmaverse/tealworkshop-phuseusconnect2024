# Let's create a very simple teal app
# 
# ?teal::init
# - what are the required parameters?
# 
# ?modules and module
# 
library(teal)

app <- init(
  data = teal_data(
    dummy_data = data.frame()
  ),
  modules = modules(
    module(
      ui = function(id){
        label = "hello world module"
        tags$div("Hello World 1")
      }
    ),
    module(
      ui = function(id){
        label = "hello world module"
        tags$div("Hello World 2")
      }
    )
  )
)

shinyApp(app$ui, app$server)