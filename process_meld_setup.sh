#!/bin/bash

WORKDIR=`pwd`
MELDDIR=$WORKDIR/meld_setup

grep hydroph $MELDDIR/setup_eco.out | awk '{print $2 " " $3}' > $WORKDIR/hydroph_add-edges.txt

grep hydroph $MELDDIR/setup_eco.out | awk '{print ":"$2"@CB" " " ":"$3"@CB"}' > $WORKDIR/hydroph_dist.txt
