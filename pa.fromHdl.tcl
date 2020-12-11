
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name KTANE_Main -dir "C:/Users/Predator/Desktop/Learning Resources/DigitalSystem/KTANE_Main/planAhead_run_1" -part xc6slx9tqg144-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "KTANE_Main.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {DebounceButton.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ClockDivider20M.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {BCDto7Seg.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {KTANE_Main.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top KTANE_Main $srcset
add_files [list {KTANE_Main.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx9tqg144-3
