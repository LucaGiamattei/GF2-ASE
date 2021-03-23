
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name FSM -dir "/home/giorgio/Documenti/FSM/planAhead_run_4" -part xc3s100etq144-4
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "/home/giorgio/Documenti/FSM/FSM.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/giorgio/Documenti/FSM} }
set_property target_constrs_file "FSM.ucf" [current_fileset -constrset]
add_files [list {FSM.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "/home/giorgio/Documenti/FSM/FSM.ncd"
if {[catch {read_twx -name results_1 -file "/home/giorgio/Documenti/FSM/FSM.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"/home/giorgio/Documenti/FSM/FSM.twx\": $eInfo"
}
