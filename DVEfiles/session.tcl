# Begin_DVE_Session_Save_Info
# DVE full session
<<<<<<< HEAD
# Saved on Wed Dec 13 23:49:06 2017
# Designs open: 1
#   V1: /home/warehouse/mshepherd/My Documents/MyDocuments/Schoolwork/ESE461/ese461-final-project-shepherd-pollak-greer/Top.vcd
=======
# Saved on Wed Dec 6 01:35:48 2017
# Designs open: 1
#   V1: /home/warehouse/mshepherd/My Documents/MyDocuments/Schoolwork/ESE461/ese461-final-project-shepherd-pollak-greer/In_Calculator.vcd
>>>>>>> 4f1986a410fb816d082d330e73c5dd21beb325f2
# Toplevel windows open: 1
# 	TopLevel.1
#   Source.1: 
#   Group count = 1
<<<<<<< HEAD
#   Group DUT signal count = 44
=======
#   Group DUT signal count = 17
>>>>>>> 4f1986a410fb816d082d330e73c5dd21beb325f2
# End_DVE_Session_Save_Info

# DVE version: J-2014.12-SP1-1
# DVE build date: Apr 23 2015 20:58:03


#<Session mode="Full" path="/home/warehouse/mshepherd/My Documents/MyDocuments/Schoolwork/ESE461/ese461-final-project-shepherd-pollak-greer/DVEfiles/session.tcl" type="Debug">

gui_set_loading_session_type Post
gui_continuetime_set

# Close design
if { [gui_sim_state -check active] } {
    gui_sim_terminate
}
gui_close_db -all
gui_expr_clear_all

# Close all windows
gui_close_window -type Console
gui_close_window -type Wave
gui_close_window -type Source
gui_close_window -type Schematic
gui_close_window -type Data
gui_close_window -type DriverLoad
gui_close_window -type List
gui_close_window -type Memory
gui_close_window -type HSPane
gui_close_window -type DLPane
gui_close_window -type Assertion
gui_close_window -type CovHier
gui_close_window -type CoverageTable
gui_close_window -type CoverageMap
gui_close_window -type CovDetail
gui_close_window -type Local
gui_close_window -type Stack
gui_close_window -type Watch
gui_close_window -type Group
gui_close_window -type Transaction



# Application preferences
gui_set_pref_value -key app_default_font -value {Helvetica,10,-1,5,50,0,0,0,0,0}
gui_src_preferences -tabstop 8 -maxbits 24 -windownumber 1
#<WindowLayout>

# DVE top-level session


# Create and position top-level window: TopLevel.1

if {![gui_exist_window -window TopLevel.1]} {
    set TopLevel.1 [ gui_create_window -type TopLevel \
       -icon $::env(DVE)/auxx/gui/images/toolbars/dvewin.xpm] 
} else { 
    set TopLevel.1 TopLevel.1
}
<<<<<<< HEAD
gui_show_window -window ${TopLevel.1} -show_state normal -rect {{227 179} {1188 716}}
=======
gui_show_window -window ${TopLevel.1} -show_state normal -rect {{195 147} {1188 716}}
>>>>>>> 4f1986a410fb816d082d330e73c5dd21beb325f2

