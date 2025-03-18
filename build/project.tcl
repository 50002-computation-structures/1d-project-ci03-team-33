set projDir "D:/Alchitry\ Labs/Lab/mine/build/vivado"
set projName "alu"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir"]} { file delete -force "$projDir" }
create_project $projName "$projDir" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "D:/Alchitry\ Labs/Lab/mine/build/source/alchitry_top.sv" "D:/Alchitry\ Labs/Lab/mine/build/source/reset_conditioner.sv" "D:/Alchitry\ Labs/Lab/mine/build/source/rca.sv" "D:/Alchitry\ Labs/Lab/mine/build/source/fa.sv" "D:/Alchitry\ Labs/Lab/mine/build/source/bit_reverse.sv" "D:/Alchitry\ Labs/Lab/mine/build/source/boolean.sv" "D:/Alchitry\ Labs/Lab/mine/build/source/compare.sv" "D:/Alchitry\ Labs/Lab/mine/build/source/shifter.sv" "D:/Alchitry\ Labs/Lab/mine/build/source/multiplier.sv" "D:/Alchitry\ Labs/Lab/mine/build/source/alu.sv" "D:/Alchitry\ Labs/Lab/mine/build/source/adder.sv" "D:/Alchitry\ Labs/Lab/mine/build/source/alu_manual_tester.sv" "D:/Alchitry\ Labs/Lab/mine/build/source/mux_4.sv" "D:/Alchitry\ Labs/Lab/mine/build/source/multi_seven_seg.sv" "D:/Alchitry\ Labs/Lab/mine/build/source/seven_seg.sv" "D:/Alchitry\ Labs/Lab/mine/build/source/counter.sv" "D:/Alchitry\ Labs/Lab/mine/build/source/decoder.sv" "D:/Alchitry\ Labs/Lab/mine/build/source/pipeline.sv" "D:/Alchitry\ Labs/Lab/mine/build/source/button_conditioner.sv" "D:/Alchitry\ Labs/Lab/mine/build/source/edge_detector.sv" "D:/Alchitry\ Labs/Lab/mine/build/source/bin_to_dec.sv" "D:/Alchitry\ Labs/Lab/mine/build/source/mux_2.sv" "D:/Alchitry\ Labs/Lab/mine/build/source/shiftleft.sv" "D:/Alchitry\ Labs/Lab/mine/build/source/shiftright.sv" "D:/Alchitry\ Labs/Lab/mine/build/source/shiftrightsigned.sv" "D:/Alchitry\ Labs/Lab/mine/build/source/roma.sv" "D:/Alchitry\ Labs/Lab/mine/build/source/romb.sv" "D:/Alchitry\ Labs/Lab/mine/build/source/romalufn.sv" "D:/Alchitry\ Labs/Lab/mine/build/source/romoutputexpected.sv" "D:/Alchitry\ Labs/Lab/mine/build/source/divider.sv" "D:/Alchitry\ Labs/Lab/mine/build/source/lucid_globals.sv" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "D:/Alchitry\ Labs/Lab/mine/build/constraint/alchitry.xdc" "D:/Alchitry\ Labs/Lab/mine/build/constraint/au_props.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
