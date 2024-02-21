library(teal.modules.general)

ADSL <- teal.modules.general::rADSL
ADAE <- teal.modules.general::rADAE

app <- teal::init(
  data = cdisc_data(
    ADSL = ADSL,
    ADAE = ADAE,
    code = "
      ADSL <- teal.modules.general::rADSL
      ADAE <- teal.modules.general::rADAE
    "
  ),
  modules = teal::modules(
    teal.modules.general::tm_data_table(
      label = "Data Table",
      variables_selected = list(ADSL = c("STUDYID", "USUBJID", "SUBJID", "SITEID", "AGE", "SEX", "COUNTRY")),
      dt_args = list(caption = "ADSL Table Caption")
    ),
    teal.modules.general::tm_missing_data(
      label = "Missing Data",
      ggplot2_args = list(
        "Combinations Hist" = teal.widgets::ggplot2_args(
          labs = list(subtitle = "Plot produced by Missing Data Module", caption = NULL)
        ),
        "Combinations Main" = teal.widgets::ggplot2_args(labs = list(title = NULL))
      )
    )
  )
)

shinyApp(app$ui, app$server)
