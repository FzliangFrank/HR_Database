#' visNetworkWrite UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_visNetworkWrite_ui <- function(id){
  ns <- NS(id)
  tagList(
    visNetwork::visNetworkOutput(ns(plot)),
    downloadButton(ns(export))
  )
}

#' visNetworkWrite Server Functions
#'
#' @noRd
mod_visNetworkWrite_server <- function(id, igraphObj){
  # stop if not
  moduleServer( id, function(input, output, session){
    ns <- session$ns

  })
}

## To be copied in the UI
# mod_visNetworkWrite_ui("visNetworkWrite_1")
## To be copied in the server
# mod_visNetworkWrite_server("visNetworkWrite_1")
