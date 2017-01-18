proc draw_cyl {molnum sleep {frame_skip 1} {frame_beg 0} {frame_end 1000000}} {
set num_frames [molinfo $molnum get numframes]

if {$frame_beg != 0 | $frame_end != 1000000} {
    for {set i $frame_beg} {$i <= $frame_end} {incr i} {
        display update
        graphics $molnum delete all

        animate goto $i
        set sel1a [atomselect $molnum "resid 5 and name CA" frame $i]
        set sel1b [atomselect $molnum "resid 44 and name CA" frame $i]
        set crd1a [lindex [$sel1a get {x y z}] 0]
        set crd1b [lindex [$sel1b get {x y z}] 0]
        graphics $molnum cylinder $crd1a $crd1b radius 0.5 filled yes
        set sel2a [atomselect $molnum "resid 5 and name CA" frame $i]
        set sel2b [atomselect $molnum "resid 45 and name CA" frame $i]
        set crd2a [lindex [$sel2a get {x y z}] 0]
        set crd2b [lindex [$sel2b get {x y z}] 0]
        graphics $molnum cylinder $crd2a $crd2b radius 0.5 filled yes
        set sel3a [atomselect $molnum "resid 5 and name CA" frame $i]
        set sel3b [atomselect $molnum "resid 48 and name CA" frame $i]
        set crd3a [lindex [$sel3a get {x y z}] 0]
        set crd3b [lindex [$sel3b get {x y z}] 0]
        graphics $molnum cylinder $crd3a $crd3b radius 0.5 filled yes
        set sel4a [atomselect $molnum "resid 8 and name CA" frame $i]
        set sel4b [atomselect $molnum "resid 19 and name CA" frame $i]
        set crd4a [lindex [$sel4a get {x y z}] 0]
        set crd4b [lindex [$sel4b get {x y z}] 0]
        graphics $molnum cylinder $crd4a $crd4b radius 0.5 filled yes
        set sel5a [atomselect $molnum "resid 8 and name CA" frame $i]
        set sel5b [atomselect $molnum "resid 20 and name CA" frame $i]
        set crd5a [lindex [$sel5a get {x y z}] 0]
        set crd5b [lindex [$sel5b get {x y z}] 0]
        graphics $molnum cylinder $crd5a $crd5b radius 0.5 filled yes
        set sel6a [atomselect $molnum "resid 8 and name CA" frame $i]
        set sel6b [atomselect $molnum "resid 23 and name CA" frame $i]
        set crd6a [lindex [$sel6a get {x y z}] 0]
        set crd6b [lindex [$sel6b get {x y z}] 0]
        graphics $molnum cylinder $crd6a $crd6b radius 0.5 filled yes
        set sel7a [atomselect $molnum "resid 8 and name CA" frame $i]
        set sel7b [atomselect $molnum "resid 44 and name CA" frame $i]
        set crd7a [lindex [$sel7a get {x y z}] 0]
        set crd7b [lindex [$sel7b get {x y z}] 0]
        graphics $molnum cylinder $crd7a $crd7b radius 0.5 filled yes
        set sel8a [atomselect $molnum "resid 8 and name CA" frame $i]
        set sel8b [atomselect $molnum "resid 45 and name CA" frame $i]
        set crd8a [lindex [$sel8a get {x y z}] 0]
        set crd8b [lindex [$sel8b get {x y z}] 0]
        graphics $molnum cylinder $crd8a $crd8b radius 0.5 filled yes
        set sel9a [atomselect $molnum "resid 9 and name CA" frame $i]
        set sel9b [atomselect $molnum "resid 23 and name CA" frame $i]
        set crd9a [lindex [$sel9a get {x y z}] 0]
        set crd9b [lindex [$sel9b get {x y z}] 0]
        graphics $molnum cylinder $crd9a $crd9b radius 0.5 filled yes
        set sel10a [atomselect $molnum "resid 9 and name CA" frame $i]
        set sel10b [atomselect $molnum "resid 44 and name CA" frame $i]
        set crd10a [lindex [$sel10a get {x y z}] 0]
        set crd10b [lindex [$sel10b get {x y z}] 0]
        graphics $molnum cylinder $crd10a $crd10b radius 0.5 filled yes
        set sel11a [atomselect $molnum "resid 9 and name CA" frame $i]
        set sel11b [atomselect $molnum "resid 45 and name CA" frame $i]
        set crd11a [lindex [$sel11a get {x y z}] 0]
        set crd11b [lindex [$sel11b get {x y z}] 0]
        graphics $molnum cylinder $crd11a $crd11b radius 0.5 filled yes
        set sel12a [atomselect $molnum "resid 9 and name CA" frame $i]
        set sel12b [atomselect $molnum "resid 48 and name CA" frame $i]
        set crd12a [lindex [$sel12a get {x y z}] 0]
        set crd12b [lindex [$sel12b get {x y z}] 0]
        graphics $molnum cylinder $crd12a $crd12b radius 0.5 filled yes
        set sel13a [atomselect $molnum "resid 19 and name CA" frame $i]
        set sel13b [atomselect $molnum "resid 26 and name CA" frame $i]
        set crd13a [lindex [$sel13a get {x y z}] 0]
        set crd13b [lindex [$sel13b get {x y z}] 0]
        graphics $molnum cylinder $crd13a $crd13b radius 0.5 filled yes
        set sel14a [atomselect $molnum "resid 19 and name CA" frame $i]
        set sel14b [atomselect $molnum "resid 28 and name CA" frame $i]
        set crd14a [lindex [$sel14a get {x y z}] 0]
        set crd14b [lindex [$sel14b get {x y z}] 0]
        graphics $molnum cylinder $crd14a $crd14b radius 0.5 filled yes
        set sel15a [atomselect $molnum "resid 20 and name CA" frame $i]
        set sel15b [atomselect $molnum "resid 28 and name CA" frame $i]
        set crd15a [lindex [$sel15a get {x y z}] 0]
        set crd15b [lindex [$sel15b get {x y z}] 0]
        graphics $molnum cylinder $crd15a $crd15b radius 0.5 filled yes
        set sel16a [atomselect $molnum "resid 20 and name CA" frame $i]
        set sel16b [atomselect $molnum "resid 44 and name CA" frame $i]
        set crd16a [lindex [$sel16a get {x y z}] 0]
        set crd16b [lindex [$sel16b get {x y z}] 0]
        graphics $molnum cylinder $crd16a $crd16b radius 0.5 filled yes
        set sel17a [atomselect $molnum "resid 23 and name CA" frame $i]
        set sel17b [atomselect $molnum "resid 44 and name CA" frame $i]
        set crd17a [lindex [$sel17a get {x y z}] 0]
        set crd17b [lindex [$sel17b get {x y z}] 0]
        graphics $molnum cylinder $crd17a $crd17b radius 0.5 filled yes
        set sel18a [atomselect $molnum "resid 24 and name CA" frame $i]
        set sel18b [atomselect $molnum "resid 36 and name CA" frame $i]
        set crd18a [lindex [$sel18a get {x y z}] 0]
        set crd18b [lindex [$sel18b get {x y z}] 0]
        graphics $molnum cylinder $crd18a $crd18b radius 0.5 filled yes
        set sel19a [atomselect $molnum "resid 24 and name CA" frame $i]
        set sel19b [atomselect $molnum "resid 38 and name CA" frame $i]
        set crd19a [lindex [$sel19a get {x y z}] 0]
        set crd19b [lindex [$sel19b get {x y z}] 0]
        graphics $molnum cylinder $crd19a $crd19b radius 0.5 filled yes
        sleep $sleep
    }
} else {
    for {set i 0} {$i < $num_frames} {incr i} {
        display update
        graphics $molnum delete all

        set j [expr $i * $frame_skip]
        animate goto $j
        set sel1a [atomselect $molnum "resid 5 and name CA" frame $j]
        set sel1b [atomselect $molnum "resid 44 and name CA" frame $j]
        set crd1a [lindex [$sel1a get {x y z}] 0]
        set crd1b [lindex [$sel1b get {x y z}] 0]
        graphics $molnum cylinder $crd1a $crd1b radius 0.5 filled yes
        set sel2a [atomselect $molnum "resid 5 and name CA" frame $j]
        set sel2b [atomselect $molnum "resid 45 and name CA" frame $j]
        set crd2a [lindex [$sel2a get {x y z}] 0]
        set crd2b [lindex [$sel2b get {x y z}] 0]
        graphics $molnum cylinder $crd2a $crd2b radius 0.5 filled yes
        set sel3a [atomselect $molnum "resid 5 and name CA" frame $j]
        set sel3b [atomselect $molnum "resid 48 and name CA" frame $j]
        set crd3a [lindex [$sel3a get {x y z}] 0]
        set crd3b [lindex [$sel3b get {x y z}] 0]
        graphics $molnum cylinder $crd3a $crd3b radius 0.5 filled yes
        set sel4a [atomselect $molnum "resid 8 and name CA" frame $j]
        set sel4b [atomselect $molnum "resid 19 and name CA" frame $j]
        set crd4a [lindex [$sel4a get {x y z}] 0]
        set crd4b [lindex [$sel4b get {x y z}] 0]
        graphics $molnum cylinder $crd4a $crd4b radius 0.5 filled yes
        set sel5a [atomselect $molnum "resid 8 and name CA" frame $j]
        set sel5b [atomselect $molnum "resid 20 and name CA" frame $j]
        set crd5a [lindex [$sel5a get {x y z}] 0]
        set crd5b [lindex [$sel5b get {x y z}] 0]
        graphics $molnum cylinder $crd5a $crd5b radius 0.5 filled yes
        set sel6a [atomselect $molnum "resid 8 and name CA" frame $j]
        set sel6b [atomselect $molnum "resid 23 and name CA" frame $j]
        set crd6a [lindex [$sel6a get {x y z}] 0]
        set crd6b [lindex [$sel6b get {x y z}] 0]
        graphics $molnum cylinder $crd6a $crd6b radius 0.5 filled yes
        set sel7a [atomselect $molnum "resid 8 and name CA" frame $j]
        set sel7b [atomselect $molnum "resid 44 and name CA" frame $j]
        set crd7a [lindex [$sel7a get {x y z}] 0]
        set crd7b [lindex [$sel7b get {x y z}] 0]
        graphics $molnum cylinder $crd7a $crd7b radius 0.5 filled yes
        set sel8a [atomselect $molnum "resid 8 and name CA" frame $j]
        set sel8b [atomselect $molnum "resid 45 and name CA" frame $j]
        set crd8a [lindex [$sel8a get {x y z}] 0]
        set crd8b [lindex [$sel8b get {x y z}] 0]
        graphics $molnum cylinder $crd8a $crd8b radius 0.5 filled yes
        set sel9a [atomselect $molnum "resid 9 and name CA" frame $j]
        set sel9b [atomselect $molnum "resid 23 and name CA" frame $j]
        set crd9a [lindex [$sel9a get {x y z}] 0]
        set crd9b [lindex [$sel9b get {x y z}] 0]
        graphics $molnum cylinder $crd9a $crd9b radius 0.5 filled yes
        set sel10a [atomselect $molnum "resid 9 and name CA" frame $j]
        set sel10b [atomselect $molnum "resid 44 and name CA" frame $j]
        set crd10a [lindex [$sel10a get {x y z}] 0]
        set crd10b [lindex [$sel10b get {x y z}] 0]
        graphics $molnum cylinder $crd10a $crd10b radius 0.5 filled yes
        set sel11a [atomselect $molnum "resid 9 and name CA" frame $j]
        set sel11b [atomselect $molnum "resid 45 and name CA" frame $j]
        set crd11a [lindex [$sel11a get {x y z}] 0]
        set crd11b [lindex [$sel11b get {x y z}] 0]
        graphics $molnum cylinder $crd11a $crd11b radius 0.5 filled yes
        set sel12a [atomselect $molnum "resid 9 and name CA" frame $j]
        set sel12b [atomselect $molnum "resid 48 and name CA" frame $j]
        set crd12a [lindex [$sel12a get {x y z}] 0]
        set crd12b [lindex [$sel12b get {x y z}] 0]
        graphics $molnum cylinder $crd12a $crd12b radius 0.5 filled yes
        set sel13a [atomselect $molnum "resid 19 and name CA" frame $j]
        set sel13b [atomselect $molnum "resid 26 and name CA" frame $j]
        set crd13a [lindex [$sel13a get {x y z}] 0]
        set crd13b [lindex [$sel13b get {x y z}] 0]
        graphics $molnum cylinder $crd13a $crd13b radius 0.5 filled yes
        set sel14a [atomselect $molnum "resid 19 and name CA" frame $j]
        set sel14b [atomselect $molnum "resid 28 and name CA" frame $j]
        set crd14a [lindex [$sel14a get {x y z}] 0]
        set crd14b [lindex [$sel14b get {x y z}] 0]
        graphics $molnum cylinder $crd14a $crd14b radius 0.5 filled yes
        set sel15a [atomselect $molnum "resid 20 and name CA" frame $j]
        set sel15b [atomselect $molnum "resid 28 and name CA" frame $j]
        set crd15a [lindex [$sel15a get {x y z}] 0]
        set crd15b [lindex [$sel15b get {x y z}] 0]
        graphics $molnum cylinder $crd15a $crd15b radius 0.5 filled yes
        set sel16a [atomselect $molnum "resid 20 and name CA" frame $j]
        set sel16b [atomselect $molnum "resid 44 and name CA" frame $j]
        set crd16a [lindex [$sel16a get {x y z}] 0]
        set crd16b [lindex [$sel16b get {x y z}] 0]
        graphics $molnum cylinder $crd16a $crd16b radius 0.5 filled yes
        set sel17a [atomselect $molnum "resid 23 and name CA" frame $j]
        set sel17b [atomselect $molnum "resid 44 and name CA" frame $j]
        set crd17a [lindex [$sel17a get {x y z}] 0]
        set crd17b [lindex [$sel17b get {x y z}] 0]
        graphics $molnum cylinder $crd17a $crd17b radius 0.5 filled yes
        set sel18a [atomselect $molnum "resid 24 and name CA" frame $j]
        set sel18b [atomselect $molnum "resid 36 and name CA" frame $j]
        set crd18a [lindex [$sel18a get {x y z}] 0]
        set crd18b [lindex [$sel18b get {x y z}] 0]
        graphics $molnum cylinder $crd18a $crd18b radius 0.5 filled yes
        set sel19a [atomselect $molnum "resid 24 and name CA" frame $j]
        set sel19b [atomselect $molnum "resid 38 and name CA" frame $j]
        set crd19a [lindex [$sel19a get {x y z}] 0]
        set crd19b [lindex [$sel19b get {x y z}] 0]
        graphics $molnum cylinder $crd19a $crd19b radius 0.5 filled yes
        sleep $sleep
    }
    }
}
