#!/bin/bash

WORKDIR=`pwd`

#cat $WORKDIR/edge_list_out.dat | awk '{print "\"resid "$1" and name CB\"" "\t" "\"resid "$2" and name CB\""}' > $WORKDIR/edge_list_for_vmd.dat

cat $WORKDIR/edge_list_out.dat | awk '{print "\"resid "$1" and name CB\""}' > $WORKDIR/edge_list_atom1.dat

cat $WORKDIR/edge_list_out.dat | awk '{print "\"resid "$2" and name CB\""}' > $WORKDIR/edge_list_atom2.dat
