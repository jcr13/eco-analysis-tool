# set atom numbers
set sel1 [atomselect 0 "resid 1 and name CA"]
set sel2 [atomselect 0 "resid 17 and name CA"]
set sel3 [atomselect 0 "resid 1 and name CA"]
set sel4 [atomselect 0 "resid 19 and name CA"]
set sel5 [atomselect 0 "resid 3 and name CA"]
set sel6 [atomselect 0 "resid 15 and name CA"]
# set the coords
set coord1 [lindex [$sel1 get {x y z}] 0]
set coord2 [lindex [$sel2 get {x y z}] 0]
set coord3 [lindex [$sel3 get {x y z}] 0]
set coord4 [lindex [$sel4 get {x y z}] 0]
set coord5 [lindex [$sel5 get {x y z}] 0]
set coord6 [lindex [$sel6 get {x y z}] 0]
# draw the cylinder
graphics 0 cylinder $coord1 $coord2 radius 0.5 filled yes
graphics 0 cylinder $coord3 $coord4 radius 0.5 filled yes
graphics 0 cylinder $coord5 $coord6 radius 0.5 filled yes
# to delete all cylinders (or instead of all sub in graphic id number)
# graphics $molnum delete all
