### Demo: Ego-network Analysis ###


## Section 1: Constructing the whole network

library(tidyverse)
library(igraph)

# Read anonymized network data
graph_df <- read_csv("data/network-anonymized.csv")
glimpse(graph_df)

# Create a graph
library(tidygraph, quietly = T) # we're using the tidygraph package that depends on igraph
g = as_tbl_graph(graph_df %>% select(source, target, date))

# Let's compute a basic centrality score for each node
g = g %>% 
  activate(nodes) %>%
  mutate(centrality = centrality_authority())

# Let's visualize the whole network
library(ggraph, quietly = T) # we're using the ggraph package for plotting
ggraph(g, layout = 'kk') + 
    geom_edge_link(alpha = 0.1) + 
    geom_node_point(aes(size = centrality)) + 
    theme_graph()


## Section 2: Constructing and visualizing ego networks

# let's first find out the size of each ego's neighborhood, with order = 1
# ?ego_size # to learn about this function
ego_size(g, 1)

# let's extract all ego networks
# ?make_ego_graph # to learn about this function
g_egos = make_ego_graph(g, 1) %>% 
  lapply(as_tbl_graph)

# let's plot one of them
i = 83 # the 83rd ego network
#   using igraph
plot(g_egos[[i]], main = paste("Ego", V(g)$name[i]))
#   using ggraph
ggraph(g_egos[[i]], layout = 'kk') + 
  geom_edge_link(arrow = arrow(length = unit(4, 'mm')), 
                 aes(start_cap = label_rect(node1.name),
                     end_cap = label_rect(node2.name))) +
  geom_node_label(aes(label = name)) +
  geom_node_point(aes(size = centrality)) +
  theme_graph() +
  ggtitle(paste0("Ego ", V(g)$name[i]))

# let's plot them all!
ego_plots = lapply(seq(1, length(V(g))), function(i) {
  
  ego_g = g_egos[[i]]
  if(length(E(ego_g)) == 0) return(NA)
  
  ego_g %>%
    ggraph(layout = 'kk') +
    geom_edge_link(arrow = arrow(length = unit(4, 'mm')), 
                   aes(start_cap = label_rect(node1.name),
                       end_cap = label_rect(node2.name))) +
    geom_node_label(aes(label = name)) +
    geom_node_point(aes(size = centrality)) +
    ggtitle(paste("Ego", V(g)$name[i])) +
    theme_graph()
})

for(p in ego_plots %>% tail(6)) print(p) # plot the last 6 ego networks
