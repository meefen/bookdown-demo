# Load igraph
library(igraph)

# Read data
lesmis <- read.csv("https://raw.githubusercontent.com/meefen/sna-ed/master/assets/lesmis/lesmis.csv")
# check the first 6 rows
head(lesmis)

# Create a graph using the graph_from_data_frame function
g <- graph.data.frame(lesmis)
# g <- graph_from_data_frame(lesmis) # this line also works

# Plot the graph
plot(g)
# make the graph a little prettier
plot(g, edge.arrow.size=.2, vertex.label=NA, vertex.size=8)

# explicitly use Fruchterman Reingold - a popular force-directed algorithm
layout <- layout.fruchterman.reingold(g)
plot(g, layout=layout, edge.arrow.size=.2, vertex.label=NA, vertex.size=8)

# random layout
plot(g, layout=layout_randomly, edge.arrow.size=.2, vertex.label=NA, vertex.size=8)

# circle layout
plot(g, layout=layout_in_circle, edge.arrow.size=.2, vertex.label=NA, vertex.size=8)

# Kamada Kawai - another popular force-directed algorithm
plot(g, layout=layout.kamada.kawai, edge.arrow.size=.2, vertex.label=NA, vertex.size=8)

# by hand
l <- cbind(1:vcount(g), c(1, vcount(g):2))
plot(g, layout=l, edge.arrow.size=.2, vertex.label=NA, vertex.size=8)

# 3D sphere
plot(g, layout=layout_on_sphere, edge.arrow.size=.2, vertex.label=NA, vertex.size=8)

plot(g, layout=layout_as_bipartite, edge.arrow.size=.2, vertex.label=NA, vertex.size=8)


# heatmap
netm <- get.adjacency(g, attr="weight", sparse=F)
netm <- netm[order(rownames(netm)), order(colnames(netm))]
palf <- colorRampPalette(c("gold", "dark orange"))
heatmap(netm, Rowv = NA, Colv = NA, col = palf(100), scale="none", margins=c(10,10) )
