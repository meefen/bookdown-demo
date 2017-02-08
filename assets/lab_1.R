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
