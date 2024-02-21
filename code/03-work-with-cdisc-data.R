# teal with cdisc data
# 
# First thing first, we need to create the object
# For cdisc, we use cdisc_data()
# 
# ?teal.data::cdisc_data
# 
# We'll use teal.modules.clinical
# ?teal.modules.clinical -> index
# 
# Check available example data from tmc
# data(package = "teal.modules.clinical")
# let's get data from tmc: ADSL and ADTTE
# 
# add tm_t_summary on ADSL
# - label = "Demographic Table"
# - arm_var: choices ARM, ARMCD : selected = "ARM"
# - summarize_vars: choices "SEX", "RACE", "BMRKR2", "EOSDY", "DCSREAS", "AGE" : selected "SEX", "RACE"
# 
# let's add visualization module
# ?tm_g_km
# 
# # explain about choices_selected wrapper
# ?choices_selected
# 
# explain about variable_choices wrapper
# ?variable_choices
# 
# explain about value_choices wrapper
# ?value_choices
# 
# add tm_g_km module
# - arm_var: choices "ARM", "ARMCD", "ACTARMCD" : selected = "ARM"
# - paramcd: value choices "PARAMCD", "PARAM" : selected = "OS"
# - strata_var: variable choices "SEX", "BMRKR2" : selected = NULL
# - facet_var: variable choices "SEX", "BMRKR2" : selected = NULL
# - plot_height 600L, 400L, 5000L

library(teal.modules.clinical)

ADSL <- teal.modules.clinical::tmc_ex_adsl
ADAE <- teal.modules.clinical::tmc_ex_adae
ADTTE <- teal.modules.clinical::tmc_ex_adtte

app <- init(
  data = cdisc_data(
    # your code here
    
  ),
  modules = modules(
    # your code here
    
  ),
  header = tags$h1("PHUSE US Connect 2024 teal Workshop")
)

shinyApp(app$ui, app$server)