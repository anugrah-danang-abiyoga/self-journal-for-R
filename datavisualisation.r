library(igraph)

g_undir <- graph.data.frame(classtest,directed = F)

g_dir <- graph.data.frame(classtest,directed = T)

V(g_dir)$frame.color <- "white"
V(g_dir)$color <- "orange"

deg <-  igraph::degree(g_dir, mode="all")
V(g_dir)$size <- deg*3

E(g_dir)$width <- 0.1

minC <- rep(-Inf, vcount(g_dir))
maxC <- rep(Inf, vcount(g_dir))
minC[1] <- maxC[1] <- 0
co <- layout_with_fr(g_dir, minx=minC, maxx=maxC, miny=minC, maxy=maxC)

plot(g_dir, layout=co*1.0, vertex.size=2,vertex.label.cex=0.2,edge.label.cex=0.2, edge.arrow.size=0.1, rescale=TRUE,vertex.label.dist=0)
