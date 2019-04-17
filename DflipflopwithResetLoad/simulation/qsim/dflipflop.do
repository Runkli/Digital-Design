onerror {quit -f}
vlib work
vlog -work work dflipflop.vo
vlog -work work dflipflop.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.dflipflop_vlg_vec_tst
vcd file -direction dflipflop.msim.vcd
vcd add -internal dflipflop_vlg_vec_tst/*
vcd add -internal dflipflop_vlg_vec_tst/i1/*
add wave /*
run -all
