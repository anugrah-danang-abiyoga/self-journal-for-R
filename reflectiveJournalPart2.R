library(igraph)

g_undir <- graph.data.frame(Workbook2,directed = F)

g_dir <- graph.data.frame(Workbook2,directed = T)

V(g_dir)$frame.color <- "black"
V(g_dir)$color <- "orange"

deg <-  igraph::degree(g_dir, mode="all")
V(g_dir)$size <- deg*3

E(g_dir)$width <- 0.1

minC <- rep(-Inf, vcount(g_dir))
maxC <- rep(Inf, vcount(g_dir))
minC[1] <- maxC[1] <- 0
co <- layout_with_fr(g_dir, minx=minC, maxx=maxC, miny=minC, maxy=maxC)

# This Plot is to make the visualisation look like what can Gephi Showed
plot(g_dir, edge.arrow.size=.9, edge.color="blue",
     vertex.color="orange", vertex.frame.color="#ffffff",
     vertex.label=V(g_dir)$source, vertex.label.color="black") 

# This diameter is explaining how many times that Source in the table was being called in the target table
diameter(g_dir, directed = TRUE, unconnected = TRUE, weights = NULL)

# This explains centrality edge density of those who are not connected in the graph
edge_density(g_undir, loops = TRUE)

# The average of each nodes to the central of the nodes. 
centr_clo(g_dir, mode = c("all"), normalized = TRUE)

# closest path for each pairs of nodes.
  edge.betweenness(g_dir, 3)
  betweenness(g_dir, 3)

# Reciprocity
reciprocity(g_dir, 5/7)

#plot(g_dir, 
#     layout=co*1.0, 
#     vertex.size=2,vertex.label.cex=0.2,edge.label.cex=0.2, 
#     edge.arrow.size=0.1, rescale=TRUE,vertex.label.dist=0)