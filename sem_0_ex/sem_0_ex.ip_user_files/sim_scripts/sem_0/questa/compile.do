vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/sem_v4_1_13
vlib questa_lib/msim/xil_defaultlib

vmap sem_v4_1_13 questa_lib/msim/sem_v4_1_13
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work sem_v4_1_13 -64 -incr -mfcu  \
"../../../ipstatic/hdl/sem_v4_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  \
"../../../../sem_0_ex.gen/sources_1/ip/sem_0/sim/sem_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

