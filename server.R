shinyServer(function(input, output, session) {
  type_names <- c()
  observeEvent(input$add_type, {
    type_names <- c(type_names, input$type_name)
    output$types <- renderUI({
      purrr::map(type_names, ~ sliderInput(.x, "weight", min = 0, max = 1, value = 0))
    })
  })
})