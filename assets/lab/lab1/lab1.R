### Lab 1: Read a social network dataset and make a graph
### Source of dataset: http://networkrepository.com/soc-karate.php

# Read data ---------------------------------------------------------------
setwd("/tmp")
# setwd("~/Downloads")

# read data from the .csv file
# karate <- read.csv("soc-karate.csv")
karate <- read.csv(file.choose())
karate <- as.matrix(karate)
# show the data in Console
karate

# Load igraph and create a network object ---------------------------------

# load the library
library(igraph)
# create a network/graph object
g <- graph_from_edgelist(karate, directed = FALSE)
# show the graph in console
g


# Plot the graph ----------------------------------------------------------

# plot using the default layout
plot(g)
# plot in a circle
plot(g, layout=layout_in_circle)

# Bonus: play with plotting settings
# check this link for ideas: https://www.r-graph-gallery.com/248-igraph-plotting-parameters.html
# plot in a cleaner way, esp. for larger graphs
plot(
  g,
  vertex.size = 2, # control the size of nodes
  edge.arrow.size = 0.001, # control the size of edges
  vertex.color = adjustcolor("white", alpha.f = 0),  # adjust the color of nodes
  vertex.label = NA # hide labels
)
