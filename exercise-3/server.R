### Exercise 3 ###
library(shiny)
library(ggplot2)

# Create a shiny server that creates a scatterplot. 
server <- function(input, output) {
  outputs$scatter <- renderPlot({
    x_data <- mpg[[inputs$x_var]]
    y_data <- mpg[[inputs$y_var]]
    plot <- ggplot(mpg) +
      geom_point(mapping = aes(x = x_data, y = y_data))
  })
}
# It should take as an input the x_var, y_var, color, and size
# Save the result of `renderPlot` to output$scatter

    # Store x and y values to plot


    # Store the title of the graph in a variable

    
    # Create ggplot scatter

shinyServer(server)