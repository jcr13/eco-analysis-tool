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
        sleep $sleep
    }
    }
}
