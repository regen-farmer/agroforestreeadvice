
server <- function(input, output, session) {
  
  # Reactive expression for the selected language
  language <- reactive({
    input$in_language
  })
  
  # Flanders tree advice ----
  
  moduleTabInterface_Server( # nom de la fonction server du module
    
    id = "DENTRO", # Attention à bien donner le même id que dans ui !
    language= language,
    
    data = dataDENTRO, interface= interfaceDENTRO, functionSuitability=compute_suitability_DENTRO )
  
  
  # Shade tree advice ----
  
  moduleTabInterface_Server(id = "STA",
                            language= language,
                            data=dataSTA, interface=interfaceSTA, functionSuitability=compute_suitability_STA)
  
  
  # Deciduous ----
  
  moduleTabInterface_Server(id = "DECIDUOUS",
                            language= language,
                            data=dataDECIDUOUS, interface=interfaceDECIDUOUS, functionSuitability=compute_suitability_DECIDUOUS)
  
  
}

