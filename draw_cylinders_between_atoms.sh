#!/bin/bash
set -x

WORKDIR=`pwd`
LISTDIR=$WORKDIR/vmd_edge_list

lfile1=`wc -l edge_list_atom1.dat`
lfile2=`wc -l edge_list_atom2.dat`
l=$(wc -l < edge_list_atom2.dat)
echo $lfile1
echo $lfile2
echo $l

# read template and sed for all values lines 1 to $l and make new file that will be read
# in on loop in vmd

## set atom numbers
#set sel1 [atomselect MOLNUM "ATOM1"]
#set sel2 [atomselect MOLNUM "ATOM2"]
## set the coords
#set coord1 [lindex [$sel1 get {x y z}] 0]
#set coord2 [lindex [$sel2 get {x y z}] 0]
## draw the cylinder
#graphics MOLNUM cylinder $coord1 $coord2 radius 0.5 filled yes
## to delete all cylinders (or instead of all sub in graphic id number)
## graphics $molnum delete all
