# 1st
# Definition of vectors
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Create a data frame from the vectors
planets_df <- data.frame(name, type, diameter, rotation, rings)
planets_df

str(planets_df) # This function is to know the structure of the data
planets_df[4,] # This function is to print the entire 4th row but nothing for column
planets_df[1:5, "diameter"] # This is to print first 5 values of diameter column
# Select the rings variable from planets_df
rings_vector <- planets_df$rings

# Print out rings_vector
rings_vector
# Select planets with diameter < 1
subset(planets_df, subset = diameter < 1)

# planets_df is pre-loaded in your workspace

# Use order() to create positions
positions <- order(planets_df$diameter)

# Use positions to sort planets_df
planets_df[positions,]

# 2nd
# Play around with the order function
g <- c(500, 50, 5000)
order(g)

rings_vector

## Special task: this is to create a 3D pie chart 
secondlabels <- c(18, 27, 25, 33, 43, 50, 60, 20)
pie3D(table(`student_services_data(1).(1)`$age), main="age chart", labels=secondlabels)