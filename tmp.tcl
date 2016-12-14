proc draw_cyl {molnum} {
    
    set num_steps [molinfo $molnum get numframes]

    for {set frame 0} {$frame < $num_steps} {incr frame} {

        set sel1a [atomselect $molnum "resid 3 and name CA"]
        set sel1b [atomselect $molnum "resid 10 and name CA"]
        set crd1a [lindex [$sel1a get {x y z}] 0]
        set crd1b [lindex [$sel1b get {x y z}] 0]
        graphics $molnum cylinder $crd1a $crd1b radius 0.5 filled yes
        set sel2a [atomselect $molnum "resid 3 and name CA"]
        set sel2b [atomselect $molnum "resid 16 and name CA"]
        set crd2a [lindex [$sel2a get {x y z}] 0]
        set crd2b [lindex [$sel2b get {x y z}] 0]
        graphics $molnum cylinder $crd2a $crd2b radius 0.5 filled yes
        set sel3a [atomselect $molnum "resid 3 and name CA"]
        set sel3b [atomselect $molnum "resid 26 and name CA"]
        set crd3a [lindex [$sel3a get {x y z}] 0]
        set crd3b [lindex [$sel3b get {x y z}] 0]
        graphics $molnum cylinder $crd3a $crd3b radius 0.5 filled yes
    }
}