# ToolBar settings
gui_set_toolbar_attributes -toolbar {TimeOperations} -dock_state top
gui_set_toolbar_attributes -toolbar {TimeOperations} -offset 0
gui_show_toolbar -toolbar {TimeOperations}
gui_hide_toolbar -toolbar {&File}
gui_set_toolbar_attributes -toolbar {&Edit} -dock_state top
gui_set_toolbar_attributes -toolbar {&Edit} -offset 0
gui_show_toolbar -toolbar {&Edit}
gui_hide_toolbar -toolbar {CopyPaste}
gui_set_toolbar_attributes -toolbar {&Trace} -dock_state top
gui_set_toolbar_attributes -toolbar {&Trace} -offset 0
gui_show_toolbar -toolbar {&Trace}
gui_hide_toolbar -toolbar {TraceInstance}
gui_hide_toolbar -toolbar {BackTrace}
gui_set_toolbar_attributes -toolbar {&Scope} -dock_state top
gui_set_toolbar_attributes -toolbar {&Scope} -offset 0
gui_show_toolbar -toolbar {&Scope}
gui_set_toolbar_attributes -toolbar {&Window} -dock_state top
gui_set_toolbar_attributes -toolbar {&Window} -offset 0
gui_show_toolbar -toolbar {&Window}
gui_set_toolbar_attributes -toolbar {Signal} -dock_state top
gui_set_toolbar_attributes -toolbar {Signal} -offset 0
gui_show_toolbar -toolbar {Signal}
gui_set_toolbar_attributes -toolbar {Zoom} -dock_state top
gui_set_toolbar_attributes -toolbar {Zoom} -offset 0
gui_show_toolbar -toolbar {Zoom}
gui_set_toolbar_attributes -toolbar {Zoom And Pan History} -dock_state top
gui_set_toolbar_attributes -toolbar {Zoom And Pan History} -offset 0
gui_show_toolbar -toolbar {Zoom And Pan History}
gui_set_toolbar_attributes -toolbar {Grid} -dock_state top
gui_set_toolbar_attributes -toolbar {Grid} -offset 0
gui_show_toolbar -toolbar {Grid}
gui_hide_toolbar -toolbar {Simulator}
gui_hide_toolbar -toolbar {Interactive Rewind}
gui_hide_toolbar -toolbar {Testbench}

# End ToolBar settings

