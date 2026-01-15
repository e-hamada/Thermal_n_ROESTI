set_property IOSTANDARD LVDS_25 [get_ports SFP_REFCLK_P]
set_property IOSTANDARD LVDS_25 [get_ports SFP_REFCLK_N]
set_property PACKAGE_PIN F11 [get_ports SFP_REFCLK_P]


##ROESTI-------------------------------------------------

#create_clock -period 8.000 -name SFP_REFCLK_P -waveform {0.000 4.000} [get_ports SFP_REFCLK_P]
set SiPDMIN [expr [get_property -min PERIOD [get_clocks -of_objects [get_pins -hier -filter {name =~ */GMII/*}]]] - 1.5]
set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */GMII_RXBUF/cmpWrAddr*/C}] -to [get_pins -hier -filter {name =~ */GMII_RXBUF/smpWrStatusAddr*/D}] 
set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */GMII_TXBUF/orRdAct*/C}] -to [get_pins -hier -filter {name =~ */GMII_TXBUF/irRdAct*/D}] 
set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */GMII_TXBUF/muxEndTgl/C}] -to [get_pins -hier -filter {name =~ */GMII_TXBUF/rsmpMuxTrnsEnd*/D}] 
set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */SiTCP_INT_REG/regX10Data*/C}] -to [get_pins -hier -filter {name =~ */GMII_RXCNT/irMacFlowEnb/D}] 
#set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */SiTCP_INT_REG/regX12Data*/C}] -to [get_pins -hier -filter {name =~ */GMII_RXCNT/muxMyMac*/D}] 
#set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */SiTCP_INT_REG/regX13Data*/C}] -to [get_pins -hier -filter {name =~ */GMII_RXCNT/muxMyMac*/D}] 
#set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */SiTCP_INT_REG/regX14Data*/C}] -to [get_pins -hier -filter {name =~ */GMII_RXCNT/muxMyMac*/D}] 
#set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */SiTCP_INT_REG/regX15Data*/C}] -to [get_pins -hier -filter {name =~ */GMII_RXCNT/muxMyMac*/D}] 
#set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */SiTCP_INT_REG/regX16Data*/C}] -to [get_pins -hier -filter {name =~ */GMII_RXCNT/muxMyMac*/D}] 
set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */SiTCP_INT_REG/regX17Data*/C}] -to [get_pins -hier -filter {name =~ */GMII_RXCNT/muxMyMac*/D}] 
set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */SiTCP_INT_REG/regX18Data*/C}] -to [get_pins -hier -filter {name =~ */GMII_RXCNT/muxMyIp*/D}] 
set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */SiTCP_INT_REG/regX19Data*/C}] -to [get_pins -hier -filter {name =~ */GMII_RXCNT/muxMyIp*/D}] 
set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */SiTCP_INT_REG/regX1AData*/C}] -to [get_pins -hier -filter {name =~ */GMII_RXCNT/muxMyIp*/D}] 
set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */SiTCP_INT_REG/regX1BData*/C}] -to [get_pins -hier -filter {name =~ */GMII_RXCNT/muxMyIp*/D}] 
set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */GMII_TXBUF/dlyBank0LastWrAddr*/C}]  -to [get_pins -hier -filter {name =~ */GMII_TXBUF/rsmpBank0LastWrAddr*/D}] 
set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */GMII_TXBUF/dlyBank1LastWrAddr*/C}]  -to [get_pins -hier -filter {name =~ */GMII_TXBUF/rsmpBank1LastWrAddr*/D}] 
set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */GMII_TXBUF/memRdReq*/C}]            -to [get_pins -hier -filter {name =~ */GMII_TXBUF/irMemRdReq*/D}] 
set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */GMII_RXCNT/orMacTim*/C}]  -to [get_pins -hier -filter {name =~ */GMII_TXCNT/irMacPauseTime*/D}] 
set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */GMII_RXCNT/orMacPause/C}] -to [get_pins -hier -filter {name =~ */GMII_TXCNT/irMacPauseExe_0/D}]
set_false_path -from [get_pins -hier -filter {name =~ */SiTCP_INT/SiTCP_RESET_OUT/C}]

set_false_path -through [get_nets Network/SiTCP/SiTCP/SiTCP_INT/SiTCP_INT_REG/reg*]

create_clock -period 8.000 -name SFP_REFCLK_P -waveform {0.000 4.000} [get_ports SFP_REFCLK_P]
create_generated_clock -name clk_en -source [get_pins sys_mmcm2/inst/mmcm_adv_inst/CLKOUT0] -divide_by 2 [get_pins clk_en_reg/Q]

set_property PACKAGE_PIN AB1 [get_ports TRIG_BUSY]
set_property PACKAGE_PIN W1 [get_ports TRIG_CLK]
set_property PACKAGE_PIN V1 [get_ports TRIG_IN]
set_property PACKAGE_PIN AA2 [get_ports TRIG_OUT]
set_property PACKAGE_PIN Y2 [get_ports TRIGGER]
set_property IOSTANDARD LVCMOS33 [get_ports TRIG_BUSY]
set_property IOSTANDARD LVCMOS33 [get_ports TRIG_CLK]
set_property IOSTANDARD LVCMOS33 [get_ports TRIG_IN]
set_property IOSTANDARD LVCMOS33 [get_ports TRIG_OUT]
set_property IOSTANDARD LVCMOS33 [get_ports TRIGGER]


#add 2015/7/1
set_false_path -through [get_nets rbcp_control/rbcp_write/reg_seu_*]
set_false_path -through [get_cells rbcp_control/rbcp_write/reg_seu_*]

set_property PACKAGE_PIN A11 [get_ports {SFP_RX_N[0]}]

set_property PACKAGE_PIN G1 [get_ports {DIP_SW[7]}]
set_property PACKAGE_PIN F2 [get_ports {DIP_SW[6]}]
set_property PACKAGE_PIN F4 [get_ports {DIP_SW[5]}]
set_property PACKAGE_PIN F5 [get_ports {DIP_SW[4]}]
set_property PACKAGE_PIN E5 [get_ports {DIP_SW[3]}]
set_property PACKAGE_PIN D4 [get_ports {DIP_SW[2]}]
set_property PACKAGE_PIN D5 [get_ports {DIP_SW[1]}]
set_property PACKAGE_PIN D6 [get_ports {DIP_SW[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DIP_SW[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DIP_SW[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DIP_SW[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DIP_SW[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DIP_SW[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DIP_SW[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DIP_SW[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DIP_SW[0]}]



set_false_path -through [get_nets Monitor/seu_count_reset2]
create_clock -period 25.000 -name TRIG_CLK -waveform {0.000 12.500} [get_ports TRIG_CLK]

set_property PACKAGE_PIN E1 [get_ports TEST_IN_SIGNAL]
set_property IOSTANDARD LVCMOS33 [get_ports TEST_IN_SIGNAL]

set_clock_groups -asynchronous -group [get_clocks TRIG_CLK] -group [get_clocks -of_objects [get_pins sys_mmcm2/inst/mmcm_adv_inst/CLKOUT0]]
set_false_path -from [get_clocks -of_objects [get_pins sys_mmcm2/inst/mmcm_adv_inst/CLKOUT0]] -to [get_clocks -of_objects [get_pins sys_mmcm2/inst/mmcm_adv_inst/CLKOUT2]]



