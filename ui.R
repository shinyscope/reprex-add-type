shinyUI(
  
  fluidPage(
    fluidRow(column(3, textInput("type_name", label = "",
              value = "Enter name of type...")),
             column(1, br(), actionButton("add_type", label = "Add"))),
    hr(),
    uiOutput("types")
  ))