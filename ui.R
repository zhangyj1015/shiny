

shinyUI(pageWithSidebar(
  headerPanel("Fitting the Line"),
  sidebarPanel(
    sliderInput('slope', 'Guess at the slope of  Line',value = 70, min = 0, max = 100, step = 1),
    numericInput('intercept', 'Numeric input, labeled id1', 800, min = 0, max = 1000, step = 10),
    h3(""),
    h3(""),
    h3("Instructions",style = "color:blue"),
    h5("Step1: Fit the Slope using the above sliderbutton",style = "color:blue"), 
    h5("Step2: Fit Intercept using the above numericInput:",style = "color:blue"),
    h5("Step3: The MSE will be calculated automatically. If the parameters are suitable, the MSE will be the mininum",style = "color:blue")
  ),
  mainPanel(
    plotOutput('newPlot')
  )
))
