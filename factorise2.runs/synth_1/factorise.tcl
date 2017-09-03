# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/tim/fpgaprojects/factorise2/factorise2.cache/wt [current_project]
set_property parent.project_path C:/Users/tim/fpgaprojects/factorise2/factorise2.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_repo_paths c:/Users/tim/fpgaprojects/useful-components/UART [current_project]
set_property ip_output_repo c:/Users/tim/fpgaprojects/factorise2/factorise2.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files C:/Users/tim/fpgaprojects/factorise2/factorise2.srcs/sources_1/bd/stringsrom/ip/stringsrom_blk_mem_gen_0_0/stringsrom.coe
read_vhdl -library xil_defaultlib {
  C:/Users/tim/fpgaprojects/factorise2/factorise2.srcs/sources_1/new/ascii2vector.vhd
  C:/Users/tim/fpgaprojects/factorise2/factorise2.srcs/sources_1/new/divtest.vhd
  C:/Users/tim/fpgaprojects/factorise2/factorise2.srcs/sources_1/new/mux_generic_AB.vhd
  C:/Users/tim/fpgaprojects/factorise2/factorise2.srcs/sources_1/new/readinput.vhd
  C:/Users/tim/fpgaprojects/factorise2/factorise2.srcs/sources_1/new/sendMessage.vhd
  C:/Users/tim/fpgaprojects/factorise2/factorise2.srcs/sources_1/new/factorise.vhd
}
add_files C:/Users/tim/fpgaprojects/factorise2/factorise2.srcs/sources_1/bd/uart/uart.bd
set_property used_in_implementation false [get_files -all c:/Users/tim/fpgaprojects/factorise2/factorise2.srcs/sources_1/bd/uart/ip/uart_UART_0_0/sources_1/bd/uart_fifo/ip/uart_fifo_fifo_generator_0_0/uart_fifo_fifo_generator_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/tim/fpgaprojects/factorise2/factorise2.srcs/sources_1/bd/uart/ip/uart_UART_0_0/constrs_1/imports/fpgaprojects/Basys3_Master.xdc]
set_property used_in_implementation false [get_files -all c:/Users/tim/fpgaprojects/factorise2/factorise2.srcs/sources_1/bd/uart/ip/uart_UART_0_0/sources_1/bd/uart_fifo/uart_fifo_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/tim/fpgaprojects/factorise2/factorise2.srcs/sources_1/bd/uart/uart_ooc.xdc]
set_property is_locked true [get_files C:/Users/tim/fpgaprojects/factorise2/factorise2.srcs/sources_1/bd/uart/uart.bd]

add_files C:/Users/tim/fpgaprojects/factorise2/factorise2.srcs/sources_1/bd/dataentry_ram/dataentry_ram.bd
set_property used_in_implementation false [get_files -all c:/Users/tim/fpgaprojects/factorise2/factorise2.srcs/sources_1/bd/dataentry_ram/ip/dataentry_ram_blk_mem_gen_0_0/dataentry_ram_blk_mem_gen_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/tim/fpgaprojects/factorise2/factorise2.srcs/sources_1/bd/dataentry_ram/dataentry_ram_ooc.xdc]
set_property is_locked true [get_files C:/Users/tim/fpgaprojects/factorise2/factorise2.srcs/sources_1/bd/dataentry_ram/dataentry_ram.bd]

add_files C:/Users/tim/fpgaprojects/factorise2/factorise2.srcs/sources_1/bd/stringsrom/stringsrom.bd
set_property used_in_implementation false [get_files -all c:/Users/tim/fpgaprojects/factorise2/factorise2.srcs/sources_1/bd/stringsrom/ip/stringsrom_blk_mem_gen_0_0/stringsrom_blk_mem_gen_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/tim/fpgaprojects/factorise2/factorise2.srcs/sources_1/bd/stringsrom/stringsrom_ooc.xdc]
set_property is_locked true [get_files C:/Users/tim/fpgaprojects/factorise2/factorise2.srcs/sources_1/bd/stringsrom/stringsrom.bd]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/tim/fpgaprojects/factorise2/factorise2.srcs/constrs_1/imports/fpgaprojects/Basys3_Master.xdc
set_property used_in_implementation false [get_files C:/Users/tim/fpgaprojects/factorise2/factorise2.srcs/constrs_1/imports/fpgaprojects/Basys3_Master.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top factorise -part xc7a35tcpg236-1


write_checkpoint -force -noxdef factorise.dcp

catch { report_utilization -file factorise_utilization_synth.rpt -pb factorise_utilization_synth.pb }
