### Lab 2: Handle Network Data and Compute Network Density
### Source of dataset: http://www.stats.ox.ac.uk/~snijders/siena/HarryPotterData.html

# Read data ---------------------------------------------------------------

# read data from the .csv file
hpattributes <- read.table(file.choose(),
                           header = TRUE)
hpbook1 <- as.matrix(read.table(file.choose()))
# note we use read.table in these commands, to learn more you can run
?read.table

# change column and row names of the matrix to actor id
colnames(hpbook1) <- hpattributes$id
rownames(hpbook1) <- hpattributes$id
# show the data in Console
View(hpbook1)
View(hpattributes)

# Load igraph and create a network object ---------------------------------

# load the library
library(igraph)
# create a network/graph object
g <- graph_from_adjacency_matrix(hpbook1,
                                 mode = "undirected")
?graph_from_adjacency_matrix

# add node attributes to the graph object
V(g)$schoolyear <- hpattributes$schoolyear
V(g)$gender <- hpattributes$gender
V(g)$house <- hpattributes$house

# show the graph in console
g
# note there are some self-loops, e.g. 2--2
# let's remove those self-loops
g <- simplify(g, remove.loops = TRUE)

# plot the graph
cols <- c("blue", "red", "black", "magenta")
plot(
  g,
  vertex.shape = "none",
  vertex.label.cex = 0.75,
  edge.color = grey(0.85),
  edge.width = 2,
  vertex.label.color = cols[V(g)$house]
)


# Compute network density -------------------------------------------------

edge_density(g)
