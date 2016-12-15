#!/bin/bash

WORKDIR=`pwd`
#MELDDIR=$WORKDIR/meld_setup
MELDDIR=/home/james/tmp-data/cavern/aperez/Blue/Casp_Protocol/HigherTolerances_Feb24/1BDD

grep hydroph $MELDDIR/setup.out | awk '{print $2 " " $3}' > $WORKDIR/hydroph_add-edges.txt

grep hydroph $MELDDIR/setup.out | awk '{print ":"$2"@CB" " " ":"$3"@CB"}' > $WORKDIR/hydroph_dist.txt
