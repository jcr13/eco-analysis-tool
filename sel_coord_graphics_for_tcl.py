#!/usr/bin/env python
# james robertson write tcl file that has all info to draw cylinders b/w atoms
# makes a file cylinders.tcl that can be sourced by vmd and contains the proc draw_cyl
# to use in vmd
# proc draw_cyl {molnum sleep {frame_skip 1} {frame_beg 0} {frame_end 1000000}}
# molnum and sleep are required args (sleep in s); the remaining args default to given values
# Example: to draw cyls for all frames of mol 0 and hold frame for 1 s
# draw_cyl 0 1
# Example: to do the same but in increments of 5 frames
# draw_cyl 0 1 5
# Example: to draw cyls for frames 20 to 50 of mol 0
# draw_cyl 0 1 1 20 50
# Example: to draw cyls for frame 10 of mol 0
# draw_cyl 0 1 1 10 10

import os

# check if cylinders.tcl exists
if ( os.path.isfile('cylinders.tcl')):
    print "Warning: cylinders.tcl already exists"
    exit(1)
            
# open cylinders.tcl file and begin populating w/ vmd instructions
cylinders = open('cylinders.tcl', 'w')
proc_start = """proc draw_cyl {molnum sleep {frame_skip 1} {frame_beg 0} {frame_end 1000000}} {
set num_frames [molinfo $molnum get numframes]

if {$frame_beg != 0 | $frame_end != 1000000} {
    for {set i $frame_beg} {$i <= $frame_end} {incr i} {
        display update
        graphics $molnum delete all

        animate goto $i
"""
cylinders.write(proc_start)
cylinders.close()

# open file that contains all of the resids for residue pairs < than 9 A apart
# split the columns
# set variables for atom selections, coords, and graphics
# write (append) all to cylinders.tcl file
with open('edge_list_out.dat', 'r') as edges:
    for line_number, line in enumerate(edges, 1):
        x = line.strip()
        row_x = line.split()
        src = row_x[0]
        dst = row_x[1]
        sel_a = '        set sel%sa [atomselect $molnum "resid %s and name CA" frame $i]' % (int(line_number), int(src))
        sel_b = '        set sel%sb [atomselect $molnum "resid %s and name CA" frame $i]' % (int(line_number), int(dst))
        crd_a = '        set crd%sa [lindex [$sel%sa get {x y z}] 0]' % (int(line_number), int(line_number))
        crd_b = '        set crd%sb [lindex [$sel%sb get {x y z}] 0]' % (int(line_number), int(line_number))
        grphx = '        graphics $molnum cylinder $crd%sa $crd%sb radius 0.5 filled yes' % (int(line_number), int(line_number))
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
#
cylinders = open('cylinders.tcl', 'a')
cylinders.write("        sleep $sleep\n")
proc_else = """    }
} else {
    for {set i 0} {$i < $num_frames} {incr i} {
        display update
        graphics $molnum delete all

        set j [expr $i * $frame_skip]
        animate goto $j
"""
cylinders.write(proc_else)
cylinders.close()
#
with open('edge_list_out.dat', 'r') as edges:
    for line_number, line in enumerate(edges, 1):
        x = line.strip()
        row_x = line.split()
        src = row_x[0]
        dst = row_x[1]
        sel_a = '        set sel%sa [atomselect $molnum "resid %s and name CA" frame $j]' % (int(line_number), int(src))
        sel_b = '        set sel%sb [atomselect $molnum "resid %s and name CA" frame $j]' % (int(line_number), int(dst))
        crd_a = '        set crd%sa [lindex [$sel%sa get {x y z}] 0]' % (int(line_number), int(line_number))
        crd_b = '        set crd%sb [lindex [$sel%sb get {x y z}] 0]' % (int(line_number), int(line_number))
        grphx = '        graphics $molnum cylinder $crd%sa $crd%sb radius 0.5 filled yes' % (int(line_number), int(line_number))
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
#
cylinders = open('cylinders.tcl', 'a')
cylinders.write("        sleep $sleep\n")
proc_end = """    }
    }
}
"""
cylinders.write(proc_end)
cylinders.close()
