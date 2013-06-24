# ------------------------------------------------------------------------------
# libsna by Pablo Haya (pablohaya@gmail.com), 2013
#
# Social Network Analysis helper fuctions. Requires igraph 0.6
#
# ------------------------------------------------------------------------------

require(igraph)

# ------------------------------------------------------------------------------
# cluster.giantcomponent
#
# Returns the giant connected component of a given graph. This component 
# contains the larger fraction of connected graph's nodes.
cluster.giantcomponent <- function(graph, mode="weak") {
    cc <- clusters(graph, mode)
    g0_id <- which.max(cc$csize)
    nodes_g0 <- which (cc$membership == g0_id)
    return (induced.subgraph(graph, nodes_g0))
}