# Docked window settings
set HSPane.1 [gui_create_window -type HSPane -parent ${TopLevel.1} -dock_state left -dock_on_new_line true -dock_extent 105]
catch { set Hier.1 [gui_share_window -id ${HSPane.1} -type Hier] }
gui_set_window_pref_key -window ${HSPane.1} -key dock_width -value_type integer -value 105
gui_set_window_pref_key -window ${HSPane.1} -key dock_height -value_type integer -value -1
gui_set_window_pref_key -window ${HSPane.1} -key dock_offset -value_type integer -value 0
<<<<<<< HEAD
gui_update_layout -id ${HSPane.1} {{left 0} {top 0} {width 105} {height 333} {dock_state left} {dock_on_new_line true} {child_hier_colhier 140} {child_hier_coltype 100} {child_hier_colpd 0} {child_hier_col1 0} {child_hier_col2 1} {child_hier_col3 -1}}
set DLPane.1 [gui_create_window -type DLPane -parent ${TopLevel.1} -dock_state left -dock_on_new_line true -dock_extent 105]
catch { set Data.1 [gui_share_window -id ${DLPane.1} -type Data] }
gui_set_window_pref_key -window ${DLPane.1} -key dock_width -value_type integer -value 105
gui_set_window_pref_key -window ${DLPane.1} -key dock_height -value_type integer -value 334
gui_set_window_pref_key -window ${DLPane.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${DLPane.1} {{left 0} {top 0} {width 105} {height 333} {dock_state left} {dock_on_new_line true} {child_data_colvariable 140} {child_data_colvalue 100} {child_data_coltype 40} {child_data_col1 0} {child_data_col2 1} {child_data_col3 2}}
set Console.1 [gui_create_window -type Console -parent ${TopLevel.1} -dock_state bottom -dock_on_new_line true -dock_extent 105]
gui_set_window_pref_key -window ${Console.1} -key dock_width -value_type integer -value 962
gui_set_window_pref_key -window ${Console.1} -key dock_height -value_type integer -value 105
gui_set_window_pref_key -window ${Console.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${Console.1} {{left 0} {top 0} {width 961} {height 105} {dock_state bottom} {dock_on_new_line true}}
=======
gui_update_layout -id ${HSPane.1} {{left 0} {top 0} {width 105} {height 365} {dock_state left} {dock_on_new_line true} {child_hier_colhier 140} {child_hier_coltype 100} {child_hier_colpd 0} {child_hier_col1 0} {child_hier_col2 1} {child_hier_col3 -1}}
set DLPane.1 [gui_create_window -type DLPane -parent ${TopLevel.1} -dock_state left -dock_on_new_line true -dock_extent 105]
catch { set Data.1 [gui_share_window -id ${DLPane.1} -type Data] }
gui_set_window_pref_key -window ${DLPane.1} -key dock_width -value_type integer -value 105
gui_set_window_pref_key -window ${DLPane.1} -key dock_height -value_type integer -value 366
gui_set_window_pref_key -window ${DLPane.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${DLPane.1} {{left 0} {top 0} {width 105} {height 365} {dock_state left} {dock_on_new_line true} {child_data_colvariable 140} {child_data_colvalue 100} {child_data_coltype 40} {child_data_col1 0} {child_data_col2 1} {child_data_col3 2}}
set Console.1 [gui_create_window -type Console -parent ${TopLevel.1} -dock_state bottom -dock_on_new_line true -dock_extent 105]
gui_set_window_pref_key -window ${Console.1} -key dock_width -value_type integer -value 994
gui_set_window_pref_key -window ${Console.1} -key dock_height -value_type integer -value 105
gui_set_window_pref_key -window ${Console.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${Console.1} {{left 0} {top 0} {width 993} {height 105} {dock_state bottom} {dock_on_new_line true}}
>>>>>>> 4f1986a410fb816d082d330e73c5dd21beb325f2
#### Start - Readjusting docked view's offset / size
set dockAreaList { top left right bottom }
foreach dockArea $dockAreaList {
  set viewList [gui_ekki_get_window_ids -active_parent -dock_area $dockArea]
  foreach view $viewList {
      if {[lsearch -exact [gui_get_window_pref_keys -window $view] dock_width] != -1} {
        set dockWidth [gui_get_window_pref_value -window $view -key dock_width]
        set dockHeight [gui_get_window_pref_value -window $view -key dock_height]
        set offset [gui_get_window_pref_value -window $view -key dock_offset]
        if { [string equal "top" $dockArea] || [string equal "bottom" $dockArea]} {
          gui_set_window_attributes -window $view -dock_offset $offset -width $dockWidth
        } else {
          gui_set_window_attributes -window $view -dock_offset $offset -height $dockHeight
        }
      }
  }
}
#### End - Readjusting docked view's offset / size
gui_sync_global -id ${TopLevel.1} -option true

# MDI window settings
set Source.1 [gui_create_window -type {Source}  -parent ${TopLevel.1}]
gui_show_window -window ${Source.1} -show_state maximized
gui_update_layout -id ${Source.1} {{show_state maximized} {dock_state undocked} {dock_on_new_line false}}

# End MDI window settings

gui_set_env TOPLEVELS::TARGET_FRAME(Source) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(Schematic) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(PathSchematic) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(Wave) none
gui_set_env TOPLEVELS::TARGET_FRAME(List) none
gui_set_env TOPLEVELS::TARGET_FRAME(Memory) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(DriverLoad) none
gui_update_statusbar_target_frame ${TopLevel.1}

#</WindowLayout>

#<Database>

# DVE Open design session: 

<<<<<<< HEAD
if { ![gui_is_db_opened -db {/home/warehouse/mshepherd/My Documents/MyDocuments/Schoolwork/ESE461/ese461-final-project-shepherd-pollak-greer/Top.vcd.vpd}] } {
	gui_open_db -design V1 -file /home/warehouse/mshepherd/My Documents/MyDocuments/Schoolwork/ESE461/ese461-final-project-shepherd-pollak-greer/Top.vcd.vpd -nosource
=======
if { ![gui_is_db_opened -db {/home/warehouse/mshepherd/My Documents/MyDocuments/Schoolwork/ESE461/ese461-final-project-shepherd-pollak-greer/In_Calculator.vcd.vpd}] } {
	gui_open_db -design V1 -file /home/warehouse/mshepherd/My Documents/MyDocuments/Schoolwork/ESE461/ese461-final-project-shepherd-pollak-greer/In_Calculator.vcd.vpd -nosource
>>>>>>> 4f1986a410fb816d082d330e73c5dd21beb325f2
}
gui_set_precision 1ps
gui_set_time_units 1ps
#</Database>

# DVE Global setting session: 


# Global: Bus

# Global: Expressions

# Global: Signal Time Shift

# Global: Signal Compare

# Global: Signal Groups
<<<<<<< HEAD
gui_load_child_values {Top_tb.DUT}
=======
gui_load_child_values {In_Calculator_tb.DUT}
>>>>>>> 4f1986a410fb816d082d330e73c5dd21beb325f2


set _session_group_1 DUT
gui_sg_create "$_session_group_1"
set DUT "$_session_group_1"

<<<<<<< HEAD
gui_sg_addsignal -group "$_session_group_1" { Top_tb.DUT.clk Top_tb.DUT.reset Top_tb.DUT.enableLayer3 Top_tb.DUT.we Top_tb.DUT.wdata Top_tb.DUT.waddr Top_tb.DUT.inputs Top_tb.DUT.weights1 Top_tb.DUT.weights2 Top_tb.DUT.output0 Top_tb.DUT.output1 Top_tb.DUT.output2 Top_tb.DUT.output3 Top_tb.DUT.output4 Top_tb.DUT.output5 Top_tb.DUT.output6 Top_tb.DUT.output7 Top_tb.DUT.output8 Top_tb.DUT.output9 Top_tb.DUT.reset2 Top_tb.DUT.layer1pre Top_tb.DUT.layer1post Top_tb.DUT.prevReset Top_tb.DUT.i {Top_tb.DUT.\l2[0].layer3pre } {Top_tb.DUT.\l2[0].layer3post } {Top_tb.DUT.\l2[1].layer3pre } {Top_tb.DUT.\l2[1].layer3post } {Top_tb.DUT.\l2[2].layer3pre } {Top_tb.DUT.\l2[2].layer3post } {Top_tb.DUT.\l2[3].layer3pre } {Top_tb.DUT.\l2[3].layer3post } {Top_tb.DUT.\l2[4].layer3pre } {Top_tb.DUT.\l2[4].layer3post } {Top_tb.DUT.\l2[5].layer3pre } {Top_tb.DUT.\l2[5].layer3post } {Top_tb.DUT.\l2[6].layer3pre } {Top_tb.DUT.\l2[6].layer3post } {Top_tb.DUT.\l2[7].layer3pre } {Top_tb.DUT.\l2[7].layer3post } {Top_tb.DUT.\l2[8].layer3pre } {Top_tb.DUT.\l2[8].layer3post } {Top_tb.DUT.\l2[9].layer3pre } {Top_tb.DUT.\l2[9].layer3post } }
gui_set_radix -radix {decimal} -signals {V1:Top_tb.DUT.i}
gui_set_radix -radix {twosComplement} -signals {V1:Top_tb.DUT.i}
=======
gui_sg_addsignal -group "$_session_group_1" { In_Calculator_tb.DUT.clk In_Calculator_tb.DUT.reset In_Calculator_tb.DUT.values In_Calculator_tb.DUT.weights In_Calculator_tb.DUT.out In_Calculator_tb.DUT.prods In_Calculator_tb.DUT.s1 In_Calculator_tb.DUT.s2 In_Calculator_tb.DUT.s3 In_Calculator_tb.DUT.s4 In_Calculator_tb.DUT.s5 In_Calculator_tb.DUT.s6 In_Calculator_tb.DUT.s7 In_Calculator_tb.DUT.s8 In_Calculator_tb.DUT.s9 In_Calculator_tb.DUT.outReg In_Calculator_tb.DUT.i }
gui_set_radix -radix {decimal} -signals {V1:In_Calculator_tb.DUT.i}
gui_set_radix -radix {twosComplement} -signals {V1:In_Calculator_tb.DUT.i}
>>>>>>> 4f1986a410fb816d082d330e73c5dd21beb325f2

# Global: Highlighting

# Global: Stack
gui_change_stack_mode -mode list

# Post database loading setting...

# Restore C1 time
gui_set_time -C1_only 0



# Save global setting...

# Wave/List view global setting
gui_cov_show_value -switch false

# Close all empty TopLevel windows
foreach __top [gui_ekki_get_window_ids -type TopLevel] {
    if { [llength [gui_ekki_get_window_ids -parent $__top]] == 0} {
        gui_close_window -window $__top
    }
}
gui_set_loading_session_type noSession
# DVE View/pane content session: 


# Hier 'Hier.1'
gui_show_window -window ${Hier.1}
gui_list_set_filter -id ${Hier.1} -list { {Package 1} {All 0} {Process 1} {VirtPowSwitch 0} {UnnamedProcess 1} {UDP 0} {Function 1} {Block 1} {SrsnAndSpaCell 0} {OVA Unit 1} {LeafScCell 1} {LeafVlgCell 1} {Interface 1} {LeafVhdCell 1} {$unit 1} {NamedBlock 1} {Task 1} {VlgPackage 1} {ClassDef 1} {VirtIsoCell 0} }
gui_list_set_filter -id ${Hier.1} -text {*}
gui_hier_list_init -id ${Hier.1}
gui_change_design -id ${Hier.1} -design V1
<<<<<<< HEAD
catch {gui_list_expand -id ${Hier.1} Top_tb}
catch {gui_list_select -id ${Hier.1} {Top_tb.DUT}}
=======
catch {gui_list_expand -id ${Hier.1} In_Calculator_tb}
catch {gui_list_select -id ${Hier.1} {In_Calculator_tb.DUT}}
>>>>>>> 4f1986a410fb816d082d330e73c5dd21beb325f2
gui_view_scroll -id ${Hier.1} -vertical -set 0
gui_view_scroll -id ${Hier.1} -horizontal -set 0

# Data 'Data.1'
gui_list_set_filter -id ${Data.1} -list { {Buffer 1} {Input 1} {Others 1} {Linkage 1} {Output 1} {LowPower 1} {Parameter 1} {All 1} {Aggregate 1} {LibBaseMember 1} {Event 1} {Assertion 1} {Constant 1} {Interface 1} {BaseMembers 1} {Signal 1} {$unit 1} {Inout 1} {Variable 1} }
gui_list_set_filter -id ${Data.1} -text {*}
<<<<<<< HEAD
gui_list_show_data -id ${Data.1} {Top_tb.DUT}
=======
gui_list_show_data -id ${Data.1} {In_Calculator_tb.DUT}
>>>>>>> 4f1986a410fb816d082d330e73c5dd21beb325f2
gui_view_scroll -id ${Data.1} -vertical -set 0
gui_view_scroll -id ${Data.1} -horizontal -set 0
gui_view_scroll -id ${Hier.1} -vertical -set 0
gui_view_scroll -id ${Hier.1} -horizontal -set 0

# Source 'Source.1'
gui_src_value_annotate -id ${Source.1} -switch false
gui_set_env TOGGLE::VALUEANNOTATE 0
gui_view_scroll -id ${Source.1} -vertical -set 0
gui_src_set_reusable -id ${Source.1}
# Restore toplevel window zorder
# The toplevel window could be closed if it has no view/pane
if {[gui_exist_window -window ${TopLevel.1}]} {
	gui_set_active_window -window ${TopLevel.1}
	gui_set_active_window -window ${Source.1}
	gui_set_active_window -window ${HSPane.1}
}
#</Session>

