proc draw_cyl {molnum sleep} {
set num_frames [molinfo $molnum get numframes]
for {set i 0} {$i < $num_frames} {incr i} {
    display update
    graphics $molnum delete all
    animate goto $i
    set sel1a [atomselect $molnum "resid 2 and name CA" frame $i]
    set sel1b [atomselect $molnum "resid 14 and name CA" frame $i]
    set crd1a [lindex [$sel1a get {x y z}] 0]
    set crd1b [lindex [$sel1b get {x y z}] 0]
    graphics $molnum cylinder $crd1a $crd1b radius 0.5 filled yes
    set sel2a [atomselect $molnum "resid 2 and name CA" frame $i]
    set sel2b [atomselect $molnum "resid 17 and name CA" frame $i]
    set crd2a [lindex [$sel2a get {x y z}] 0]
    set crd2b [lindex [$sel2b get {x y z}] 0]
    graphics $molnum cylinder $crd2a $crd2b radius 0.5 filled yes
    set sel3a [atomselect $molnum "resid 2 and name CA" frame $i]
    set sel3b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd3a [lindex [$sel3a get {x y z}] 0]
    set crd3b [lindex [$sel3b get {x y z}] 0]
    graphics $molnum cylinder $crd3a $crd3b radius 0.5 filled yes
    set sel4a [atomselect $molnum "resid 2 and name CA" frame $i]
    set sel4b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd4a [lindex [$sel4a get {x y z}] 0]
    set crd4b [lindex [$sel4b get {x y z}] 0]
    graphics $molnum cylinder $crd4a $crd4b radius 0.5 filled yes
    set sel5a [atomselect $molnum "resid 6 and name CA" frame $i]
    set sel5b [atomselect $molnum "resid 13 and name CA" frame $i]
    set crd5a [lindex [$sel5a get {x y z}] 0]
    set crd5b [lindex [$sel5b get {x y z}] 0]
    graphics $molnum cylinder $crd5a $crd5b radius 0.5 filled yes
    set sel6a [atomselect $molnum "resid 6 and name CA" frame $i]
    set sel6b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd6a [lindex [$sel6a get {x y z}] 0]
    set crd6b [lindex [$sel6b get {x y z}] 0]
    graphics $molnum cylinder $crd6a $crd6b radius 0.5 filled yes
    set sel7a [atomselect $molnum "resid 6 and name CA" frame $i]
    set sel7b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd7a [lindex [$sel7a get {x y z}] 0]
    set crd7b [lindex [$sel7b get {x y z}] 0]
    graphics $molnum cylinder $crd7a $crd7b radius 0.5 filled yes
    set sel8a [atomselect $molnum "resid 13 and name CA" frame $i]
    set sel8b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd8a [lindex [$sel8a get {x y z}] 0]
    set crd8b [lindex [$sel8b get {x y z}] 0]
    graphics $molnum cylinder $crd8a $crd8b radius 0.5 filled yes
    set sel9a [atomselect $molnum "resid 13 and name CA" frame $i]
    set sel9b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd9a [lindex [$sel9a get {x y z}] 0]
    set crd9b [lindex [$sel9b get {x y z}] 0]
    graphics $molnum cylinder $crd9a $crd9b radius 0.5 filled yes
    set sel10a [atomselect $molnum "resid 14 and name CA" frame $i]
    set sel10b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd10a [lindex [$sel10a get {x y z}] 0]
    set crd10b [lindex [$sel10b get {x y z}] 0]
    graphics $molnum cylinder $crd10a $crd10b radius 0.5 filled yes
    set sel11a [atomselect $molnum "resid 14 and name CA" frame $i]
    set sel11b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd11a [lindex [$sel11a get {x y z}] 0]
    set crd11b [lindex [$sel11b get {x y z}] 0]
    graphics $molnum cylinder $crd11a $crd11b radius 0.5 filled yes
    set sel12a [atomselect $molnum "resid 17 and name CA" frame $i]
    set sel12b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd12a [lindex [$sel12a get {x y z}] 0]
    set crd12b [lindex [$sel12b get {x y z}] 0]
    graphics $molnum cylinder $crd12a $crd12b radius 0.5 filled yes
    set sel13a [atomselect $molnum "resid 17 and name CA" frame $i]
    set sel13b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd13a [lindex [$sel13a get {x y z}] 0]
    set crd13b [lindex [$sel13b get {x y z}] 0]
    graphics $molnum cylinder $crd13a $crd13b radius 0.5 filled yes
    set sel14a [atomselect $molnum "resid 18 and name CA" frame $i]
    set sel14b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd14a [lindex [$sel14a get {x y z}] 0]
    set crd14b [lindex [$sel14b get {x y z}] 0]
    graphics $molnum cylinder $crd14a $crd14b radius 0.5 filled yes
    set sel15a [atomselect $molnum "resid 18 and name CA" frame $i]
    set sel15b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd15a [lindex [$sel15a get {x y z}] 0]
    set crd15b [lindex [$sel15b get {x y z}] 0]
    graphics $molnum cylinder $crd15a $crd15b radius 0.5 filled yes
    set sel16a [atomselect $molnum "resid 18 and name CA" frame $i]
    set sel16b [atomselect $molnum "resid 55 and name CA" frame $i]
    set crd16a [lindex [$sel16a get {x y z}] 0]
    set crd16b [lindex [$sel16b get {x y z}] 0]
    graphics $molnum cylinder $crd16a $crd16b radius 0.5 filled yes
    set sel17a [atomselect $molnum "resid 18 and name CA" frame $i]
    set sel17b [atomselect $molnum "resid 57 and name CA" frame $i]
    set crd17a [lindex [$sel17a get {x y z}] 0]
    set crd17b [lindex [$sel17b get {x y z}] 0]
    graphics $molnum cylinder $crd17a $crd17b radius 0.5 filled yes
    set sel18a [atomselect $molnum "resid 20 and name CA" frame $i]
    set sel18b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd18a [lindex [$sel18a get {x y z}] 0]
    set crd18b [lindex [$sel18b get {x y z}] 0]
    graphics $molnum cylinder $crd18a $crd18b radius 0.5 filled yes
    set sel19a [atomselect $molnum "resid 20 and name CA" frame $i]
    set sel19b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd19a [lindex [$sel19a get {x y z}] 0]
    set crd19b [lindex [$sel19b get {x y z}] 0]
    graphics $molnum cylinder $crd19a $crd19b radius 0.5 filled yes
    set sel20a [atomselect $molnum "resid 20 and name CA" frame $i]
    set sel20b [atomselect $molnum "resid 55 and name CA" frame $i]
    set crd20a [lindex [$sel20a get {x y z}] 0]
    set crd20b [lindex [$sel20b get {x y z}] 0]
    graphics $molnum cylinder $crd20a $crd20b radius 0.5 filled yes
    set sel21a [atomselect $molnum "resid 20 and name CA" frame $i]
    set sel21b [atomselect $molnum "resid 57 and name CA" frame $i]
    set crd21a [lindex [$sel21a get {x y z}] 0]
    set crd21b [lindex [$sel21b get {x y z}] 0]
    graphics $molnum cylinder $crd21a $crd21b radius 0.5 filled yes
    set sel22a [atomselect $molnum "resid 21 and name CA" frame $i]
    set sel22b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd22a [lindex [$sel22a get {x y z}] 0]
    set crd22b [lindex [$sel22b get {x y z}] 0]
    graphics $molnum cylinder $crd22a $crd22b radius 0.5 filled yes
    set sel23a [atomselect $molnum "resid 21 and name CA" frame $i]
    set sel23b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd23a [lindex [$sel23a get {x y z}] 0]
    set crd23b [lindex [$sel23b get {x y z}] 0]
    graphics $molnum cylinder $crd23a $crd23b radius 0.5 filled yes
    set sel24a [atomselect $molnum "resid 21 and name CA" frame $i]
    set sel24b [atomselect $molnum "resid 55 and name CA" frame $i]
    set crd24a [lindex [$sel24a get {x y z}] 0]
    set crd24b [lindex [$sel24b get {x y z}] 0]
    graphics $molnum cylinder $crd24a $crd24b radius 0.5 filled yes
    set sel25a [atomselect $molnum "resid 21 and name CA" frame $i]
    set sel25b [atomselect $molnum "resid 57 and name CA" frame $i]
    set crd25a [lindex [$sel25a get {x y z}] 0]
    set crd25b [lindex [$sel25b get {x y z}] 0]
    graphics $molnum cylinder $crd25a $crd25b radius 0.5 filled yes
    set sel26a [atomselect $molnum "resid 23 and name CA" frame $i]
    set sel26b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd26a [lindex [$sel26a get {x y z}] 0]
    set crd26b [lindex [$sel26b get {x y z}] 0]
    graphics $molnum cylinder $crd26a $crd26b radius 0.5 filled yes
    set sel27a [atomselect $molnum "resid 23 and name CA" frame $i]
    set sel27b [atomselect $molnum "resid 43 and name CA" frame $i]
    set crd27a [lindex [$sel27a get {x y z}] 0]
    set crd27b [lindex [$sel27b get {x y z}] 0]
    graphics $molnum cylinder $crd27a $crd27b radius 0.5 filled yes
    set sel28a [atomselect $molnum "resid 23 and name CA" frame $i]
    set sel28b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd28a [lindex [$sel28a get {x y z}] 0]
    set crd28b [lindex [$sel28b get {x y z}] 0]
    graphics $molnum cylinder $crd28a $crd28b radius 0.5 filled yes
    set sel29a [atomselect $molnum "resid 23 and name CA" frame $i]
    set sel29b [atomselect $molnum "resid 52 and name CA" frame $i]
    set crd29a [lindex [$sel29a get {x y z}] 0]
    set crd29b [lindex [$sel29b get {x y z}] 0]
    graphics $molnum cylinder $crd29a $crd29b radius 0.5 filled yes
    set sel30a [atomselect $molnum "resid 23 and name CA" frame $i]
    set sel30b [atomselect $molnum "resid 55 and name CA" frame $i]
    set crd30a [lindex [$sel30a get {x y z}] 0]
    set crd30b [lindex [$sel30b get {x y z}] 0]
    graphics $molnum cylinder $crd30a $crd30b radius 0.5 filled yes
    set sel31a [atomselect $molnum "resid 23 and name CA" frame $i]
    set sel31b [atomselect $molnum "resid 58 and name CA" frame $i]
    set crd31a [lindex [$sel31a get {x y z}] 0]
    set crd31b [lindex [$sel31b get {x y z}] 0]
    graphics $molnum cylinder $crd31a $crd31b radius 0.5 filled yes
    set sel32a [atomselect $molnum "resid 31 and name CA" frame $i]
    set sel32b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd32a [lindex [$sel32a get {x y z}] 0]
    set crd32b [lindex [$sel32b get {x y z}] 0]
    graphics $molnum cylinder $crd32a $crd32b radius 0.5 filled yes
    set sel33a [atomselect $molnum "resid 32 and name CA" frame $i]
    set sel33b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd33a [lindex [$sel33a get {x y z}] 0]
    set crd33b [lindex [$sel33b get {x y z}] 0]
    graphics $molnum cylinder $crd33a $crd33b radius 0.5 filled yes
    set sel34a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel34b [atomselect $molnum "resid 43 and name CA" frame $i]
    set crd34a [lindex [$sel34a get {x y z}] 0]
    set crd34b [lindex [$sel34b get {x y z}] 0]
    graphics $molnum cylinder $crd34a $crd34b radius 0.5 filled yes
    set sel35a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel35b [atomselect $molnum "resid 45 and name CA" frame $i]
    set crd35a [lindex [$sel35a get {x y z}] 0]
    set crd35b [lindex [$sel35b get {x y z}] 0]
    graphics $molnum cylinder $crd35a $crd35b radius 0.5 filled yes
    set sel36a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel36b [atomselect $molnum "resid 46 and name CA" frame $i]
    set crd36a [lindex [$sel36a get {x y z}] 0]
    set crd36b [lindex [$sel36b get {x y z}] 0]
    graphics $molnum cylinder $crd36a $crd36b radius 0.5 filled yes
    set sel37a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel37b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd37a [lindex [$sel37a get {x y z}] 0]
    set crd37b [lindex [$sel37b get {x y z}] 0]
    graphics $molnum cylinder $crd37a $crd37b radius 0.5 filled yes
    set sel38a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel38b [atomselect $molnum "resid 49 and name CA" frame $i]
    set crd38a [lindex [$sel38a get {x y z}] 0]
    set crd38b [lindex [$sel38b get {x y z}] 0]
    graphics $molnum cylinder $crd38a $crd38b radius 0.5 filled yes
    set sel39a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel39b [atomselect $molnum "resid 52 and name CA" frame $i]
    set crd39a [lindex [$sel39a get {x y z}] 0]
    set crd39b [lindex [$sel39b get {x y z}] 0]
    graphics $molnum cylinder $crd39a $crd39b radius 0.5 filled yes
    set sel40a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel40b [atomselect $molnum "resid 55 and name CA" frame $i]
    set crd40a [lindex [$sel40a get {x y z}] 0]
    set crd40b [lindex [$sel40b get {x y z}] 0]
    graphics $molnum cylinder $crd40a $crd40b radius 0.5 filled yes
    set sel41a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel41b [atomselect $molnum "resid 57 and name CA" frame $i]
    set crd41a [lindex [$sel41a get {x y z}] 0]
    set crd41b [lindex [$sel41b get {x y z}] 0]
    graphics $molnum cylinder $crd41a $crd41b radius 0.5 filled yes
    set sel42a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel42b [atomselect $molnum "resid 58 and name CA" frame $i]
    set crd42a [lindex [$sel42a get {x y z}] 0]
    set crd42b [lindex [$sel42b get {x y z}] 0]
    graphics $molnum cylinder $crd42a $crd42b radius 0.5 filled yes
    set sel43a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel43b [atomselect $molnum "resid 60 and name CA" frame $i]
    set crd43a [lindex [$sel43a get {x y z}] 0]
    set crd43b [lindex [$sel43b get {x y z}] 0]
    graphics $molnum cylinder $crd43a $crd43b radius 0.5 filled yes
    set sel44a [atomselect $molnum "resid 39 and name CA" frame $i]
    set sel44b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd44a [lindex [$sel44a get {x y z}] 0]
    set crd44b [lindex [$sel44b get {x y z}] 0]
    graphics $molnum cylinder $crd44a $crd44b radius 0.5 filled yes
    set sel45a [atomselect $molnum "resid 46 and name CA" frame $i]
    set sel45b [atomselect $molnum "resid 60 and name CA" frame $i]
    set crd45a [lindex [$sel45a get {x y z}] 0]
    set crd45b [lindex [$sel45b get {x y z}] 0]
    graphics $molnum cylinder $crd45a $crd45b radius 0.5 filled yes
    set sel46a [atomselect $molnum "resid 47 and name CA" frame $i]
    set sel46b [atomselect $molnum "resid 55 and name CA" frame $i]
    set crd46a [lindex [$sel46a get {x y z}] 0]
    set crd46b [lindex [$sel46b get {x y z}] 0]
    graphics $molnum cylinder $crd46a $crd46b radius 0.5 filled yes
    set sel47a [atomselect $molnum "resid 47 and name CA" frame $i]
    set sel47b [atomselect $molnum "resid 57 and name CA" frame $i]
    set crd47a [lindex [$sel47a get {x y z}] 0]
    set crd47b [lindex [$sel47b get {x y z}] 0]
    graphics $molnum cylinder $crd47a $crd47b radius 0.5 filled yes
    set sel48a [atomselect $molnum "resid 47 and name CA" frame $i]
    set sel48b [atomselect $molnum "resid 58 and name CA" frame $i]
    set crd48a [lindex [$sel48a get {x y z}] 0]
    set crd48b [lindex [$sel48b get {x y z}] 0]
    graphics $molnum cylinder $crd48a $crd48b radius 0.5 filled yes
    set sel49a [atomselect $molnum "resid 47 and name CA" frame $i]
    set sel49b [atomselect $molnum "resid 60 and name CA" frame $i]
    set crd49a [lindex [$sel49a get {x y z}] 0]
    set crd49b [lindex [$sel49b get {x y z}] 0]
    graphics $molnum cylinder $crd49a $crd49b radius 0.5 filled yes
    set sel50a [atomselect $molnum "resid 2 and name CA" frame $i]
    set sel50b [atomselect $molnum "resid 14 and name CA" frame $i]
    set crd50a [lindex [$sel50a get {x y z}] 0]
    set crd50b [lindex [$sel50b get {x y z}] 0]
    graphics $molnum cylinder $crd50a $crd50b radius 0.5 filled yes
    set sel51a [atomselect $molnum "resid 2 and name CA" frame $i]
    set sel51b [atomselect $molnum "resid 17 and name CA" frame $i]
    set crd51a [lindex [$sel51a get {x y z}] 0]
    set crd51b [lindex [$sel51b get {x y z}] 0]
    graphics $molnum cylinder $crd51a $crd51b radius 0.5 filled yes
    set sel52a [atomselect $molnum "resid 2 and name CA" frame $i]
    set sel52b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd52a [lindex [$sel52a get {x y z}] 0]
    set crd52b [lindex [$sel52b get {x y z}] 0]
    graphics $molnum cylinder $crd52a $crd52b radius 0.5 filled yes
    set sel53a [atomselect $molnum "resid 2 and name CA" frame $i]
    set sel53b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd53a [lindex [$sel53a get {x y z}] 0]
    set crd53b [lindex [$sel53b get {x y z}] 0]
    graphics $molnum cylinder $crd53a $crd53b radius 0.5 filled yes
    set sel54a [atomselect $molnum "resid 6 and name CA" frame $i]
    set sel54b [atomselect $molnum "resid 13 and name CA" frame $i]
    set crd54a [lindex [$sel54a get {x y z}] 0]
    set crd54b [lindex [$sel54b get {x y z}] 0]
    graphics $molnum cylinder $crd54a $crd54b radius 0.5 filled yes
    set sel55a [atomselect $molnum "resid 6 and name CA" frame $i]
    set sel55b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd55a [lindex [$sel55a get {x y z}] 0]
    set crd55b [lindex [$sel55b get {x y z}] 0]
    graphics $molnum cylinder $crd55a $crd55b radius 0.5 filled yes
    set sel56a [atomselect $molnum "resid 6 and name CA" frame $i]
    set sel56b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd56a [lindex [$sel56a get {x y z}] 0]
    set crd56b [lindex [$sel56b get {x y z}] 0]
    graphics $molnum cylinder $crd56a $crd56b radius 0.5 filled yes
    set sel57a [atomselect $molnum "resid 13 and name CA" frame $i]
    set sel57b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd57a [lindex [$sel57a get {x y z}] 0]
    set crd57b [lindex [$sel57b get {x y z}] 0]
    graphics $molnum cylinder $crd57a $crd57b radius 0.5 filled yes
    set sel58a [atomselect $molnum "resid 13 and name CA" frame $i]
    set sel58b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd58a [lindex [$sel58a get {x y z}] 0]
    set crd58b [lindex [$sel58b get {x y z}] 0]
    graphics $molnum cylinder $crd58a $crd58b radius 0.5 filled yes
    set sel59a [atomselect $molnum "resid 14 and name CA" frame $i]
    set sel59b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd59a [lindex [$sel59a get {x y z}] 0]
    set crd59b [lindex [$sel59b get {x y z}] 0]
    graphics $molnum cylinder $crd59a $crd59b radius 0.5 filled yes
    set sel60a [atomselect $molnum "resid 14 and name CA" frame $i]
    set sel60b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd60a [lindex [$sel60a get {x y z}] 0]
    set crd60b [lindex [$sel60b get {x y z}] 0]
    graphics $molnum cylinder $crd60a $crd60b radius 0.5 filled yes
    set sel61a [atomselect $molnum "resid 17 and name CA" frame $i]
    set sel61b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd61a [lindex [$sel61a get {x y z}] 0]
    set crd61b [lindex [$sel61b get {x y z}] 0]
    graphics $molnum cylinder $crd61a $crd61b radius 0.5 filled yes
    set sel62a [atomselect $molnum "resid 17 and name CA" frame $i]
    set sel62b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd62a [lindex [$sel62a get {x y z}] 0]
    set crd62b [lindex [$sel62b get {x y z}] 0]
    graphics $molnum cylinder $crd62a $crd62b radius 0.5 filled yes
    set sel63a [atomselect $molnum "resid 18 and name CA" frame $i]
    set sel63b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd63a [lindex [$sel63a get {x y z}] 0]
    set crd63b [lindex [$sel63b get {x y z}] 0]
    graphics $molnum cylinder $crd63a $crd63b radius 0.5 filled yes
    set sel64a [atomselect $molnum "resid 18 and name CA" frame $i]
    set sel64b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd64a [lindex [$sel64a get {x y z}] 0]
    set crd64b [lindex [$sel64b get {x y z}] 0]
    graphics $molnum cylinder $crd64a $crd64b radius 0.5 filled yes
    set sel65a [atomselect $molnum "resid 18 and name CA" frame $i]
    set sel65b [atomselect $molnum "resid 55 and name CA" frame $i]
    set crd65a [lindex [$sel65a get {x y z}] 0]
    set crd65b [lindex [$sel65b get {x y z}] 0]
    graphics $molnum cylinder $crd65a $crd65b radius 0.5 filled yes
    set sel66a [atomselect $molnum "resid 18 and name CA" frame $i]
    set sel66b [atomselect $molnum "resid 57 and name CA" frame $i]
    set crd66a [lindex [$sel66a get {x y z}] 0]
    set crd66b [lindex [$sel66b get {x y z}] 0]
    graphics $molnum cylinder $crd66a $crd66b radius 0.5 filled yes
    set sel67a [atomselect $molnum "resid 20 and name CA" frame $i]
    set sel67b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd67a [lindex [$sel67a get {x y z}] 0]
    set crd67b [lindex [$sel67b get {x y z}] 0]
    graphics $molnum cylinder $crd67a $crd67b radius 0.5 filled yes
    set sel68a [atomselect $molnum "resid 20 and name CA" frame $i]
    set sel68b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd68a [lindex [$sel68a get {x y z}] 0]
    set crd68b [lindex [$sel68b get {x y z}] 0]
    graphics $molnum cylinder $crd68a $crd68b radius 0.5 filled yes
    set sel69a [atomselect $molnum "resid 20 and name CA" frame $i]
    set sel69b [atomselect $molnum "resid 55 and name CA" frame $i]
    set crd69a [lindex [$sel69a get {x y z}] 0]
    set crd69b [lindex [$sel69b get {x y z}] 0]
    graphics $molnum cylinder $crd69a $crd69b radius 0.5 filled yes
    set sel70a [atomselect $molnum "resid 20 and name CA" frame $i]
    set sel70b [atomselect $molnum "resid 57 and name CA" frame $i]
    set crd70a [lindex [$sel70a get {x y z}] 0]
    set crd70b [lindex [$sel70b get {x y z}] 0]
    graphics $molnum cylinder $crd70a $crd70b radius 0.5 filled yes
    set sel71a [atomselect $molnum "resid 21 and name CA" frame $i]
    set sel71b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd71a [lindex [$sel71a get {x y z}] 0]
    set crd71b [lindex [$sel71b get {x y z}] 0]
    graphics $molnum cylinder $crd71a $crd71b radius 0.5 filled yes
    set sel72a [atomselect $molnum "resid 21 and name CA" frame $i]
    set sel72b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd72a [lindex [$sel72a get {x y z}] 0]
    set crd72b [lindex [$sel72b get {x y z}] 0]
    graphics $molnum cylinder $crd72a $crd72b radius 0.5 filled yes
    set sel73a [atomselect $molnum "resid 21 and name CA" frame $i]
    set sel73b [atomselect $molnum "resid 55 and name CA" frame $i]
    set crd73a [lindex [$sel73a get {x y z}] 0]
    set crd73b [lindex [$sel73b get {x y z}] 0]
    graphics $molnum cylinder $crd73a $crd73b radius 0.5 filled yes
    set sel74a [atomselect $molnum "resid 21 and name CA" frame $i]
    set sel74b [atomselect $molnum "resid 57 and name CA" frame $i]
    set crd74a [lindex [$sel74a get {x y z}] 0]
    set crd74b [lindex [$sel74b get {x y z}] 0]
    graphics $molnum cylinder $crd74a $crd74b radius 0.5 filled yes
    set sel75a [atomselect $molnum "resid 23 and name CA" frame $i]
    set sel75b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd75a [lindex [$sel75a get {x y z}] 0]
    set crd75b [lindex [$sel75b get {x y z}] 0]
    graphics $molnum cylinder $crd75a $crd75b radius 0.5 filled yes
    set sel76a [atomselect $molnum "resid 23 and name CA" frame $i]
    set sel76b [atomselect $molnum "resid 43 and name CA" frame $i]
    set crd76a [lindex [$sel76a get {x y z}] 0]
    set crd76b [lindex [$sel76b get {x y z}] 0]
    graphics $molnum cylinder $crd76a $crd76b radius 0.5 filled yes
    set sel77a [atomselect $molnum "resid 23 and name CA" frame $i]
    set sel77b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd77a [lindex [$sel77a get {x y z}] 0]
    set crd77b [lindex [$sel77b get {x y z}] 0]
    graphics $molnum cylinder $crd77a $crd77b radius 0.5 filled yes
    set sel78a [atomselect $molnum "resid 23 and name CA" frame $i]
    set sel78b [atomselect $molnum "resid 52 and name CA" frame $i]
    set crd78a [lindex [$sel78a get {x y z}] 0]
    set crd78b [lindex [$sel78b get {x y z}] 0]
    graphics $molnum cylinder $crd78a $crd78b radius 0.5 filled yes
    set sel79a [atomselect $molnum "resid 23 and name CA" frame $i]
    set sel79b [atomselect $molnum "resid 55 and name CA" frame $i]
    set crd79a [lindex [$sel79a get {x y z}] 0]
    set crd79b [lindex [$sel79b get {x y z}] 0]
    graphics $molnum cylinder $crd79a $crd79b radius 0.5 filled yes
    set sel80a [atomselect $molnum "resid 23 and name CA" frame $i]
    set sel80b [atomselect $molnum "resid 58 and name CA" frame $i]
    set crd80a [lindex [$sel80a get {x y z}] 0]
    set crd80b [lindex [$sel80b get {x y z}] 0]
    graphics $molnum cylinder $crd80a $crd80b radius 0.5 filled yes
    set sel81a [atomselect $molnum "resid 31 and name CA" frame $i]
    set sel81b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd81a [lindex [$sel81a get {x y z}] 0]
    set crd81b [lindex [$sel81b get {x y z}] 0]
    graphics $molnum cylinder $crd81a $crd81b radius 0.5 filled yes
    set sel82a [atomselect $molnum "resid 32 and name CA" frame $i]
    set sel82b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd82a [lindex [$sel82a get {x y z}] 0]
    set crd82b [lindex [$sel82b get {x y z}] 0]
    graphics $molnum cylinder $crd82a $crd82b radius 0.5 filled yes
    set sel83a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel83b [atomselect $molnum "resid 43 and name CA" frame $i]
    set crd83a [lindex [$sel83a get {x y z}] 0]
    set crd83b [lindex [$sel83b get {x y z}] 0]
    graphics $molnum cylinder $crd83a $crd83b radius 0.5 filled yes
    set sel84a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel84b [atomselect $molnum "resid 45 and name CA" frame $i]
    set crd84a [lindex [$sel84a get {x y z}] 0]
    set crd84b [lindex [$sel84b get {x y z}] 0]
    graphics $molnum cylinder $crd84a $crd84b radius 0.5 filled yes
    set sel85a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel85b [atomselect $molnum "resid 46 and name CA" frame $i]
    set crd85a [lindex [$sel85a get {x y z}] 0]
    set crd85b [lindex [$sel85b get {x y z}] 0]
    graphics $molnum cylinder $crd85a $crd85b radius 0.5 filled yes
    set sel86a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel86b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd86a [lindex [$sel86a get {x y z}] 0]
    set crd86b [lindex [$sel86b get {x y z}] 0]
    graphics $molnum cylinder $crd86a $crd86b radius 0.5 filled yes
    set sel87a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel87b [atomselect $molnum "resid 49 and name CA" frame $i]
    set crd87a [lindex [$sel87a get {x y z}] 0]
    set crd87b [lindex [$sel87b get {x y z}] 0]
    graphics $molnum cylinder $crd87a $crd87b radius 0.5 filled yes
    set sel88a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel88b [atomselect $molnum "resid 52 and name CA" frame $i]
    set crd88a [lindex [$sel88a get {x y z}] 0]
    set crd88b [lindex [$sel88b get {x y z}] 0]
    graphics $molnum cylinder $crd88a $crd88b radius 0.5 filled yes
    set sel89a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel89b [atomselect $molnum "resid 55 and name CA" frame $i]
    set crd89a [lindex [$sel89a get {x y z}] 0]
    set crd89b [lindex [$sel89b get {x y z}] 0]
    graphics $molnum cylinder $crd89a $crd89b radius 0.5 filled yes
    set sel90a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel90b [atomselect $molnum "resid 57 and name CA" frame $i]
    set crd90a [lindex [$sel90a get {x y z}] 0]
    set crd90b [lindex [$sel90b get {x y z}] 0]
    graphics $molnum cylinder $crd90a $crd90b radius 0.5 filled yes
    set sel91a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel91b [atomselect $molnum "resid 58 and name CA" frame $i]
    set crd91a [lindex [$sel91a get {x y z}] 0]
    set crd91b [lindex [$sel91b get {x y z}] 0]
    graphics $molnum cylinder $crd91a $crd91b radius 0.5 filled yes
    set sel92a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel92b [atomselect $molnum "resid 60 and name CA" frame $i]
    set crd92a [lindex [$sel92a get {x y z}] 0]
    set crd92b [lindex [$sel92b get {x y z}] 0]
    graphics $molnum cylinder $crd92a $crd92b radius 0.5 filled yes
    set sel93a [atomselect $molnum "resid 39 and name CA" frame $i]
    set sel93b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd93a [lindex [$sel93a get {x y z}] 0]
    set crd93b [lindex [$sel93b get {x y z}] 0]
    graphics $molnum cylinder $crd93a $crd93b radius 0.5 filled yes
    set sel94a [atomselect $molnum "resid 46 and name CA" frame $i]
    set sel94b [atomselect $molnum "resid 60 and name CA" frame $i]
    set crd94a [lindex [$sel94a get {x y z}] 0]
    set crd94b [lindex [$sel94b get {x y z}] 0]
    graphics $molnum cylinder $crd94a $crd94b radius 0.5 filled yes
    set sel95a [atomselect $molnum "resid 47 and name CA" frame $i]
    set sel95b [atomselect $molnum "resid 55 and name CA" frame $i]
    set crd95a [lindex [$sel95a get {x y z}] 0]
    set crd95b [lindex [$sel95b get {x y z}] 0]
    graphics $molnum cylinder $crd95a $crd95b radius 0.5 filled yes
    set sel96a [atomselect $molnum "resid 47 and name CA" frame $i]
    set sel96b [atomselect $molnum "resid 57 and name CA" frame $i]
    set crd96a [lindex [$sel96a get {x y z}] 0]
    set crd96b [lindex [$sel96b get {x y z}] 0]
    graphics $molnum cylinder $crd96a $crd96b radius 0.5 filled yes
    set sel97a [atomselect $molnum "resid 47 and name CA" frame $i]
    set sel97b [atomselect $molnum "resid 58 and name CA" frame $i]
    set crd97a [lindex [$sel97a get {x y z}] 0]
    set crd97b [lindex [$sel97b get {x y z}] 0]
    graphics $molnum cylinder $crd97a $crd97b radius 0.5 filled yes
    set sel98a [atomselect $molnum "resid 47 and name CA" frame $i]
    set sel98b [atomselect $molnum "resid 60 and name CA" frame $i]
    set crd98a [lindex [$sel98a get {x y z}] 0]
    set crd98b [lindex [$sel98b get {x y z}] 0]
    graphics $molnum cylinder $crd98a $crd98b radius 0.5 filled yes
    set sel99a [atomselect $molnum "resid 2 and name CA" frame $i]
    set sel99b [atomselect $molnum "resid 14 and name CA" frame $i]
    set crd99a [lindex [$sel99a get {x y z}] 0]
    set crd99b [lindex [$sel99b get {x y z}] 0]
    graphics $molnum cylinder $crd99a $crd99b radius 0.5 filled yes
    set sel100a [atomselect $molnum "resid 2 and name CA" frame $i]
    set sel100b [atomselect $molnum "resid 17 and name CA" frame $i]
    set crd100a [lindex [$sel100a get {x y z}] 0]
    set crd100b [lindex [$sel100b get {x y z}] 0]
    graphics $molnum cylinder $crd100a $crd100b radius 0.5 filled yes
    set sel101a [atomselect $molnum "resid 2 and name CA" frame $i]
    set sel101b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd101a [lindex [$sel101a get {x y z}] 0]
    set crd101b [lindex [$sel101b get {x y z}] 0]
    graphics $molnum cylinder $crd101a $crd101b radius 0.5 filled yes
    set sel102a [atomselect $molnum "resid 2 and name CA" frame $i]
    set sel102b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd102a [lindex [$sel102a get {x y z}] 0]
    set crd102b [lindex [$sel102b get {x y z}] 0]
    graphics $molnum cylinder $crd102a $crd102b radius 0.5 filled yes
    set sel103a [atomselect $molnum "resid 6 and name CA" frame $i]
    set sel103b [atomselect $molnum "resid 13 and name CA" frame $i]
    set crd103a [lindex [$sel103a get {x y z}] 0]
    set crd103b [lindex [$sel103b get {x y z}] 0]
    graphics $molnum cylinder $crd103a $crd103b radius 0.5 filled yes
    set sel104a [atomselect $molnum "resid 6 and name CA" frame $i]
    set sel104b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd104a [lindex [$sel104a get {x y z}] 0]
    set crd104b [lindex [$sel104b get {x y z}] 0]
    graphics $molnum cylinder $crd104a $crd104b radius 0.5 filled yes
    set sel105a [atomselect $molnum "resid 6 and name CA" frame $i]
    set sel105b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd105a [lindex [$sel105a get {x y z}] 0]
    set crd105b [lindex [$sel105b get {x y z}] 0]
    graphics $molnum cylinder $crd105a $crd105b radius 0.5 filled yes
    set sel106a [atomselect $molnum "resid 13 and name CA" frame $i]
    set sel106b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd106a [lindex [$sel106a get {x y z}] 0]
    set crd106b [lindex [$sel106b get {x y z}] 0]
    graphics $molnum cylinder $crd106a $crd106b radius 0.5 filled yes
    set sel107a [atomselect $molnum "resid 13 and name CA" frame $i]
    set sel107b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd107a [lindex [$sel107a get {x y z}] 0]
    set crd107b [lindex [$sel107b get {x y z}] 0]
    graphics $molnum cylinder $crd107a $crd107b radius 0.5 filled yes
    set sel108a [atomselect $molnum "resid 14 and name CA" frame $i]
    set sel108b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd108a [lindex [$sel108a get {x y z}] 0]
    set crd108b [lindex [$sel108b get {x y z}] 0]
    graphics $molnum cylinder $crd108a $crd108b radius 0.5 filled yes
    set sel109a [atomselect $molnum "resid 14 and name CA" frame $i]
    set sel109b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd109a [lindex [$sel109a get {x y z}] 0]
    set crd109b [lindex [$sel109b get {x y z}] 0]
    graphics $molnum cylinder $crd109a $crd109b radius 0.5 filled yes
    set sel110a [atomselect $molnum "resid 17 and name CA" frame $i]
    set sel110b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd110a [lindex [$sel110a get {x y z}] 0]
    set crd110b [lindex [$sel110b get {x y z}] 0]
    graphics $molnum cylinder $crd110a $crd110b radius 0.5 filled yes
    set sel111a [atomselect $molnum "resid 17 and name CA" frame $i]
    set sel111b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd111a [lindex [$sel111a get {x y z}] 0]
    set crd111b [lindex [$sel111b get {x y z}] 0]
    graphics $molnum cylinder $crd111a $crd111b radius 0.5 filled yes
    set sel112a [atomselect $molnum "resid 18 and name CA" frame $i]
    set sel112b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd112a [lindex [$sel112a get {x y z}] 0]
    set crd112b [lindex [$sel112b get {x y z}] 0]
    graphics $molnum cylinder $crd112a $crd112b radius 0.5 filled yes
    set sel113a [atomselect $molnum "resid 18 and name CA" frame $i]
    set sel113b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd113a [lindex [$sel113a get {x y z}] 0]
    set crd113b [lindex [$sel113b get {x y z}] 0]
    graphics $molnum cylinder $crd113a $crd113b radius 0.5 filled yes
    set sel114a [atomselect $molnum "resid 18 and name CA" frame $i]
    set sel114b [atomselect $molnum "resid 55 and name CA" frame $i]
    set crd114a [lindex [$sel114a get {x y z}] 0]
    set crd114b [lindex [$sel114b get {x y z}] 0]
    graphics $molnum cylinder $crd114a $crd114b radius 0.5 filled yes
    set sel115a [atomselect $molnum "resid 18 and name CA" frame $i]
    set sel115b [atomselect $molnum "resid 57 and name CA" frame $i]
    set crd115a [lindex [$sel115a get {x y z}] 0]
    set crd115b [lindex [$sel115b get {x y z}] 0]
    graphics $molnum cylinder $crd115a $crd115b radius 0.5 filled yes
    set sel116a [atomselect $molnum "resid 20 and name CA" frame $i]
    set sel116b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd116a [lindex [$sel116a get {x y z}] 0]
    set crd116b [lindex [$sel116b get {x y z}] 0]
    graphics $molnum cylinder $crd116a $crd116b radius 0.5 filled yes
    set sel117a [atomselect $molnum "resid 20 and name CA" frame $i]
    set sel117b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd117a [lindex [$sel117a get {x y z}] 0]
    set crd117b [lindex [$sel117b get {x y z}] 0]
    graphics $molnum cylinder $crd117a $crd117b radius 0.5 filled yes
    set sel118a [atomselect $molnum "resid 20 and name CA" frame $i]
    set sel118b [atomselect $molnum "resid 55 and name CA" frame $i]
    set crd118a [lindex [$sel118a get {x y z}] 0]
    set crd118b [lindex [$sel118b get {x y z}] 0]
    graphics $molnum cylinder $crd118a $crd118b radius 0.5 filled yes
    set sel119a [atomselect $molnum "resid 20 and name CA" frame $i]
    set sel119b [atomselect $molnum "resid 57 and name CA" frame $i]
    set crd119a [lindex [$sel119a get {x y z}] 0]
    set crd119b [lindex [$sel119b get {x y z}] 0]
    graphics $molnum cylinder $crd119a $crd119b radius 0.5 filled yes
    set sel120a [atomselect $molnum "resid 21 and name CA" frame $i]
    set sel120b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd120a [lindex [$sel120a get {x y z}] 0]
    set crd120b [lindex [$sel120b get {x y z}] 0]
    graphics $molnum cylinder $crd120a $crd120b radius 0.5 filled yes
    set sel121a [atomselect $molnum "resid 21 and name CA" frame $i]
    set sel121b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd121a [lindex [$sel121a get {x y z}] 0]
    set crd121b [lindex [$sel121b get {x y z}] 0]
    graphics $molnum cylinder $crd121a $crd121b radius 0.5 filled yes
    set sel122a [atomselect $molnum "resid 21 and name CA" frame $i]
    set sel122b [atomselect $molnum "resid 55 and name CA" frame $i]
    set crd122a [lindex [$sel122a get {x y z}] 0]
    set crd122b [lindex [$sel122b get {x y z}] 0]
    graphics $molnum cylinder $crd122a $crd122b radius 0.5 filled yes
    set sel123a [atomselect $molnum "resid 21 and name CA" frame $i]
    set sel123b [atomselect $molnum "resid 57 and name CA" frame $i]
    set crd123a [lindex [$sel123a get {x y z}] 0]
    set crd123b [lindex [$sel123b get {x y z}] 0]
    graphics $molnum cylinder $crd123a $crd123b radius 0.5 filled yes
    set sel124a [atomselect $molnum "resid 23 and name CA" frame $i]
    set sel124b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd124a [lindex [$sel124a get {x y z}] 0]
    set crd124b [lindex [$sel124b get {x y z}] 0]
    graphics $molnum cylinder $crd124a $crd124b radius 0.5 filled yes
    set sel125a [atomselect $molnum "resid 23 and name CA" frame $i]
    set sel125b [atomselect $molnum "resid 43 and name CA" frame $i]
    set crd125a [lindex [$sel125a get {x y z}] 0]
    set crd125b [lindex [$sel125b get {x y z}] 0]
    graphics $molnum cylinder $crd125a $crd125b radius 0.5 filled yes
    set sel126a [atomselect $molnum "resid 23 and name CA" frame $i]
    set sel126b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd126a [lindex [$sel126a get {x y z}] 0]
    set crd126b [lindex [$sel126b get {x y z}] 0]
    graphics $molnum cylinder $crd126a $crd126b radius 0.5 filled yes
    set sel127a [atomselect $molnum "resid 23 and name CA" frame $i]
    set sel127b [atomselect $molnum "resid 52 and name CA" frame $i]
    set crd127a [lindex [$sel127a get {x y z}] 0]
    set crd127b [lindex [$sel127b get {x y z}] 0]
    graphics $molnum cylinder $crd127a $crd127b radius 0.5 filled yes
    set sel128a [atomselect $molnum "resid 23 and name CA" frame $i]
    set sel128b [atomselect $molnum "resid 55 and name CA" frame $i]
    set crd128a [lindex [$sel128a get {x y z}] 0]
    set crd128b [lindex [$sel128b get {x y z}] 0]
    graphics $molnum cylinder $crd128a $crd128b radius 0.5 filled yes
    set sel129a [atomselect $molnum "resid 23 and name CA" frame $i]
    set sel129b [atomselect $molnum "resid 58 and name CA" frame $i]
    set crd129a [lindex [$sel129a get {x y z}] 0]
    set crd129b [lindex [$sel129b get {x y z}] 0]
    graphics $molnum cylinder $crd129a $crd129b radius 0.5 filled yes
    set sel130a [atomselect $molnum "resid 31 and name CA" frame $i]
    set sel130b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd130a [lindex [$sel130a get {x y z}] 0]
    set crd130b [lindex [$sel130b get {x y z}] 0]
    graphics $molnum cylinder $crd130a $crd130b radius 0.5 filled yes
    set sel131a [atomselect $molnum "resid 32 and name CA" frame $i]
    set sel131b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd131a [lindex [$sel131a get {x y z}] 0]
    set crd131b [lindex [$sel131b get {x y z}] 0]
    graphics $molnum cylinder $crd131a $crd131b radius 0.5 filled yes
    set sel132a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel132b [atomselect $molnum "resid 43 and name CA" frame $i]
    set crd132a [lindex [$sel132a get {x y z}] 0]
    set crd132b [lindex [$sel132b get {x y z}] 0]
    graphics $molnum cylinder $crd132a $crd132b radius 0.5 filled yes
    set sel133a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel133b [atomselect $molnum "resid 45 and name CA" frame $i]
    set crd133a [lindex [$sel133a get {x y z}] 0]
    set crd133b [lindex [$sel133b get {x y z}] 0]
    graphics $molnum cylinder $crd133a $crd133b radius 0.5 filled yes
    set sel134a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel134b [atomselect $molnum "resid 46 and name CA" frame $i]
    set crd134a [lindex [$sel134a get {x y z}] 0]
    set crd134b [lindex [$sel134b get {x y z}] 0]
    graphics $molnum cylinder $crd134a $crd134b radius 0.5 filled yes
    set sel135a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel135b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd135a [lindex [$sel135a get {x y z}] 0]
    set crd135b [lindex [$sel135b get {x y z}] 0]
    graphics $molnum cylinder $crd135a $crd135b radius 0.5 filled yes
    set sel136a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel136b [atomselect $molnum "resid 49 and name CA" frame $i]
    set crd136a [lindex [$sel136a get {x y z}] 0]
    set crd136b [lindex [$sel136b get {x y z}] 0]
    graphics $molnum cylinder $crd136a $crd136b radius 0.5 filled yes
    set sel137a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel137b [atomselect $molnum "resid 52 and name CA" frame $i]
    set crd137a [lindex [$sel137a get {x y z}] 0]
    set crd137b [lindex [$sel137b get {x y z}] 0]
    graphics $molnum cylinder $crd137a $crd137b radius 0.5 filled yes
    set sel138a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel138b [atomselect $molnum "resid 55 and name CA" frame $i]
    set crd138a [lindex [$sel138a get {x y z}] 0]
    set crd138b [lindex [$sel138b get {x y z}] 0]
    graphics $molnum cylinder $crd138a $crd138b radius 0.5 filled yes
    set sel139a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel139b [atomselect $molnum "resid 57 and name CA" frame $i]
    set crd139a [lindex [$sel139a get {x y z}] 0]
    set crd139b [lindex [$sel139b get {x y z}] 0]
    graphics $molnum cylinder $crd139a $crd139b radius 0.5 filled yes
    set sel140a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel140b [atomselect $molnum "resid 58 and name CA" frame $i]
    set crd140a [lindex [$sel140a get {x y z}] 0]
    set crd140b [lindex [$sel140b get {x y z}] 0]
    graphics $molnum cylinder $crd140a $crd140b radius 0.5 filled yes
    set sel141a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel141b [atomselect $molnum "resid 60 and name CA" frame $i]
    set crd141a [lindex [$sel141a get {x y z}] 0]
    set crd141b [lindex [$sel141b get {x y z}] 0]
    graphics $molnum cylinder $crd141a $crd141b radius 0.5 filled yes
    set sel142a [atomselect $molnum "resid 39 and name CA" frame $i]
    set sel142b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd142a [lindex [$sel142a get {x y z}] 0]
    set crd142b [lindex [$sel142b get {x y z}] 0]
    graphics $molnum cylinder $crd142a $crd142b radius 0.5 filled yes
    set sel143a [atomselect $molnum "resid 46 and name CA" frame $i]
    set sel143b [atomselect $molnum "resid 60 and name CA" frame $i]
    set crd143a [lindex [$sel143a get {x y z}] 0]
    set crd143b [lindex [$sel143b get {x y z}] 0]
    graphics $molnum cylinder $crd143a $crd143b radius 0.5 filled yes
    set sel144a [atomselect $molnum "resid 47 and name CA" frame $i]
    set sel144b [atomselect $molnum "resid 55 and name CA" frame $i]
    set crd144a [lindex [$sel144a get {x y z}] 0]
    set crd144b [lindex [$sel144b get {x y z}] 0]
    graphics $molnum cylinder $crd144a $crd144b radius 0.5 filled yes
    set sel145a [atomselect $molnum "resid 47 and name CA" frame $i]
    set sel145b [atomselect $molnum "resid 57 and name CA" frame $i]
    set crd145a [lindex [$sel145a get {x y z}] 0]
    set crd145b [lindex [$sel145b get {x y z}] 0]
    graphics $molnum cylinder $crd145a $crd145b radius 0.5 filled yes
    set sel146a [atomselect $molnum "resid 47 and name CA" frame $i]
    set sel146b [atomselect $molnum "resid 58 and name CA" frame $i]
    set crd146a [lindex [$sel146a get {x y z}] 0]
    set crd146b [lindex [$sel146b get {x y z}] 0]
    graphics $molnum cylinder $crd146a $crd146b radius 0.5 filled yes
    set sel147a [atomselect $molnum "resid 47 and name CA" frame $i]
    set sel147b [atomselect $molnum "resid 60 and name CA" frame $i]
    set crd147a [lindex [$sel147a get {x y z}] 0]
    set crd147b [lindex [$sel147b get {x y z}] 0]
    graphics $molnum cylinder $crd147a $crd147b radius 0.5 filled yes
    set sel148a [atomselect $molnum "resid 2 and name CA" frame $i]
    set sel148b [atomselect $molnum "resid 14 and name CA" frame $i]
    set crd148a [lindex [$sel148a get {x y z}] 0]
    set crd148b [lindex [$sel148b get {x y z}] 0]
    graphics $molnum cylinder $crd148a $crd148b radius 0.5 filled yes
    set sel149a [atomselect $molnum "resid 2 and name CA" frame $i]
    set sel149b [atomselect $molnum "resid 17 and name CA" frame $i]
    set crd149a [lindex [$sel149a get {x y z}] 0]
    set crd149b [lindex [$sel149b get {x y z}] 0]
    graphics $molnum cylinder $crd149a $crd149b radius 0.5 filled yes
    set sel150a [atomselect $molnum "resid 2 and name CA" frame $i]
    set sel150b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd150a [lindex [$sel150a get {x y z}] 0]
    set crd150b [lindex [$sel150b get {x y z}] 0]
    graphics $molnum cylinder $crd150a $crd150b radius 0.5 filled yes
    set sel151a [atomselect $molnum "resid 2 and name CA" frame $i]
    set sel151b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd151a [lindex [$sel151a get {x y z}] 0]
    set crd151b [lindex [$sel151b get {x y z}] 0]
    graphics $molnum cylinder $crd151a $crd151b radius 0.5 filled yes
    set sel152a [atomselect $molnum "resid 6 and name CA" frame $i]
    set sel152b [atomselect $molnum "resid 13 and name CA" frame $i]
    set crd152a [lindex [$sel152a get {x y z}] 0]
    set crd152b [lindex [$sel152b get {x y z}] 0]
    graphics $molnum cylinder $crd152a $crd152b radius 0.5 filled yes
    set sel153a [atomselect $molnum "resid 6 and name CA" frame $i]
    set sel153b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd153a [lindex [$sel153a get {x y z}] 0]
    set crd153b [lindex [$sel153b get {x y z}] 0]
    graphics $molnum cylinder $crd153a $crd153b radius 0.5 filled yes
    set sel154a [atomselect $molnum "resid 6 and name CA" frame $i]
    set sel154b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd154a [lindex [$sel154a get {x y z}] 0]
    set crd154b [lindex [$sel154b get {x y z}] 0]
    graphics $molnum cylinder $crd154a $crd154b radius 0.5 filled yes
    set sel155a [atomselect $molnum "resid 13 and name CA" frame $i]
    set sel155b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd155a [lindex [$sel155a get {x y z}] 0]
    set crd155b [lindex [$sel155b get {x y z}] 0]
    graphics $molnum cylinder $crd155a $crd155b radius 0.5 filled yes
    set sel156a [atomselect $molnum "resid 13 and name CA" frame $i]
    set sel156b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd156a [lindex [$sel156a get {x y z}] 0]
    set crd156b [lindex [$sel156b get {x y z}] 0]
    graphics $molnum cylinder $crd156a $crd156b radius 0.5 filled yes
    set sel157a [atomselect $molnum "resid 14 and name CA" frame $i]
    set sel157b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd157a [lindex [$sel157a get {x y z}] 0]
    set crd157b [lindex [$sel157b get {x y z}] 0]
    graphics $molnum cylinder $crd157a $crd157b radius 0.5 filled yes
    set sel158a [atomselect $molnum "resid 14 and name CA" frame $i]
    set sel158b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd158a [lindex [$sel158a get {x y z}] 0]
    set crd158b [lindex [$sel158b get {x y z}] 0]
    graphics $molnum cylinder $crd158a $crd158b radius 0.5 filled yes
    set sel159a [atomselect $molnum "resid 17 and name CA" frame $i]
    set sel159b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd159a [lindex [$sel159a get {x y z}] 0]
    set crd159b [lindex [$sel159b get {x y z}] 0]
    graphics $molnum cylinder $crd159a $crd159b radius 0.5 filled yes
    set sel160a [atomselect $molnum "resid 17 and name CA" frame $i]
    set sel160b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd160a [lindex [$sel160a get {x y z}] 0]
    set crd160b [lindex [$sel160b get {x y z}] 0]
    graphics $molnum cylinder $crd160a $crd160b radius 0.5 filled yes
    set sel161a [atomselect $molnum "resid 18 and name CA" frame $i]
    set sel161b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd161a [lindex [$sel161a get {x y z}] 0]
    set crd161b [lindex [$sel161b get {x y z}] 0]
    graphics $molnum cylinder $crd161a $crd161b radius 0.5 filled yes
    set sel162a [atomselect $molnum "resid 18 and name CA" frame $i]
    set sel162b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd162a [lindex [$sel162a get {x y z}] 0]
    set crd162b [lindex [$sel162b get {x y z}] 0]
    graphics $molnum cylinder $crd162a $crd162b radius 0.5 filled yes
    set sel163a [atomselect $molnum "resid 18 and name CA" frame $i]
    set sel163b [atomselect $molnum "resid 55 and name CA" frame $i]
    set crd163a [lindex [$sel163a get {x y z}] 0]
    set crd163b [lindex [$sel163b get {x y z}] 0]
    graphics $molnum cylinder $crd163a $crd163b radius 0.5 filled yes
    set sel164a [atomselect $molnum "resid 18 and name CA" frame $i]
    set sel164b [atomselect $molnum "resid 57 and name CA" frame $i]
    set crd164a [lindex [$sel164a get {x y z}] 0]
    set crd164b [lindex [$sel164b get {x y z}] 0]
    graphics $molnum cylinder $crd164a $crd164b radius 0.5 filled yes
    set sel165a [atomselect $molnum "resid 20 and name CA" frame $i]
    set sel165b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd165a [lindex [$sel165a get {x y z}] 0]
    set crd165b [lindex [$sel165b get {x y z}] 0]
    graphics $molnum cylinder $crd165a $crd165b radius 0.5 filled yes
    set sel166a [atomselect $molnum "resid 20 and name CA" frame $i]
    set sel166b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd166a [lindex [$sel166a get {x y z}] 0]
    set crd166b [lindex [$sel166b get {x y z}] 0]
    graphics $molnum cylinder $crd166a $crd166b radius 0.5 filled yes
    set sel167a [atomselect $molnum "resid 20 and name CA" frame $i]
    set sel167b [atomselect $molnum "resid 55 and name CA" frame $i]
    set crd167a [lindex [$sel167a get {x y z}] 0]
    set crd167b [lindex [$sel167b get {x y z}] 0]
    graphics $molnum cylinder $crd167a $crd167b radius 0.5 filled yes
    set sel168a [atomselect $molnum "resid 20 and name CA" frame $i]
    set sel168b [atomselect $molnum "resid 57 and name CA" frame $i]
    set crd168a [lindex [$sel168a get {x y z}] 0]
    set crd168b [lindex [$sel168b get {x y z}] 0]
    graphics $molnum cylinder $crd168a $crd168b radius 0.5 filled yes
    set sel169a [atomselect $molnum "resid 21 and name CA" frame $i]
    set sel169b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd169a [lindex [$sel169a get {x y z}] 0]
    set crd169b [lindex [$sel169b get {x y z}] 0]
    graphics $molnum cylinder $crd169a $crd169b radius 0.5 filled yes
    set sel170a [atomselect $molnum "resid 21 and name CA" frame $i]
    set sel170b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd170a [lindex [$sel170a get {x y z}] 0]
    set crd170b [lindex [$sel170b get {x y z}] 0]
    graphics $molnum cylinder $crd170a $crd170b radius 0.5 filled yes
    set sel171a [atomselect $molnum "resid 21 and name CA" frame $i]
    set sel171b [atomselect $molnum "resid 55 and name CA" frame $i]
    set crd171a [lindex [$sel171a get {x y z}] 0]
    set crd171b [lindex [$sel171b get {x y z}] 0]
    graphics $molnum cylinder $crd171a $crd171b radius 0.5 filled yes
    set sel172a [atomselect $molnum "resid 21 and name CA" frame $i]
    set sel172b [atomselect $molnum "resid 57 and name CA" frame $i]
    set crd172a [lindex [$sel172a get {x y z}] 0]
    set crd172b [lindex [$sel172b get {x y z}] 0]
    graphics $molnum cylinder $crd172a $crd172b radius 0.5 filled yes
    set sel173a [atomselect $molnum "resid 23 and name CA" frame $i]
    set sel173b [atomselect $molnum "resid 35 and name CA" frame $i]
    set crd173a [lindex [$sel173a get {x y z}] 0]
    set crd173b [lindex [$sel173b get {x y z}] 0]
    graphics $molnum cylinder $crd173a $crd173b radius 0.5 filled yes
    set sel174a [atomselect $molnum "resid 23 and name CA" frame $i]
    set sel174b [atomselect $molnum "resid 43 and name CA" frame $i]
    set crd174a [lindex [$sel174a get {x y z}] 0]
    set crd174b [lindex [$sel174b get {x y z}] 0]
    graphics $molnum cylinder $crd174a $crd174b radius 0.5 filled yes
    set sel175a [atomselect $molnum "resid 23 and name CA" frame $i]
    set sel175b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd175a [lindex [$sel175a get {x y z}] 0]
    set crd175b [lindex [$sel175b get {x y z}] 0]
    graphics $molnum cylinder $crd175a $crd175b radius 0.5 filled yes
    set sel176a [atomselect $molnum "resid 23 and name CA" frame $i]
    set sel176b [atomselect $molnum "resid 52 and name CA" frame $i]
    set crd176a [lindex [$sel176a get {x y z}] 0]
    set crd176b [lindex [$sel176b get {x y z}] 0]
    graphics $molnum cylinder $crd176a $crd176b radius 0.5 filled yes
    set sel177a [atomselect $molnum "resid 23 and name CA" frame $i]
    set sel177b [atomselect $molnum "resid 55 and name CA" frame $i]
    set crd177a [lindex [$sel177a get {x y z}] 0]
    set crd177b [lindex [$sel177b get {x y z}] 0]
    graphics $molnum cylinder $crd177a $crd177b radius 0.5 filled yes
    set sel178a [atomselect $molnum "resid 23 and name CA" frame $i]
    set sel178b [atomselect $molnum "resid 58 and name CA" frame $i]
    set crd178a [lindex [$sel178a get {x y z}] 0]
    set crd178b [lindex [$sel178b get {x y z}] 0]
    graphics $molnum cylinder $crd178a $crd178b radius 0.5 filled yes
    set sel179a [atomselect $molnum "resid 31 and name CA" frame $i]
    set sel179b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd179a [lindex [$sel179a get {x y z}] 0]
    set crd179b [lindex [$sel179b get {x y z}] 0]
    graphics $molnum cylinder $crd179a $crd179b radius 0.5 filled yes
    set sel180a [atomselect $molnum "resid 32 and name CA" frame $i]
    set sel180b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd180a [lindex [$sel180a get {x y z}] 0]
    set crd180b [lindex [$sel180b get {x y z}] 0]
    graphics $molnum cylinder $crd180a $crd180b radius 0.5 filled yes
    set sel181a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel181b [atomselect $molnum "resid 43 and name CA" frame $i]
    set crd181a [lindex [$sel181a get {x y z}] 0]
    set crd181b [lindex [$sel181b get {x y z}] 0]
    graphics $molnum cylinder $crd181a $crd181b radius 0.5 filled yes
    set sel182a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel182b [atomselect $molnum "resid 45 and name CA" frame $i]
    set crd182a [lindex [$sel182a get {x y z}] 0]
    set crd182b [lindex [$sel182b get {x y z}] 0]
    graphics $molnum cylinder $crd182a $crd182b radius 0.5 filled yes
    set sel183a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel183b [atomselect $molnum "resid 46 and name CA" frame $i]
    set crd183a [lindex [$sel183a get {x y z}] 0]
    set crd183b [lindex [$sel183b get {x y z}] 0]
    graphics $molnum cylinder $crd183a $crd183b radius 0.5 filled yes
    set sel184a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel184b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd184a [lindex [$sel184a get {x y z}] 0]
    set crd184b [lindex [$sel184b get {x y z}] 0]
    graphics $molnum cylinder $crd184a $crd184b radius 0.5 filled yes
    set sel185a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel185b [atomselect $molnum "resid 49 and name CA" frame $i]
    set crd185a [lindex [$sel185a get {x y z}] 0]
    set crd185b [lindex [$sel185b get {x y z}] 0]
    graphics $molnum cylinder $crd185a $crd185b radius 0.5 filled yes
    set sel186a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel186b [atomselect $molnum "resid 52 and name CA" frame $i]
    set crd186a [lindex [$sel186a get {x y z}] 0]
    set crd186b [lindex [$sel186b get {x y z}] 0]
    graphics $molnum cylinder $crd186a $crd186b radius 0.5 filled yes
    set sel187a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel187b [atomselect $molnum "resid 55 and name CA" frame $i]
    set crd187a [lindex [$sel187a get {x y z}] 0]
    set crd187b [lindex [$sel187b get {x y z}] 0]
    graphics $molnum cylinder $crd187a $crd187b radius 0.5 filled yes
    set sel188a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel188b [atomselect $molnum "resid 57 and name CA" frame $i]
    set crd188a [lindex [$sel188a get {x y z}] 0]
    set crd188b [lindex [$sel188b get {x y z}] 0]
    graphics $molnum cylinder $crd188a $crd188b radius 0.5 filled yes
    set sel189a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel189b [atomselect $molnum "resid 58 and name CA" frame $i]
    set crd189a [lindex [$sel189a get {x y z}] 0]
    set crd189b [lindex [$sel189b get {x y z}] 0]
    graphics $molnum cylinder $crd189a $crd189b radius 0.5 filled yes
    set sel190a [atomselect $molnum "resid 35 and name CA" frame $i]
    set sel190b [atomselect $molnum "resid 60 and name CA" frame $i]
    set crd190a [lindex [$sel190a get {x y z}] 0]
    set crd190b [lindex [$sel190b get {x y z}] 0]
    graphics $molnum cylinder $crd190a $crd190b radius 0.5 filled yes
    set sel191a [atomselect $molnum "resid 39 and name CA" frame $i]
    set sel191b [atomselect $molnum "resid 47 and name CA" frame $i]
    set crd191a [lindex [$sel191a get {x y z}] 0]
    set crd191b [lindex [$sel191b get {x y z}] 0]
    graphics $molnum cylinder $crd191a $crd191b radius 0.5 filled yes
    set sel192a [atomselect $molnum "resid 46 and name CA" frame $i]
    set sel192b [atomselect $molnum "resid 60 and name CA" frame $i]
    set crd192a [lindex [$sel192a get {x y z}] 0]
    set crd192b [lindex [$sel192b get {x y z}] 0]
    graphics $molnum cylinder $crd192a $crd192b radius 0.5 filled yes
    set sel193a [atomselect $molnum "resid 47 and name CA" frame $i]
    set sel193b [atomselect $molnum "resid 55 and name CA" frame $i]
    set crd193a [lindex [$sel193a get {x y z}] 0]
    set crd193b [lindex [$sel193b get {x y z}] 0]
    graphics $molnum cylinder $crd193a $crd193b radius 0.5 filled yes
    set sel194a [atomselect $molnum "resid 47 and name CA" frame $i]
    set sel194b [atomselect $molnum "resid 57 and name CA" frame $i]
    set crd194a [lindex [$sel194a get {x y z}] 0]
    set crd194b [lindex [$sel194b get {x y z}] 0]
    graphics $molnum cylinder $crd194a $crd194b radius 0.5 filled yes
    set sel195a [atomselect $molnum "resid 47 and name CA" frame $i]
    set sel195b [atomselect $molnum "resid 58 and name CA" frame $i]
    set crd195a [lindex [$sel195a get {x y z}] 0]
    set crd195b [lindex [$sel195b get {x y z}] 0]
    graphics $molnum cylinder $crd195a $crd195b radius 0.5 filled yes
    set sel196a [atomselect $molnum "resid 47 and name CA" frame $i]
    set sel196b [atomselect $molnum "resid 60 and name CA" frame $i]
    set crd196a [lindex [$sel196a get {x y z}] 0]
    set crd196b [lindex [$sel196b get {x y z}] 0]
    graphics $molnum cylinder $crd196a $crd196b radius 0.5 filled yes
    sleep $sleep
    }
}