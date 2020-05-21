library(shiny)

cols <- names(USArrests)
shinyUI(navbarPage("USArrests Data",
    tabPanel("App", 
             sidebarLayout(position = "left",
                      sidebarPanel(
                          ## sidebar for data tab
                          conditionalPanel(condition = "input.tabs==1",
                                           radioButtons("exp", "Explore:", 
                                                        choices = c("Str" = "str",
                                                                    "Summary" = "summary")),
                                           numericInput("obs",
                                                        "Number of observations to view:",
                                                        value = 10)),
                          
                          ## sidebar for clustring tab
                          conditionalPanel(condition = "input.tabs==2",
                                           selectInput('xcol', 'X Variable', cols),
                                           selectInput('ycol', 'Y Variable', cols, 
                                                       selected = cols[[2]]),
                                           numericInput('clusters', 'Cluster count',
                                                        3, min = 1, max = 9))
                      ),
                      mainPanel(
                          tabsetPanel(id="tabs",
                                      ## data tab
                                      tabPanel("Data", value=1, 
                                               verbatimTextOutput("exp"), 
                                               br(),
                                               h4("Observations"),
                                               tableOutput("view")),
                                      
                                      ## clustring tab
                                      tabPanel("Clustring", value=2, br(),
                                               h4("Clustring Data with K-Means"),
                                               br(),
                                               plotOutput('plot1')))
                      )
        )
    ),
    tabPanel("Instructions", 
             h4("Instructions:"),
             p("This app is built using USArrests dataset, available in datasets
               package in R.This data set contains statistics, in arrests per 100,000 
               residents for assault, murder, and rape in each of the 50 US states
               in 1973. Also given is the percent of the population living in urban areas."),
             h4("Tabs"),
             p("The app contains 2 tabs"),
             HTML("<ul><li>Data Tab:<br><ul>
             <li>Explore the summary or structure of the dataset</li>
             <li>Print number of observations from the dataset</li>
             </ul></li>
			 <li>Clsutring tab:<br>
			 <ul><li>Clustring data using K-means algorithm</li>
			 <li>Choose any two variables and number of clusters to cluster the data with</li>
			 <li>Plot that shows clusters of the data is shown</li></ul> </li></ul>")
             )
   
)
)
