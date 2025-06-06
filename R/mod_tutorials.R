
#------------------------------------------------------------- TUTORIALS UI ----
tutorials_ui = function(id){
  ns = shiny::NS(id)
  shiny::fluidRow(
    shiny::column(
      width = 12,
      shiny::h2('Tutorials'),
      shiny::p("Video tutorials are available on our github page for the following subjects:  "),
      shiny::p(
        shiny::a(
          href = "https://github.com/isodaonline/iSODA?tab=readme-ov-file#single-omics-data-upload-",
          target = "_blank",
          "Single-omics data upload"
        )
      ),
      shiny::p(
        shiny::a(
          href = "https://github.com/isodaonline/iSODA?tab=readme-ov-file#upload-feature-annotation-and-processing-sparse-annotations-",
          target = "_blank",
          "Upload feature annotation and processing sparse annotations"
        )
      ),
      shiny::p(
        shiny::a(
          href = "https://github.com/isodaonline/iSODA?tab=readme-ov-file#functional-analysis-using-sparse-annotations-",
          target = "_blank",
          "Functional analysis using sparse annotations"
        )
      ),
      shiny::p(
        shiny::a(
          href = "https://github.com/isodaonline/iSODA?tab=readme-ov-file#single-omics-data-visualization-",
          target = "_blank",
          "Single-omics data visualization"
        )
      ),
      shiny::p(
        shiny::a(
          href = "https://github.com/isodaonline/iSODA/tree/main?tab=readme-ov-file#multi-omics-data-visualization-",
          target = "_blank",
          "Multi-omics data visualization"
        )
      ),
      shiny::p(
        shiny::a(
          href = "https://github.com/isodaonline/iSODA/tree/main?tab=readme-ov-file#save-multi-omics-data-",
          target = "_blank",
          "Save multi-omics data"
        )
      ),
      shiny::p(
        shiny::a(
          href = "https://github.com/isodaonline/iSODA/tree/main?tab=readme-ov-file#save-single-omics-data",
          target = "_blank",
          "Save single-omics data"
        )
      )
    )
  )
}

#--------------------------------------------------------- TUTORIALS server ----

tutorials_server = function(id, main_output) {
  shiny::moduleServer(
    id,
    function(input, output, session) {
      
    }
  )
}



