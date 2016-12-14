#!/usr/bin/env python
# james robertson write tcl file that has all info to draw cylinders b/w atoms

import os

# check if cylinders.tcl exists
if ( os.path.isfile('cylinders.tcl')):
    print "Warning: cylinders.tcl already exists"
    exit(1)
            
cylinders = open('cylinders.tcl', 'w')
proc_start = 'proc draw_cyl {molnum} {'
cylinders.write(proc_start)
cylinders.write("\n")
cylinders.close()

# open file that contains all of the resids for residue pairs < than 9 A apart
# split the columns
# set variables for atom selections, coords, and graphics
# write all to new cylinders.tcl file
with open('edge_list_out.dat', 'r') as edges:
    for line_number, line in enumerate(edges, 1):
        x = line.strip()
        row_x = line.split()
        src = row_x[0]
        dst = row_x[1]
        sel_a = 'set sel%sa [atomselect $molnum "resid %s and name CA"]' % (int(line_number), int(src))
        sel_b = 'set sel%sb [atomselect $molnum "resid %s and name CA"]' % (int(line_number), int(dst))
        crd_a = 'set crd%sa [lindex [$sel%sa get {x y z}] 0]' % (int(line_number), int(line_number))
        crd_b = 'set crd%sb [lindex [$sel%sb get {x y z}] 0]' % (int(line_number), int(line_number))
        grphx = 'graphics $molnum cylinder $crd%sa $crd%sb radius 0.5 filled yes' % (int(line_number), int(line_number))
        cylinders = open('cylinders.tcl', 'a')
        cylinders.write(sel_a)
        cylinders.write("\n")
        cylinders.write(sel_b)
        cylinders.write("\n")
        cylinders.write(crd_a)
        cylinders.write("\n")
        cylinders.write(crd_b)
        cylinders.write("\n")
        cylinders.write(grphx)
        cylinders.write("\n")

cylinders.close()

cylinders = open('cylinders.tcl', 'a')
proc_end = '}'
cylinders.write(proc_end)
cylinders.close()
