library(UsingR)

x <-c(1:100)
y <- 20*x+rnorm(100,mean=0,sd=50)+100
shinyServer(
  function(input, output) {
    output$newPlot <- renderPlot({
      plot(x, y,
           xlim = c(1, 100),
           ylim = c(1, 2200),
           main = paste("Regression plot"))
      slope <- input$slope
      intercept <- input$intercept
      lines(c(0,100),c(intercept,slope*100),col="red",lwd=5)
      
      mse <- mean((y-(x*slope+intercept))^2)

      text(20, 2000, paste("MSE = ", round(mse, 2)))
    })
  }
)

