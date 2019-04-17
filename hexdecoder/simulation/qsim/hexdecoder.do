onerror {quit -f}
vlib work
vlog -work work hexdecoder.vo
vlog -work work hexdecoder.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.hexdecoder_vlg_vec_tst
vcd file -direction hexdecoder.msim.vcd
vcd add -internal hexdecoder_vlg_vec_tst/*
vcd add -internal hexdecoder_vlg_vec_tst/i1/*
add wave /*
run -all
