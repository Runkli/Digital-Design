onerror {quit -f}
vlib work
vlog -work work ripplecarry.vo
vlog -work work ripplecarry.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ripplecarry_vlg_vec_tst
vcd file -direction ripplecarry.msim.vcd
vcd add -internal ripplecarry_vlg_vec_tst/*
vcd add -internal ripplecarry_vlg_vec_tst/i1/*
add wave /*
run -all
