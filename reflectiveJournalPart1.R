#library(datasets)
#data("iris")
#head(iris,3)
#irisFeatures <- iris[-5]
#head(irisFeatures,3)
#km <- kmeans(irisFeatures,3)
#km$size
#km$cluster
#plot(irisFeatures$Petal.Length, col = km$cluster)

#data("islands")
#require(graphics)
#dotchart(log(islands, 10),
  #       main = "islands data: log10(area) (log10(sq. miles))")
#dotchart(log(islands[order(islands)], 10),
 #        main = "islands data: log10(area) (log10(sq. miles))")

#sizes(ebc)
#g <- graph.full(5) %du% graph.full(5) %du% graph.full(5)
#g <- add.edges(g, c(1,6, 1,11, 6, 11))
#ebc <- edge.betweenness.community(g)
#sizes(ebc)
#modularity(g,membership(ebc))

# This is to find out the modularity of the data
library(igraph)
g <- graph.famous(Workbook2$Source) %du% graph.famous(Workbook2$Target)
com <- edge.betweenness.community(g)
sizes(com)
modularity(g, membership(com))
