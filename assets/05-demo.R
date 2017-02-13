
## Undirected, unweighted network
g1 <- graph( edges=c(1,2, 2,3, 3,1), n=3, directed=F)
plot(g1, vertex.size=80)

## Undirected, weighted network
E(g1)$weight <- c(1,2,4)
plot(g1, vertex.size=80, edge.width=E(g1)$weight*5)

## Directed, unweighted network
g2 <- graph( edges=c(1,2, 2,3, 3,1), n=3, directed=T)
plot(g2, vertex.size=80)

## Directed, weighted network
E(g2)$weight <- c(1,2,4)
plot(g2, vertex.size=80, edge.width=E(g2)$weight*4, edge.arrow.size=5)
