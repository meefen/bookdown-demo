### Lab - Week 7

## Read data from Excel
library(readxl)
cscw = read_excel(file.path("~/Google Drive/UMN/Teaching/sna-ed", "assets/cscw17.xlsx"))
cscw_mentions = cscw[cscw$Relationship == "Mentions", ]

## Create graph
library(igraph)
g = graph_from_data_frame(cscw, directed = TRUE)
get.edge.attribute(g)

## Plot graph
plot(g)

## Network-level
graph.density(g)
diameter(g)
cohesion(g)

## Node-level
degree(g)
betweenness(g)

## Components
components(g)
clusters(g)

## Cliques
cliques(g)
largest.cliques(g)

