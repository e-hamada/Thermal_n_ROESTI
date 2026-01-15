transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {/home/hamada/Thermal_n/firmware_git/Thermal_n_ROESTI/sem_0_ex/sem_0_ex.cache/compile_simlib/riviera}
vlib riviera/sem_v4_1_13
vlib riviera/xil_defaultlib

vlog -work sem_v4_1_13  -incr -v2k5 -l sem_v4_1_13 -l xil_defaultlib \
"../../../ipstatic/hdl/sem_v4_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 -l sem_v4_1_13 -l xil_defaultlib \
"../../../../sem_0_ex.gen/sources_1/ip/sem_0/sim/sem_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

