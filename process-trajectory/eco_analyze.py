#!/usr/bin/env python
# james robertson testing new eco analysis tool built w/ networkx and pytraj

import pytraj as pt
import networkx as nx
import os
from itertools import izip

# check if edge_list_out.dat exists, and exit if it does
if ( os.path.isfile('edge_list_out.dat')):
    print "Warning: edge_list_out.dat already exists"
    exit(1)
# check if hydroph_dist.txt and hydroph_add-edges.txt exist, and if so continue
try:
    file = open('hydroph_dist.txt', 'r')
except IOError:
    print "There was an error opening hydroph_dist.txt"
    exit(1)
try:
    file = open('hydroph_add-edges.txt', 'r')
except IOError:
    print "There was an error opening hydroph_add-edges.txt"
    exit(1)

# load protein
top = pt.load_topology('1nd9.parm7') # load as pdb (single structure)
traj = pt.load('1nd9.nc', '1nd9.parm7') # if loading traj
simp_p = top.simplify() # return simplified topology

# do some counting and indexing
rescount = len(simp_p.residues) # length of protein chain
numbonds = rescount - 1 # number of bonds in protein backbone
residues = range(1, rescount + 1) # indexing from 1 (or should it be 0?)
print "The number of residues(nodes) that should be  in the graph: %s" % rescount
print "The number of backbone bonds(edges) that should be in the graph: %s" % numbonds
print "These are the residue indices in the graph:\n%s" % residues

# set up and check graph
G=nx.Graph() # initiate empty graph
G.add_nodes_from(residues) # add nodes, which are all residues in protein
numnodes = G.number_of_nodes() # check that number of residues matches expected number
nodes = G.nodes() # returns list of nodes, another check
print "The number of nodes currently in graph: %s" % numnodes
print "The list of nodes in the graph:\n%s" % nodes
# add edges from loop
for i in range(1, numbonds + 1): # or should start from 0?
    G.add_edges_from([(i,i+1)])

numedges = G.number_of_edges() # store number of edges
edges = G.edges() # store list of edges
print "The number of edges initially in the graph: %s" % numedges
print "The list of edges initially in the graph:\n%s" % edges

new_edge = []
# add edges to graph (based on hydrophobic CB-CB distance less than 9 Angstroms.)
# first check list of restraint pairs from MELD setup
# then use pytraj to calculate distances, and add edge to graph if less than 9 A
with open('hydroph_dist.txt') as f_dist, open('hydroph_add-edges.txt') as f_edge: 
    for x, y in izip(f_dist, f_edge): 
        x = x.strip() 
        y = y.strip() 
        row_y = y.split() 
        src = row_y[0] 
        dest = row_y[1] 
        dist = pt.distance(traj, x)
        print "%s" % x # prints the atom pairs for which dist is being measured
        frame = 0 # frame indexing starts at 0
        while frame < len(traj):
            # calculate distance between 2 atoms over each frame and print to file
            #frame_dist = "%s \t %s" % (int(frame), dist[frame])
            print "FRAME \t DIST \t ATOMS\n%s \t %0.2f \t %s" % (int(frame), dist[frame], x)
            #pair_file = open('%sCB_%sCB_dist.dat' % (src, dest), 'a')
            #pair_file.write(frame_dist)
            #pair_file.write("\n")
            # if distance between 2 atoms is < 9A add new edge to graph
            if dist[frame] < 9:
                print("dist is less than 9")
                G.add_edge(int(src), int(dest)) 
                #new_edge = "FRAME %s \t SRC %s \t DEST %s" % (int(frame), int(src), int(dest)) 
                new_edges = "FRAME %s \t SRC %s \t DEST %s" % (int(frame), int(src), int(dest)) 
                new_edge.append(new_edges)
            else:
                print("dist is greater than 9") 

            # check that updated graph has expected num and list of edges and nodes 
            newnumedges = G.number_of_edges() # store new number of edges 
            newedges = G.edges() # store new list of edges
            print "The number of nodes in graph should not have changed: %s" % numnodes 
            print "The number of edges currently in the graph: %s" % newnumedges 
            print "The list of edges currently in the graph:\n%s" % newedges 

            # calculate shortest paths and distances through shortest paths
            # calc shortest path from x to y
            print "shortest_path %s" % (nx.shortest_path(G, int(src), int(dest), 1)) # code vars or manually add x,y of interest
            print "shortest_path_length %s" % (nx.shortest_path_length(G, int(src), int(dest), 1)) # code vars or manually add x,y of interest
            ## calc  all shortest paths between all nodes in a weighted graph
            #print(nx.all_pairs_dijkstra_path(G, 5, 1)) # cutoff=5, weight=1
            ## calc all shortest path lengths between all nodes in a weighted graph
            #print(nx.all_pairs_dijkstra_path_length(G, 5, 1)) # cutoff=5, weight=1

            frame += 1

# write new edges to file
for each_new_edge in new_edge:
    edge_list_out = open('edge_list_out.dat', 'a') 
    edge_list_out.write(each_new_edge) 
    edge_list_out.write("\n") 
edge_list_out.close() 

