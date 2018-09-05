library(shiny)
library(DT)
library(shinyBS)


# Mocking Data frame
names <- c("Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria",
           "Pepa", "Marta", "Rosa", "Maria")
quality <- c(1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7,
             1, 2, 10, 7)
number_of_sons <- c(5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1,
                    5, 8, 10, 1)
mock <- data.frame(names, quality, number_of_sons)



# Variables related to css stylesheets

style <- "my_css.css"


# Variables related to header and footer

title <- "Calidad de vida en las mujeres solteras"

first_menu_button <- "Estudio 2016"

second_menu_button <- "Estudio 2017"

conclusions_button <- "Conclusiones"


# Submenus

data_2016_button <- "Datos y visualización de familias"

prediction_2016_button <- "Conclusiones y Predicción de calidad de vida"

data_2017_button <- "Datos y visualización de familias"

prediction_2017_button <- "Conclusiones y Predicción de calidad de vida"


# Footer

footer_text <- "Este sera el footer"

logo_tag <- '<img src="logo8.png" alt="logo">'


# Variables related to Home
home_button <- "Home"

home_title <- "Bienvenidos a la pagina o lo que sea"

home_text <-"Una introducción bonita y blablabla Una introducción bonita y blablabla Una introducción bonita y blablabla Una introducción bonita y blablabla 
Una introducción bonita y blablabla Una introducción bonita y blablabla Una introducción bonita y blablabla"

youtube_video <- '<iframe
src="https://www.youtube.com/embed/_0v0If0owbY?rel=0"
frameborder="0" allow="autoplay;
encrypted-media" allowfullscreen></iframe>'


ui <- navbarPage(
  title,
  theme = style,
  footer =   tags$footer(class="footer-distributed",
                         fluidRow(
                           column(offset=3, width=3,
                                  tags$div(class="logoWrapper",
                                           HTML(logo_tag)
                                  )
                           ),
                           column(offset=0, width=4,
                                  tags$p(
                                    class="footer-links",
                                    tags$a(
                                      href="https://github.com/afaguilarr/single_mothers",
                                      "Click here to see the github repo with all code used to make this app."
                                    )
                                  ),
                                  tags$p(
                                    class="footer-company-name",
                                    "Made by Andres Aguilar, Victor Catano, Santiago Cardona, William Aguilar and Andres2.0 2018"
                                  )
                           )
                         )
  ),
  tabPanel(home_button,
           fluidRow(
             column(width=6, 
                    tags$div(
                      class="videoWrapper",
                      HTML(youtube_video)
                      )
                    ),
             column(width=6,
                    tags$h1(home_title),
                    tags$p(home_text)
                    )
             )
           ),
  navbarMenu(first_menu_button,
             tabPanel(data_2016_button,
                      DT::dataTableOutput(
                        outputId="mock"
                      ),
                      bsModal("modalExample", "Estructura del hogar", "modalTrigger", size = "large",
                              plotOutput("plot")
                              )
                      ),
             tabPanel(prediction_2016_button,
                      "Conclusiones y Predicción de calidad de vida")
             ),
  navbarMenu(second_menu_button,
             tabPanel(data_2017_button,
                      "Datos y visualización de familias"),
             tabPanel(prediction_2017_button,
                      "Conclusiones y Predicción de calidad de vida")
            ),
  tabPanel(conclusions_button,"Conclusiones")
)

server <- function(input, output, session) {
  
  values <- reactiveValues( data=3 )
  
  output$plot <- renderPlot({
    hist(rnorm(values$data))
  })
  
  output$mock <- DT::renderDataTable(
    { datatable(mock, 
                selection = 'none'
                # class = 'cell-border strip hover'
            )  %>% formatStyle(0:ncol(mock+1), cursor = 'pointer')
    }
  )
  observeEvent(input$mock_cell_clicked, {
    info = input$mock_cell_clicked
    if(is.null(info$value)) return()
    print(mock[info$row,])
    values$data = mock[info$row, "number_of_sons"]
    toggleModal(session, "modalExample", toggle="toggle")
  })
}

shinyApp(ui = ui, server = server)