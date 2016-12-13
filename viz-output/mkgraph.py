#!/usr/bin/env python
# james robertson testing new eco analysis tool built w/ networkx and pytraj

import networkx as nx
from itertools import izip

residues = range(1, 6) # indexing from 1 (or should it be 0?)
print "These are the residue indices in the graph:\n%s" % residues

# set up and check graph
G=nx.Graph() # initiate empty graph
G.add_nodes_from(residues) # add nodes, which are all residues in protein
numnodes = G.number_of_nodes() # check that number of residues matches expected number
nodes = G.nodes() # returns list of nodes, another check
print "The number of nodes currently in graph: %s" % numnodes
print "The list of nodes in the graph:\n%s" % nodes
# add edges from loop
for i in range(1, 5): # or should start from 0?
    G.add_edges_from([(i,i+1)])

numedges = G.number_of_edges() # store number of edges
edges = G.edges() # store list of edges
print "The number of edges initially in the graph: %s" % numedges
print "The list of edges initially in the graph:\n%s" % edges

G.add_edge(2, 4)

# check that updated graph has expected num and list of edges and nodes
newnumedges = G.number_of_edges() # store new number of edges
newedges = G.edges() # store new list of edges
print "The number of nodes in graph should not have changed: %s" % numnodes
print "The number of edges currently in the graph: %s" % newnumedges
print "The list of edges currently in the graph:\n%s" % newedges

# calculate shortest paths and distances through shortest paths
# calc shortest path from x to y
#print(nx.shortest_path(G, x, y, 1)) # code vars or manually add x,y of interest
# calc  all shortest paths between all nodes in a weighted graph
print(nx.all_pairs_dijkstra_path(G, 3, 1)) # cutoff=3, weight=1
# calc all shortest path lengths between all nodes in a weighted graph
print(nx.all_pairs_dijkstra_path_length(G, 3, 1)) # cutoff=5, weight=1
