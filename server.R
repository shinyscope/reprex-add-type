shinyServer(function(input, output, session) {

  observeEvent(input$add_type, {
    modal_confirm <- modalDialog(
      "Name of assignment type",
      footer = tagList(
        textInput("type_name", "", value = "", width = NULL, placeholder = NULL),
        actionButton("add", "Add")
      )
    )
    showModal(modal_confirm)
    
  })
})