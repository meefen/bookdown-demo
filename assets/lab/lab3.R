### Lab 3
### Source of dataset: http://networkrepository.com/soc-karate.php

# Read data ---------------------------------------------------------------

# read data from the .csv file
# karate <- read.csv("assets/lab/lab1/soc-karate.csv")
# karate <- read.csv(file.choose())
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

# Compute centrality measures ---------------------------------------------

betweenness(g)
betweenness(g, directed = FALSE)
betweenness(g, directed = FALSE, normalized = TRUE)


# Components --------------------------------------------------------------

## Components
components(g)
components(g, mode = "strong")

## Cliques
cliques(g)
largest.cliques(g)


# Ego networks ------------------------------------------------------------

## Size of ego networks
?ego_size
ego_size(g, order = 0)
ego_size(g, order = 1)
ego_size(g, order = 2)
ego_size(g, order = 1, 1:3)

## Check the neighborhood of each ego
ego(g, order = 2)
ego(g, order = 2, 1:3)

## Extract ego networks
make_ego_graph(g, order = 1)
