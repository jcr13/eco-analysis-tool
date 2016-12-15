proc draw_cyl {molnum sleep} {
set num_frames [molinfo $molnum get numframes]
for {set i 0} {$i < $num_frames} {incr i} {
    display update
    graphics $molnum delete all
    animate goto $i
    set sel1a [atomselect $molnum "resid 6 and name CA" frame $i]
    set sel1b [atomselect $molnum "resid 39 and name CA" frame $i]
    set crd1a [lindex [$sel1a get {x y z}] 0]
    set crd1b [lindex [$sel1b get {x y z}] 0]
    graphics $molnum cylinder $crd1a $crd1b radius 0.5 filled yes
    set sel2a [atomselect $molnum "resid 13 and name CA" frame $i]
    set sel2b [atomselect $molnum "resid 31 and name CA" frame $i]
    set crd2a [lindex [$sel2a get {x y z}] 0]
    set crd2b [lindex [$sel2b get {x y z}] 0]
    graphics $molnum cylinder $crd2a $crd2b radius 0.5 filled yes
    set sel3a [atomselect $molnum "resid 13 and name CA" frame $i]
    set sel3b [atomselect $molnum "resid 32 and name CA" frame $i]
    set crd3a [lindex [$sel3a get {x y z}] 0]
    set crd3b [lindex [$sel3b get {x y z}] 0]
    graphics $molnum cylinder $crd3a $crd3b radius 0.5 filled yes
    set sel4a [atomselect $molnum "resid 13 and name CA" frame $i]
    set sel4b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd4a [lindex [$sel4a get {x y z}] 0]
    set crd4b [lindex [$sel4b get {x y z}] 0]
    graphics $molnum cylinder $crd4a $crd4b radius 0.5 filled yes
    set sel5a [atomselect $molnum "resid 13 and name CA" frame $i]
    set sel5b [atomselect $molnum "resid 39 and name CA" frame $i]
    set crd5a [lindex [$sel5a get {x y z}] 0]
    set crd5b [lindex [$sel5b get {x y z}] 0]
    graphics $molnum cylinder $crd5a $crd5b radius 0.5 filled yes
    set sel6a [atomselect $molnum "resid 13 and name CA" frame $i]
    set sel6b [atomselect $molnum "resid 43 and name CA" frame $i]
    set crd6a [lindex [$sel6a get {x y z}] 0]
    set crd6b [lindex [$sel6b get {x y z}] 0]
    graphics $molnum cylinder $crd6a $crd6b radius 0.5 filled yes
    set sel7a [atomselect $molnum "resid 13 and name CA" frame $i]
    set sel7b [atomselect $molnum "resid 45 and name CA" frame $i]
    set crd7a [lindex [$sel7a get {x y z}] 0]
    set crd7b [lindex [$sel7b get {x y z}] 0]
    graphics $molnum cylinder $crd7a $crd7b radius 0.5 filled yes
    set sel8a [atomselect $molnum "resid 13 and name CA" frame $i]
    set sel8b [atomselect $molnum "resid 46 and name CA" frame $i]
    set crd8a [lindex [$sel8a get {x y z}] 0]
    set crd8b [lindex [$sel8b get {x y z}] 0]
    graphics $molnum cylinder $crd8a $crd8b radius 0.5 filled yes
    set sel9a [atomselect $molnum "resid 13 and name CA" frame $i]
    set sel9b [atomselect $molnum "resid 49 and name CA" frame $i]
    set crd9a [lindex [$sel9a get {x y z}] 0]
    set crd9b [lindex [$sel9b get {x y z}] 0]
    graphics $molnum cylinder $crd9a $crd9b radius 0.5 filled yes
    set sel10a [atomselect $molnum "resid 14 and name CA" frame $i]
    set sel10b [atomselect $molnum "resid 31 and name CA" frame $i]
    set crd10a [lindex [$sel10a get {x y z}] 0]
    set crd10b [lindex [$sel10b get {x y z}] 0]
    graphics $molnum cylinder $crd10a $crd10b radius 0.5 filled yes
    set sel11a [atomselect $molnum "resid 14 and name CA" frame $i]
    set sel11b [atomselect $molnum "resid 32 and name CA" frame $i]
    set crd11a [lindex [$sel11a get {x y z}] 0]
    set crd11b [lindex [$sel11b get {x y z}] 0]
    graphics $molnum cylinder $crd11a $crd11b radius 0.5 filled yes
    set sel12a [atomselect $molnum "resid 14 and name CA" frame $i]
    set sel12b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd12a [lindex [$sel12a get {x y z}] 0]
    set crd12b [lindex [$sel12b get {x y z}] 0]
    graphics $molnum cylinder $crd12a $crd12b radius 0.5 filled yes
    set sel13a [atomselect $molnum "resid 17 and name CA" frame $i]
    set sel13b [atomselect $molnum "resid 31 and name CA" frame $i]
    set crd13a [lindex [$sel13a get {x y z}] 0]
    set crd13b [lindex [$sel13b get {x y z}] 0]
    graphics $molnum cylinder $crd13a $crd13b radius 0.5 filled yes
    set sel14a [atomselect $molnum "resid 17 and name CA" frame $i]
    set sel14b [atomselect $molnum "resid 32 and name CA" frame $i]
    set crd14a [lindex [$sel14a get {x y z}] 0]
    set crd14b [lindex [$sel14b get {x y z}] 0]
    graphics $molnum cylinder $crd14a $crd14b radius 0.5 filled yes
    set sel15a [atomselect $molnum "resid 17 and name CA" frame $i]
    set sel15b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd15a [lindex [$sel15a get {x y z}] 0]
    set crd15b [lindex [$sel15b get {x y z}] 0]
    graphics $molnum cylinder $crd15a $crd15b radius 0.5 filled yes
    set sel16a [atomselect $molnum "resid 17 and name CA" frame $i]
    set sel16b [atomselect $molnum "resid 45 and name CA" frame $i]
    set crd16a [lindex [$sel16a get {x y z}] 0]
    set crd16b [lindex [$sel16b get {x y z}] 0]
    graphics $molnum cylinder $crd16a $crd16b radius 0.5 filled yes
    set sel17a [atomselect $molnum "resid 17 and name CA" frame $i]
    set sel17b [atomselect $molnum "resid 46 and name CA" frame $i]
    set crd17a [lindex [$sel17a get {x y z}] 0]
    set crd17b [lindex [$sel17b get {x y z}] 0]
    graphics $molnum cylinder $crd17a $crd17b radius 0.5 filled yes
    set sel18a [atomselect $molnum "resid 17 and name CA" frame $i]
    set sel18b [atomselect $molnum "resid 49 and name CA" frame $i]
    set crd18a [lindex [$sel18a get {x y z}] 0]
    set crd18b [lindex [$sel18b get {x y z}] 0]
    graphics $molnum cylinder $crd18a $crd18b radius 0.5 filled yes
    set sel19a [atomselect $molnum "resid 18 and name CA" frame $i]
    set sel19b [atomselect $molnum "resid 32 and name CA" frame $i]
    set crd19a [lindex [$sel19a get {x y z}] 0]
    set crd19b [lindex [$sel19b get {x y z}] 0]
    graphics $molnum cylinder $crd19a $crd19b radius 0.5 filled yes
    set sel20a [atomselect $molnum "resid 20 and name CA" frame $i]
    set sel20b [atomselect $molnum "resid 49 and name CA" frame $i]
    set crd20a [lindex [$sel20a get {x y z}] 0]
    set crd20b [lindex [$sel20b get {x y z}] 0]
    graphics $molnum cylinder $crd20a $crd20b radius 0.5 filled yes
    set sel21a [atomselect $molnum "resid 20 and name CA" frame $i]
    set sel21b [atomselect $molnum "resid 52 and name CA" frame $i]
    set crd21a [lindex [$sel21a get {x y z}] 0]
    set crd21b [lindex [$sel21b get {x y z}] 0]
    graphics $molnum cylinder $crd21a $crd21b radius 0.5 filled yes
    set sel22a [atomselect $molnum "resid 23 and name CA" frame $i]
    set sel22b [atomselect $molnum "resid 31 and name CA" frame $i]
    set crd22a [lindex [$sel22a get {x y z}] 0]
    set crd22b [lindex [$sel22b get {x y z}] 0]
    graphics $molnum cylinder $crd22a $crd22b radius 0.5 filled yes
    set sel23a [atomselect $molnum "resid 23 and name CA" frame $i]
    set sel23b [atomselect $molnum "resid 49 and name CA" frame $i]
    set crd23a [lindex [$sel23a get {x y z}] 0]
    set crd23b [lindex [$sel23b get {x y z}] 0]
    graphics $molnum cylinder $crd23a $crd23b radius 0.5 filled yes
    set sel24a [atomselect $molnum "resid 23 and name CA" frame $i]
    set sel24b [atomselect $molnum "resid 52 and name CA" frame $i]
    set crd24a [lindex [$sel24a get {x y z}] 0]
    set crd24b [lindex [$sel24b get {x y z}] 0]
    graphics $molnum cylinder $crd24a $crd24b radius 0.5 filled yes
    set sel25a [atomselect $molnum "resid 23 and name CA" frame $i]
    set sel25b [atomselect $molnum "resid 57 and name CA" frame $i]
    set crd25a [lindex [$sel25a get {x y z}] 0]
    set crd25b [lindex [$sel25b get {x y z}] 0]
    graphics $molnum cylinder $crd25a $crd25b radius 0.5 filled yes
    set sel26a [atomselect $molnum "resid 31 and name CA" frame $i]
    set sel26b [atomselect $molnum "resid 45 and name CA" frame $i]
    set crd26a [lindex [$sel26a get {x y z}] 0]
    set crd26b [lindex [$sel26b get {x y z}] 0]
    graphics $molnum cylinder $crd26a $crd26b radius 0.5 filled yes
    set sel27a [atomselect $molnum "resid 31 and name CA" frame $i]
    set sel27b [atomselect $molnum "resid 46 and name CA" frame $i]
    set crd27a [lindex [$sel27a get {x y z}] 0]
    set crd27b [lindex [$sel27b get {x y z}] 0]
    graphics $molnum cylinder $crd27a $crd27b radius 0.5 filled yes
    set sel28a [atomselect $molnum "resid 31 and name CA" frame $i]
    set sel28b [atomselect $molnum "resid 49 and name CA" frame $i]
    set crd28a [lindex [$sel28a get {x y z}] 0]
    set crd28b [lindex [$sel28b get {x y z}] 0]
    graphics $molnum cylinder $crd28a $crd28b radius 0.5 filled yes
    set sel29a [atomselect $molnum "resid 31 and name CA" frame $i]
    set sel29b [atomselect $molnum "resid 52 and name CA" frame $i]
    set crd29a [lindex [$sel29a get {x y z}] 0]
    set crd29b [lindex [$sel29b get {x y z}] 0]
    graphics $molnum cylinder $crd29a $crd29b radius 0.5 filled yes
    set sel30a [atomselect $molnum "resid 32 and name CA" frame $i]
    set sel30b [atomselect $molnum "resid 45 and name CA" frame $i]
    set crd30a [lindex [$sel30a get {x y z}] 0]
    set crd30b [lindex [$sel30b get {x y z}] 0]
    graphics $molnum cylinder $crd30a $crd30b radius 0.5 filled yes
    set sel31a [atomselect $molnum "resid 32 and name CA" frame $i]
    set sel31b [atomselect $molnum "resid 49 and name CA" frame $i]
    set crd31a [lindex [$sel31a get {x y z}] 0]
    set crd31b [lindex [$sel31b get {x y z}] 0]
    graphics $molnum cylinder $crd31a $crd31b radius 0.5 filled yes
    set sel32a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel32b [atomselect $molnum "resid 45 and name CA" frame $i]
    set crd32a [lindex [$sel32a get {x y z}] 0]
    set crd32b [lindex [$sel32b get {x y z}] 0]
    graphics $molnum cylinder $crd32a $crd32b radius 0.5 filled yes
    set sel33a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel33b [atomselect $molnum "resid 46 and name CA" frame $i]
    set crd33a [lindex [$sel33a get {x y z}] 0]
    set crd33b [lindex [$sel33b get {x y z}] 0]
    graphics $molnum cylinder $crd33a $crd33b radius 0.5 filled yes
    set sel34a [atomselect $molnum "resid 52 and name CA" frame $i]
    set sel34b [atomselect $molnum "resid 60 and name CA" frame $i]
    set crd34a [lindex [$sel34a get {x y z}] 0]
    set crd34b [lindex [$sel34b get {x y z}] 0]
    graphics $molnum cylinder $crd34a $crd34b radius 0.5 filled yes
    sleep $sleep
    }
}