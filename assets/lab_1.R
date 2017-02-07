library(igraph)


lesmis <- read.csv("assets/lesmis/lesmis.csv")
head(lesmis)

g <- graph_from_data_frame(lesmis)
plot(g)
plot(g, edge.arrow.size=.2, vertex.label=NA, vertex.size=8)
