// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
// Date        : Wed Jan 14 17:14:09 2026
// Host        : humberto.asic.kek.jp running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim
//               /home/hamada/Thermal_n/firmware_git/Thermal_n_ROESTI_ver8/ip/gig_ethernet_pcs_pma/gig_ethernet_pcs_pma_sim_netlist.v
// Design      : gig_ethernet_pcs_pma
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* DowngradeIPIdentifiedWarnings = "yes" *) (* EXAMPLE_SIMULATION = "0" *) 
(* NotValidForBitStream *)
module gig_ethernet_pcs_pma
   (gtrefclk_p,
    gtrefclk_n,
    gtrefclk_out,
    gtrefclk_bufg_out,
    txp,
    txn,
    rxp,
    rxn,
    resetdone,
    userclk_out,
    userclk2_out,
    rxuserclk_out,
    rxuserclk2_out,
    independent_clock_bufg,
    pma_reset_out,
    mmcm_locked_out,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    mdc,
    mdio_i,
    mdio_o,
    mdio_t,
    phyaddr,
    configuration_vector,
    configuration_valid,
    an_interrupt,
    an_adv_config_vector,
    an_adv_config_val,
    an_restart_config,
    status_vector,
    reset,
    signal_detect,
    gt0_pll0outclk_out,
    gt0_pll0outrefclk_out,
    gt0_pll1outclk_out,
    gt0_pll1outrefclk_out,
    gt0_pll0lock_out,
    gt0_pll0refclklost_out);
  input gtrefclk_p;
  input gtrefclk_n;
  output gtrefclk_out;
  output gtrefclk_bufg_out;
  output txp;
  output txn;
  input rxp;
  input rxn;
  output resetdone;
  output userclk_out;
  output userclk2_out;
  output rxuserclk_out;
  output rxuserclk2_out;
  input independent_clock_bufg;
  output pma_reset_out;
  output mmcm_locked_out;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  input mdc;
  input mdio_i;
  output mdio_o;
  output mdio_t;
  input [4:0]phyaddr;
  input [4:0]configuration_vector;
  input configuration_valid;
  output an_interrupt;
  input [15:0]an_adv_config_vector;
  input an_adv_config_val;
  input an_restart_config;
  output [15:0]status_vector;
  input reset;
  input signal_detect;
  output gt0_pll0outclk_out;
  output gt0_pll0outrefclk_out;
  output gt0_pll1outclk_out;
  output gt0_pll1outrefclk_out;
  output gt0_pll0lock_out;
  output gt0_pll0refclklost_out;

  wire \<const0> ;
  wire \<const1> ;
  wire an_adv_config_val;
  wire [15:0]an_adv_config_vector;
  wire an_interrupt;
  wire an_restart_config;
  wire configuration_valid;
  wire [4:0]configuration_vector;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire gt0_pll0lock_out;
  wire gt0_pll0outclk_out;
  wire gt0_pll0outrefclk_out;
  wire gt0_pll0refclklost_out;
  wire gt0_pll1outclk_out;
  wire gt0_pll1outrefclk_out;
  wire gtrefclk_bufg_out;
  wire gtrefclk_n;
  wire gtrefclk_out;
  wire gtrefclk_p;
  wire independent_clock_bufg;
  wire mdc;
  wire mdio_i;
  wire mdio_o;
  wire mdio_t;
  wire mmcm_locked_out;
  wire [4:0]phyaddr;
  wire pma_reset_out;
  wire reset;
  wire resetdone;
  wire rxn;
  wire rxp;
  wire rxuserclk2_out;
  wire rxuserclk_out;
  wire signal_detect;
  wire [15:0]\^status_vector ;
  wire txn;
  wire txp;
  wire userclk2_out;
  wire userclk_out;
  wire [11:7]NLW_inst_status_vector_UNCONNECTED;

  assign status_vector[15:12] = \^status_vector [15:12];
  assign status_vector[11] = \<const1> ;
  assign status_vector[10] = \<const0> ;
  assign status_vector[9:8] = \^status_vector [9:8];
  assign status_vector[7] = \<const0> ;
  assign status_vector[6:0] = \^status_vector [6:0];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* EXAMPLE_SIMULATION = "0" *) 
  (* X_CORE_INFO = "gig_ethernet_pcs_pma_v16_2_13,Vivado 2023.1.1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  gig_ethernet_pcs_pma_support inst
       (.an_adv_config_val(an_adv_config_val),
        .an_adv_config_vector({an_adv_config_vector[15],1'b0,an_adv_config_vector[13:12],1'b0,1'b0,1'b0,an_adv_config_vector[8:7],1'b0,an_adv_config_vector[5],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .an_interrupt(an_interrupt),
        .an_restart_config(an_restart_config),
        .configuration_valid(configuration_valid),
        .configuration_vector(configuration_vector),
        .gmii_isolate(gmii_isolate),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .gt0_pll0lock_out(gt0_pll0lock_out),
        .gt0_pll0outclk_out(gt0_pll0outclk_out),
        .gt0_pll0outrefclk_out(gt0_pll0outrefclk_out),
        .gt0_pll0refclklost_out(gt0_pll0refclklost_out),
        .gt0_pll1outclk_out(gt0_pll1outclk_out),
        .gt0_pll1outrefclk_out(gt0_pll1outrefclk_out),
        .gtrefclk_bufg_out(gtrefclk_bufg_out),
        .gtrefclk_n(gtrefclk_n),
        .gtrefclk_out(gtrefclk_out),
        .gtrefclk_p(gtrefclk_p),
        .independent_clock_bufg(independent_clock_bufg),
        .mdc(mdc),
        .mdio_i(mdio_i),
        .mdio_o(mdio_o),
        .mdio_t(mdio_t),
        .mmcm_locked_out(mmcm_locked_out),
        .phyaddr(phyaddr),
        .pma_reset_out(pma_reset_out),
        .reset(reset),
        .resetdone(resetdone),
        .rxn(rxn),
        .rxp(rxp),
        .rxuserclk2_out(rxuserclk2_out),
        .rxuserclk_out(rxuserclk_out),
        .signal_detect(signal_detect),
        .status_vector(\^status_vector ),
        .txn(txn),
        .txp(txp),
        .userclk2_out(userclk2_out),
        .userclk_out(userclk_out));
endmodule

module gig_ethernet_pcs_pma_GTWIZARD
   (txn,
    txp,
    rxoutclk,
    txoutclk,
    D,
    TXBUFSTATUS,
    RXBUFSTATUS,
    gtpe2_i,
    gtpe2_i_0,
    gtpe2_i_1,
    gtpe2_i_2,
    gtpe2_i_3,
    mmcm_reset,
    PLL0_RESET_reg,
    data_in,
    rx_fsm_reset_done_int_reg,
    CLK,
    rxn,
    rxp,
    gt0_pll0outclk_out,
    gt0_pll0outrefclk_out,
    gt0_pll1outclk_out,
    gt0_pll1outrefclk_out,
    reset_out,
    wtd_rxpcsreset_in,
    gtpe2_i_4,
    TXPD,
    RXPD,
    Q,
    gtpe2_i_5,
    gtpe2_i_6,
    gtpe2_i_7,
    independent_clock_bufg,
    out,
    gt0_gtrxreset_gt_d1_reg,
    gtpe2_i_8,
    gt0_pll0refclklost_out,
    data_sync_reg1,
    gt0_pll0lock_out,
    data_out);
  output txn;
  output txp;
  output rxoutclk;
  output txoutclk;
  output [1:0]D;
  output [0:0]TXBUFSTATUS;
  output [0:0]RXBUFSTATUS;
  output [15:0]gtpe2_i;
  output [1:0]gtpe2_i_0;
  output [1:0]gtpe2_i_1;
  output [1:0]gtpe2_i_2;
  output [1:0]gtpe2_i_3;
  output mmcm_reset;
  output PLL0_RESET_reg;
  output data_in;
  output rx_fsm_reset_done_int_reg;
  input CLK;
  input rxn;
  input rxp;
  input gt0_pll0outclk_out;
  input gt0_pll0outrefclk_out;
  input gt0_pll1outclk_out;
  input gt0_pll1outrefclk_out;
  input reset_out;
  input wtd_rxpcsreset_in;
  input gtpe2_i_4;
  input [0:0]TXPD;
  input [0:0]RXPD;
  input [15:0]Q;
  input [1:0]gtpe2_i_5;
  input [1:0]gtpe2_i_6;
  input [1:0]gtpe2_i_7;
  input independent_clock_bufg;
  input [0:0]out;
  input gt0_gtrxreset_gt_d1_reg;
  input gtpe2_i_8;
  input gt0_pll0refclklost_out;
  input data_sync_reg1;
  input gt0_pll0lock_out;
  input data_out;

  wire CLK;
  wire [1:0]D;
  wire PLL0_RESET_reg;
  wire [15:0]Q;
  wire [0:0]RXBUFSTATUS;
  wire [0:0]RXPD;
  wire [0:0]TXBUFSTATUS;
  wire [0:0]TXPD;
  wire data_in;
  wire data_out;
  wire data_sync_reg1;
  wire gt0_gtrxreset_gt_d1_reg;
  wire gt0_pll0lock_out;
  wire gt0_pll0outclk_out;
  wire gt0_pll0outrefclk_out;
  wire gt0_pll0refclklost_out;
  wire gt0_pll1outclk_out;
  wire gt0_pll1outrefclk_out;
  wire [15:0]gtpe2_i;
  wire [1:0]gtpe2_i_0;
  wire [1:0]gtpe2_i_1;
  wire [1:0]gtpe2_i_2;
  wire [1:0]gtpe2_i_3;
  wire gtpe2_i_4;
  wire [1:0]gtpe2_i_5;
  wire [1:0]gtpe2_i_6;
  wire [1:0]gtpe2_i_7;
  wire gtpe2_i_8;
  wire independent_clock_bufg;
  wire mmcm_reset;
  wire [0:0]out;
  wire reset_out;
  wire rx_fsm_reset_done_int_reg;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire txn;
  wire txoutclk;
  wire txp;
  wire wtd_rxpcsreset_in;

  gig_ethernet_pcs_pma_GTWIZARD_init inst
       (.CLK(CLK),
        .D(D),
        .Q(Q),
        .RXBUFSTATUS(RXBUFSTATUS),
        .RXPD(RXPD),
        .TXBUFSTATUS(TXBUFSTATUS),
        .TXPD(TXPD),
        .data_in(data_in),
        .data_out(data_out),
        .data_sync_reg1(data_sync_reg1),
        .gt0_gtrxreset_gt_d1_reg_0(gt0_gtrxreset_gt_d1_reg),
        .gt0_pll0lock_out(gt0_pll0lock_out),
        .gt0_pll0outclk_out(gt0_pll0outclk_out),
        .gt0_pll0outrefclk_out(gt0_pll0outrefclk_out),
        .gt0_pll0refclklost_out(gt0_pll0refclklost_out),
        .gt0_pll1outclk_out(gt0_pll1outclk_out),
        .gt0_pll1outrefclk_out(gt0_pll1outrefclk_out),
        .gtpe2_i(gtpe2_i),
        .gtpe2_i_0(gtpe2_i_0),
        .gtpe2_i_1(gtpe2_i_1),
        .gtpe2_i_2(gtpe2_i_2),
        .gtpe2_i_3(gtpe2_i_3),
        .gtpe2_i_4(gtpe2_i_4),
        .gtpe2_i_5(gtpe2_i_5),
        .gtpe2_i_6(gtpe2_i_6),
        .gtpe2_i_7(gtpe2_i_7),
        .gtpe2_i_8(gtpe2_i_8),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_reset(mmcm_reset),
        .out(out),
        .reset_in(PLL0_RESET_reg),
        .reset_out(reset_out),
        .rx_fsm_reset_done_int_reg(rx_fsm_reset_done_int_reg),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .wtd_rxpcsreset_in(wtd_rxpcsreset_in));
endmodule

module gig_ethernet_pcs_pma_GTWIZARD_GT
   (txn,
    txp,
    rxoutclk,
    gtpe2_i_0,
    txoutclk,
    gtpe2_i_1,
    D,
    TXBUFSTATUS,
    RXBUFSTATUS,
    gtpe2_i_2,
    gtpe2_i_3,
    gtpe2_i_4,
    gtpe2_i_5,
    gtpe2_i_6,
    CLK,
    rxn,
    rxp,
    gt0_gttxreset_gt,
    gt0_pll0outclk_out,
    gt0_pll0outrefclk_out,
    gt0_pll1outclk_out,
    gt0_pll1outrefclk_out,
    reset_out,
    wtd_rxpcsreset_in,
    gt0_rxuserrdy_i,
    gtpe2_i_7,
    TXPD,
    gt0_txuserrdy_i,
    RXPD,
    Q,
    gtpe2_i_8,
    gtpe2_i_9,
    gtpe2_i_10,
    SR,
    reset_sync5);
  output txn;
  output txp;
  output rxoutclk;
  output gtpe2_i_0;
  output txoutclk;
  output gtpe2_i_1;
  output [1:0]D;
  output [0:0]TXBUFSTATUS;
  output [0:0]RXBUFSTATUS;
  output [15:0]gtpe2_i_2;
  output [1:0]gtpe2_i_3;
  output [1:0]gtpe2_i_4;
  output [1:0]gtpe2_i_5;
  output [1:0]gtpe2_i_6;
  input CLK;
  input rxn;
  input rxp;
  input gt0_gttxreset_gt;
  input gt0_pll0outclk_out;
  input gt0_pll0outrefclk_out;
  input gt0_pll1outclk_out;
  input gt0_pll1outrefclk_out;
  input reset_out;
  input wtd_rxpcsreset_in;
  input gt0_rxuserrdy_i;
  input gtpe2_i_7;
  input [0:0]TXPD;
  input gt0_txuserrdy_i;
  input [0:0]RXPD;
  input [15:0]Q;
  input [1:0]gtpe2_i_8;
  input [1:0]gtpe2_i_9;
  input [1:0]gtpe2_i_10;
  input [0:0]SR;
  input reset_sync5;

  wire CLK;
  wire [1:0]D;
  wire [15:0]Q;
  wire [0:0]RXBUFSTATUS;
  wire [0:0]RXPD;
  wire [0:0]SR;
  wire [0:0]TXBUFSTATUS;
  wire [0:0]TXPD;
  wire [4:4]drpaddr_i;
  wire gt0_gttxreset_gt;
  wire gt0_pll0outclk_out;
  wire gt0_pll0outrefclk_out;
  wire gt0_pll1outclk_out;
  wire gt0_pll1outrefclk_out;
  wire gt0_rxuserrdy_i;
  wire gt0_txuserrdy_i;
  wire gtpe2_i_0;
  wire gtpe2_i_1;
  wire [1:0]gtpe2_i_10;
  wire [15:0]gtpe2_i_2;
  wire [1:0]gtpe2_i_3;
  wire [1:0]gtpe2_i_4;
  wire [1:0]gtpe2_i_5;
  wire [1:0]gtpe2_i_6;
  wire gtpe2_i_7;
  wire [1:0]gtpe2_i_8;
  wire [1:0]gtpe2_i_9;
  wire gtpe2_i_n_0;
  wire gtpe2_i_n_1;
  wire gtpe2_i_n_102;
  wire gtpe2_i_n_104;
  wire gtpe2_i_n_105;
  wire gtpe2_i_n_14;
  wire gtpe2_i_n_28;
  wire gtpe2_i_n_29;
  wire gtpe2_i_n_39;
  wire gtpe2_i_n_40;
  wire gtpe2_i_n_43;
  wire gtpe2_i_n_48;
  wire gtpe2_i_n_49;
  wire gtpe2_i_n_50;
  wire gtpe2_i_n_51;
  wire gtpe2_i_n_52;
  wire gtpe2_i_n_53;
  wire gtpe2_i_n_54;
  wire gtpe2_i_n_55;
  wire gtpe2_i_n_56;
  wire gtpe2_i_n_57;
  wire gtpe2_i_n_58;
  wire gtpe2_i_n_59;
  wire gtpe2_i_n_60;
  wire gtpe2_i_n_61;
  wire gtpe2_i_n_62;
  wire gtpe2_i_n_63;
  wire gtpe2_i_n_64;
  wire gtpe2_i_n_65;
  wire gtpe2_i_n_66;
  wire gtpe2_i_n_67;
  wire gtpe2_i_n_68;
  wire gtpe2_i_n_69;
  wire gtpe2_i_n_7;
  wire gtpe2_i_n_70;
  wire gtpe2_i_n_71;
  wire gtpe2_i_n_72;
  wire gtpe2_i_n_73;
  wire gtpe2_i_n_74;
  wire gtpe2_i_n_75;
  wire gtpe2_i_n_76;
  wire gtpe2_i_n_77;
  wire gtpe2_i_n_78;
  wire gtpe2_i_n_8;
  wire gtrxreset_out;
  wire gtrxreset_seq_i_n_1;
  wire gtrxreset_seq_i_n_10;
  wire gtrxreset_seq_i_n_11;
  wire gtrxreset_seq_i_n_12;
  wire gtrxreset_seq_i_n_13;
  wire gtrxreset_seq_i_n_14;
  wire gtrxreset_seq_i_n_15;
  wire gtrxreset_seq_i_n_16;
  wire gtrxreset_seq_i_n_17;
  wire gtrxreset_seq_i_n_18;
  wire gtrxreset_seq_i_n_2;
  wire gtrxreset_seq_i_n_3;
  wire gtrxreset_seq_i_n_4;
  wire gtrxreset_seq_i_n_5;
  wire gtrxreset_seq_i_n_6;
  wire gtrxreset_seq_i_n_7;
  wire gtrxreset_seq_i_n_8;
  wire gtrxreset_seq_i_n_9;
  wire reset_out;
  wire reset_sync5;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire txn;
  wire txoutclk;
  wire txp;
  wire wtd_rxpcsreset_in;
  wire NLW_gtpe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gtpe2_i_PMARSVDOUT0_UNCONNECTED;
  wire NLW_gtpe2_i_PMARSVDOUT1_UNCONNECTED;
  wire NLW_gtpe2_i_RXCDRLOCK_UNCONNECTED;
  wire NLW_gtpe2_i_RXCHANBONDSEQ_UNCONNECTED;
  wire NLW_gtpe2_i_RXCHANISALIGNED_UNCONNECTED;
  wire NLW_gtpe2_i_RXCHANREALIGN_UNCONNECTED;
  wire NLW_gtpe2_i_RXCOMINITDET_UNCONNECTED;
  wire NLW_gtpe2_i_RXCOMSASDET_UNCONNECTED;
  wire NLW_gtpe2_i_RXCOMWAKEDET_UNCONNECTED;
  wire NLW_gtpe2_i_RXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXELECIDLE_UNCONNECTED;
  wire NLW_gtpe2_i_RXHEADERVALID_UNCONNECTED;
  wire NLW_gtpe2_i_RXOSINTDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXOSINTSTARTED_UNCONNECTED;
  wire NLW_gtpe2_i_RXOSINTSTROBEDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXOSINTSTROBESTARTED_UNCONNECTED;
  wire NLW_gtpe2_i_RXOUTCLKFABRIC_UNCONNECTED;
  wire NLW_gtpe2_i_RXOUTCLKPCS_UNCONNECTED;
  wire NLW_gtpe2_i_RXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXRATEDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXSYNCDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXSYNCOUT_UNCONNECTED;
  wire NLW_gtpe2_i_RXVALID_UNCONNECTED;
  wire NLW_gtpe2_i_TXCOMFINISH_UNCONNECTED;
  wire NLW_gtpe2_i_TXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXGEARBOXREADY_UNCONNECTED;
  wire NLW_gtpe2_i_TXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXPHINITDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXRATEDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXSYNCDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXSYNCOUT_UNCONNECTED;
  wire [15:0]NLW_gtpe2_i_PCSRSVDOUT_UNCONNECTED;
  wire [3:2]NLW_gtpe2_i_RXCHARISCOMMA_UNCONNECTED;
  wire [3:2]NLW_gtpe2_i_RXCHARISK_UNCONNECTED;
  wire [3:0]NLW_gtpe2_i_RXCHBONDO_UNCONNECTED;
  wire [31:16]NLW_gtpe2_i_RXDATA_UNCONNECTED;
  wire [1:0]NLW_gtpe2_i_RXDATAVALID_UNCONNECTED;
  wire [3:2]NLW_gtpe2_i_RXDISPERR_UNCONNECTED;
  wire [2:0]NLW_gtpe2_i_RXHEADER_UNCONNECTED;
  wire [3:2]NLW_gtpe2_i_RXNOTINTABLE_UNCONNECTED;
  wire [4:0]NLW_gtpe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gtpe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [1:0]NLW_gtpe2_i_RXSTARTOFSEQ_UNCONNECTED;
  wire [2:0]NLW_gtpe2_i_RXSTATUS_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  GTPE2_CHANNEL #(
    .ACJTAG_DEBUG_MODE(1'b0),
    .ACJTAG_MODE(1'b0),
    .ACJTAG_RESET(1'b0),
    .ADAPT_CFG0(20'b00000000000000000000),
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b0001111111),
    .ALIGN_COMMA_WORD(2),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .CBCC_DATA_SOURCE_SEL("DECODED"),
    .CFOK_CFG(43'b1001001000000000000000001000000111010000000),
    .CFOK_CFG2(7'b0100000),
    .CFOK_CFG3(7'b0100000),
    .CFOK_CFG4(1'b0),
    .CFOK_CFG5(2'b00),
    .CFOK_CFG6(4'b0000),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(1),
    .CHAN_BOND_SEQ_1_1(10'b0000000000),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_COMMON_SWING(1'b0),
    .CLK_CORRECT_USE("TRUE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(36),
    .CLK_COR_MIN_LAT(33),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0110111100),
    .CLK_COR_SEQ_1_2(10'b0001010000),
    .CLK_COR_SEQ_1_3(10'b0000000000),
    .CLK_COR_SEQ_1_4(10'b0000000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0110111100),
    .CLK_COR_SEQ_2_2(10'b0010110101),
    .CLK_COR_SEQ_2_3(10'b0000000000),
    .CLK_COR_SEQ_2_4(10'b0000000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("TRUE"),
    .CLK_COR_SEQ_LEN(2),
    .DEC_MCOMMA_DETECT("TRUE"),
    .DEC_PCOMMA_DETECT("TRUE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DMONITOR_CFG(24'h000A00),
    .ES_CLK_PHASE_SEL(1'b0),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("FALSE"),
    .ES_HORZ_OFFSET(12'h010),
    .ES_PMA_CFG(10'b0000000000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER(80'h00000000000000000000),
    .ES_QUAL_MASK(80'h00000000000000000000),
    .ES_SDATA_MASK(80'h00000000000000000000),
    .ES_VERT_OFFSET(9'b000000000),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(3'b000),
    .IS_CLKRSVD0_INVERTED(1'b0),
    .IS_CLKRSVD1_INVERTED(1'b0),
    .IS_DMONITORCLK_INVERTED(1'b0),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_RXUSRCLK2_INVERTED(1'b0),
    .IS_RXUSRCLK_INVERTED(1'b0),
    .IS_SIGVALIDCLK_INVERTED(1'b0),
    .IS_TXPHDLYTSTCLK_INVERTED(1'b0),
    .IS_TXUSRCLK2_INVERTED(1'b0),
    .IS_TXUSRCLK_INVERTED(1'b0),
    .LOOPBACK_CFG(1'b0),
    .OUTREFCLK_SEL_INV(2'b11),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD_ATTR(48'h000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h19),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PMA_LOOPBACK_CFG(1'b0),
    .PMA_RSV(32'h00000333),
    .PMA_RSV2(32'h00002040),
    .PMA_RSV3(2'b00),
    .PMA_RSV4(4'b0000),
    .PMA_RSV5(1'b0),
    .PMA_RSV6(1'b0),
    .PMA_RSV7(1'b0),
    .RXBUFRESET_TIME(5'b00001),
    .RXBUF_ADDR_MODE("FULL"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(61),
    .RXBUF_THRESH_OVRD("FALSE"),
    .RXBUF_THRESH_UNDFLW(8),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(83'h0000107FE106001041010),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG(6'b001001),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXDLY_CFG(16'h001F),
    .RXDLY_LCFG(9'h030),
    .RXDLY_TAP_CFG(16'h0000),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPMRESET_TIME(7'b0001111),
    .RXLPM_BIAS_STARTUP_DISABLE(1'b0),
    .RXLPM_CFG(4'b0110),
    .RXLPM_CFG1(1'b0),
    .RXLPM_CM_CFG(1'b0),
    .RXLPM_GC_CFG(9'b111100010),
    .RXLPM_GC_CFG2(3'b001),
    .RXLPM_HF_CFG(14'b00001111110000),
    .RXLPM_HF_CFG2(5'b01010),
    .RXLPM_HF_CFG3(4'b0000),
    .RXLPM_HOLD_DURING_EIDLE(1'b0),
    .RXLPM_INCM_CFG(1'b1),
    .RXLPM_IPCM_CFG(1'b0),
    .RXLPM_LF_CFG(18'b000000001111110000),
    .RXLPM_LF_CFG2(5'b01010),
    .RXLPM_OSINT_CFG(3'b100),
    .RXOOB_CFG(7'b0000110),
    .RXOOB_CLK_CFG("PMA"),
    .RXOSCALRESET_TIME(5'b00011),
    .RXOSCALRESET_TIMEOUT(5'b00000),
    .RXOUT_DIV(4),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'hC00002),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPI_CFG0(3'b000),
    .RXPI_CFG1(1'b1),
    .RXPI_CFG2(1'b1),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RXSYNC_MULTILANE(1'b0),
    .RXSYNC_OVRD(1'b0),
    .RXSYNC_SKIP_DA(1'b0),
    .RX_BIAS_CFG(16'b0000111100110011),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(5),
    .RX_CLKMUX_EN(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(4'b1010),
    .RX_DATA_WIDTH(20),
    .RX_DDI_SEL(6'b000000),
    .RX_DEBUG_CFG(14'b00000000000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DISPERR_SEQ_MATCH("TRUE"),
    .RX_OS_CFG(13'b0000010000000),
    .RX_SIG_VALID_DLY(10),
    .RX_XCLK_SEL("RXREC"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b0101),
    .SATA_BURST_VAL(3'b100),
    .SATA_EIDLE_VAL(3'b100),
    .SATA_MAX_BURST(8),
    .SATA_MAX_INIT(21),
    .SATA_MAX_WAKE(7),
    .SATA_MIN_BURST(4),
    .SATA_MIN_INIT(12),
    .SATA_MIN_WAKE(4),
    .SATA_PLL_CFG("VCO_3000MHZ"),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("FALSE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("X"),
    .SIM_VERSION("2.0"),
    .TERM_RCAL_CFG(15'b100001000010000),
    .TERM_RCAL_OVRD(3'b000),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV(32'h00000000),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h001F),
    .TXDLY_LCFG(9'h030),
    .TXDLY_TAP_CFG(16'h0000),
    .TXGEARBOX_EN("FALSE"),
    .TXOOB_CFG(1'b0),
    .TXOUT_DIV(4),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPI_CFG0(2'b00),
    .TXPI_CFG1(2'b00),
    .TXPI_CFG2(2'b00),
    .TXPI_CFG3(1'b0),
    .TXPI_CFG4(1'b0),
    .TXPI_CFG5(3'b000),
    .TXPI_GREY_SEL(1'b0),
    .TXPI_INVSTROBE_SEL(1'b0),
    .TXPI_PPMCLK_SEL("TXUSRCLK2"),
    .TXPI_PPM_CFG(8'b00000000),
    .TXPI_SYNFREQ_PPM(3'b001),
    .TXPMARESET_TIME(5'b00001),
    .TXSYNC_MULTILANE(1'b0),
    .TXSYNC_OVRD(1'b0),
    .TXSYNC_SKIP_DA(1'b0),
    .TX_CLK25_DIV(5),
    .TX_CLKMUX_EN(1'b1),
    .TX_DATA_WIDTH(20),
    .TX_DEEMPH0(6'b000000),
    .TX_DEEMPH1(6'b000000),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b110),
    .TX_EIDLE_DEASSERT_DELAY(3'b100),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1001110),
    .TX_MARGIN_FULL_1(7'b1001001),
    .TX_MARGIN_FULL_2(7'b1000101),
    .TX_MARGIN_FULL_3(7'b1000010),
    .TX_MARGIN_FULL_4(7'b1000000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000100),
    .TX_MARGIN_LOW_2(7'b1000010),
    .TX_MARGIN_LOW_3(7'b1000000),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PREDRIVER_MODE(1'b0),
    .TX_RXDETECT_CFG(14'h1832),
    .TX_RXDETECT_REF(3'b100),
    .TX_XCLK_SEL("TXOUT"),
    .UCODEER_CLR(1'b0),
    .USE_PCS_CLK_PHASE_SEL(1'b0)) 
    gtpe2_i
       (.CFGRESET(1'b0),
        .CLKRSVD0(1'b0),
        .CLKRSVD1(1'b0),
        .DMONFIFORESET(1'b0),
        .DMONITORCLK(1'b0),
        .DMONITOROUT({gtpe2_i_n_48,gtpe2_i_n_49,gtpe2_i_n_50,gtpe2_i_n_51,gtpe2_i_n_52,gtpe2_i_n_53,gtpe2_i_n_54,gtpe2_i_n_55,gtpe2_i_n_56,gtpe2_i_n_57,gtpe2_i_n_58,gtpe2_i_n_59,gtpe2_i_n_60,gtpe2_i_n_61,gtpe2_i_n_62}),
        .DRPADDR({1'b0,1'b0,1'b0,1'b0,drpaddr_i,1'b0,1'b0,1'b0,drpaddr_i}),
        .DRPCLK(CLK),
        .DRPDI({gtrxreset_seq_i_n_2,gtrxreset_seq_i_n_3,gtrxreset_seq_i_n_4,gtrxreset_seq_i_n_5,gtrxreset_seq_i_n_6,gtrxreset_seq_i_n_7,gtrxreset_seq_i_n_8,gtrxreset_seq_i_n_9,gtrxreset_seq_i_n_10,gtrxreset_seq_i_n_11,gtrxreset_seq_i_n_12,gtrxreset_seq_i_n_13,gtrxreset_seq_i_n_14,gtrxreset_seq_i_n_15,gtrxreset_seq_i_n_16,gtrxreset_seq_i_n_17}),
        .DRPDO({gtpe2_i_n_63,gtpe2_i_n_64,gtpe2_i_n_65,gtpe2_i_n_66,gtpe2_i_n_67,gtpe2_i_n_68,gtpe2_i_n_69,gtpe2_i_n_70,gtpe2_i_n_71,gtpe2_i_n_72,gtpe2_i_n_73,gtpe2_i_n_74,gtpe2_i_n_75,gtpe2_i_n_76,gtpe2_i_n_77,gtpe2_i_n_78}),
        .DRPEN(gtrxreset_seq_i_n_18),
        .DRPRDY(gtpe2_i_n_0),
        .DRPWE(gtrxreset_seq_i_n_1),
        .EYESCANDATAERROR(gtpe2_i_n_1),
        .EYESCANMODE(1'b0),
        .EYESCANRESET(1'b0),
        .EYESCANTRIGGER(1'b0),
        .GTPRXN(rxn),
        .GTPRXP(rxp),
        .GTPTXN(txn),
        .GTPTXP(txp),
        .GTRESETSEL(1'b0),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(gtrxreset_out),
        .GTTXRESET(gt0_gttxreset_gt),
        .LOOPBACK({1'b0,1'b0,1'b0}),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT(NLW_gtpe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gtpe2_i_PHYSTATUS_UNCONNECTED),
        .PLL0CLK(gt0_pll0outclk_out),
        .PLL0REFCLK(gt0_pll0outrefclk_out),
        .PLL1CLK(gt0_pll1outclk_out),
        .PLL1REFCLK(gt0_pll1outrefclk_out),
        .PMARSVDIN0(1'b0),
        .PMARSVDIN1(1'b0),
        .PMARSVDIN2(1'b0),
        .PMARSVDIN3(1'b0),
        .PMARSVDIN4(1'b0),
        .PMARSVDOUT0(NLW_gtpe2_i_PMARSVDOUT0_UNCONNECTED),
        .PMARSVDOUT1(NLW_gtpe2_i_PMARSVDOUT1_UNCONNECTED),
        .RESETOVRD(1'b0),
        .RX8B10BEN(1'b1),
        .RXADAPTSELTEST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXBUFRESET(1'b0),
        .RXBUFSTATUS({RXBUFSTATUS,gtpe2_i_n_104,gtpe2_i_n_105}),
        .RXBYTEISALIGNED(gtpe2_i_n_7),
        .RXBYTEREALIGN(gtpe2_i_n_8),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(1'b0),
        .RXCDRLOCK(NLW_gtpe2_i_RXCDRLOCK_UNCONNECTED),
        .RXCDROVRDEN(1'b0),
        .RXCDRRESET(1'b0),
        .RXCDRRESETRSV(1'b0),
        .RXCHANBONDSEQ(NLW_gtpe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gtpe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gtpe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA({NLW_gtpe2_i_RXCHARISCOMMA_UNCONNECTED[3:2],gtpe2_i_3}),
        .RXCHARISK({NLW_gtpe2_i_RXCHARISK_UNCONNECTED[3:2],gtpe2_i_4}),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO(NLW_gtpe2_i_RXCHBONDO_UNCONNECTED[3:0]),
        .RXCHBONDSLAVE(1'b0),
        .RXCLKCORCNT(D),
        .RXCOMINITDET(NLW_gtpe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(gtpe2_i_n_14),
        .RXCOMMADETEN(1'b1),
        .RXCOMSASDET(NLW_gtpe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gtpe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA({NLW_gtpe2_i_RXDATA_UNCONNECTED[31:16],gtpe2_i_2}),
        .RXDATAVALID(NLW_gtpe2_i_RXDATAVALID_UNCONNECTED[1:0]),
        .RXDDIEN(1'b0),
        .RXDFEXYDEN(1'b0),
        .RXDISPERR({NLW_gtpe2_i_RXDISPERR_UNCONNECTED[3:2],gtpe2_i_5}),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(NLW_gtpe2_i_RXDLYSRESETDONE_UNCONNECTED),
        .RXELECIDLE(NLW_gtpe2_i_RXELECIDLE_UNCONNECTED),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXGEARBOXSLIP(1'b0),
        .RXHEADER(NLW_gtpe2_i_RXHEADER_UNCONNECTED[2:0]),
        .RXHEADERVALID(NLW_gtpe2_i_RXHEADERVALID_UNCONNECTED),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFOVRDEN(1'b0),
        .RXLPMOSINTNTRLEN(1'b0),
        .RXLPMRESET(1'b0),
        .RXMCOMMAALIGNEN(reset_out),
        .RXNOTINTABLE({NLW_gtpe2_i_RXNOTINTABLE_UNCONNECTED[3:2],gtpe2_i_6}),
        .RXOOBRESET(1'b0),
        .RXOSCALRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSINTCFG({1'b0,1'b0,1'b1,1'b0}),
        .RXOSINTDONE(NLW_gtpe2_i_RXOSINTDONE_UNCONNECTED),
        .RXOSINTEN(1'b1),
        .RXOSINTHOLD(1'b0),
        .RXOSINTID0({1'b0,1'b0,1'b0,1'b0}),
        .RXOSINTNTRLEN(1'b0),
        .RXOSINTOVRDEN(1'b0),
        .RXOSINTPD(1'b0),
        .RXOSINTSTARTED(NLW_gtpe2_i_RXOSINTSTARTED_UNCONNECTED),
        .RXOSINTSTROBE(1'b0),
        .RXOSINTSTROBEDONE(NLW_gtpe2_i_RXOSINTSTROBEDONE_UNCONNECTED),
        .RXOSINTSTROBESTARTED(NLW_gtpe2_i_RXOSINTSTROBESTARTED_UNCONNECTED),
        .RXOSINTTESTOVRDEN(1'b0),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(rxoutclk),
        .RXOUTCLKFABRIC(NLW_gtpe2_i_RXOUTCLKFABRIC_UNCONNECTED),
        .RXOUTCLKPCS(NLW_gtpe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(reset_out),
        .RXPCSRESET(wtd_rxpcsreset_in),
        .RXPD({RXPD,RXPD}),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(NLW_gtpe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(1'b0),
        .RXPHDLYPD(1'b0),
        .RXPHDLYRESET(1'b0),
        .RXPHMONITOR(NLW_gtpe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(1'b0),
        .RXPHSLIPMONITOR(NLW_gtpe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(1'b0),
        .RXPMARESETDONE(gtpe2_i_n_28),
        .RXPOLARITY(1'b0),
        .RXPRBSCNTRESET(1'b0),
        .RXPRBSERR(gtpe2_i_n_29),
        .RXPRBSSEL({1'b0,1'b0,1'b0}),
        .RXRATE({1'b0,1'b0,1'b0}),
        .RXRATEDONE(NLW_gtpe2_i_RXRATEDONE_UNCONNECTED),
        .RXRATEMODE(1'b0),
        .RXRESETDONE(gtpe2_i_0),
        .RXSLIDE(1'b0),
        .RXSTARTOFSEQ(NLW_gtpe2_i_RXSTARTOFSEQ_UNCONNECTED[1:0]),
        .RXSTATUS(NLW_gtpe2_i_RXSTATUS_UNCONNECTED[2:0]),
        .RXSYNCALLIN(1'b0),
        .RXSYNCDONE(NLW_gtpe2_i_RXSYNCDONE_UNCONNECTED),
        .RXSYNCIN(1'b0),
        .RXSYNCMODE(1'b0),
        .RXSYNCOUT(NLW_gtpe2_i_RXSYNCOUT_UNCONNECTED),
        .RXSYSCLKSEL({1'b0,1'b0}),
        .RXUSERRDY(gt0_rxuserrdy_i),
        .RXUSRCLK(gtpe2_i_7),
        .RXUSRCLK2(gtpe2_i_7),
        .RXVALID(NLW_gtpe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .SIGVALIDCLK(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b1),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS({TXBUFSTATUS,gtpe2_i_n_102}),
        .TXCHARDISPMODE({1'b0,1'b0,gtpe2_i_8}),
        .TXCHARDISPVAL({1'b0,1'b0,gtpe2_i_9}),
        .TXCHARISK({1'b0,1'b0,gtpe2_i_10}),
        .TXCOMFINISH(NLW_gtpe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .TXDEEMPH(1'b0),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL({1'b1,1'b0,1'b0,1'b0}),
        .TXDIFFPD(1'b0),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(NLW_gtpe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(TXPD),
        .TXGEARBOXREADY(NLW_gtpe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({1'b0,1'b0,1'b0}),
        .TXINHIBIT(1'b0),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXOUTCLK(txoutclk),
        .TXOUTCLKFABRIC(gtpe2_i_n_39),
        .TXOUTCLKPCS(gtpe2_i_n_40),
        .TXOUTCLKSEL({1'b1,1'b0,1'b0}),
        .TXPCSRESET(1'b0),
        .TXPD({TXPD,TXPD}),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(NLW_gtpe2_i_TXPHALIGNDONE_UNCONNECTED),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b0),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(NLW_gtpe2_i_TXPHINITDONE_UNCONNECTED),
        .TXPHOVRDEN(1'b0),
        .TXPIPPMEN(1'b0),
        .TXPIPPMOVRDEN(1'b0),
        .TXPIPPMPD(1'b0),
        .TXPIPPMSEL(1'b1),
        .TXPIPPMSTEPSIZE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPISOPD(1'b0),
        .TXPMARESET(1'b0),
        .TXPMARESETDONE(gtpe2_i_n_43),
        .TXPOLARITY(1'b0),
        .TXPOSTCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPOSTCURSORINV(1'b0),
        .TXPRBSFORCEERR(1'b0),
        .TXPRBSSEL({1'b0,1'b0,1'b0}),
        .TXPRECURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPRECURSORINV(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(NLW_gtpe2_i_TXRATEDONE_UNCONNECTED),
        .TXRATEMODE(1'b0),
        .TXRESETDONE(gtpe2_i_1),
        .TXSEQUENCE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXSTARTSEQ(1'b0),
        .TXSWING(1'b0),
        .TXSYNCALLIN(1'b0),
        .TXSYNCDONE(NLW_gtpe2_i_TXSYNCDONE_UNCONNECTED),
        .TXSYNCIN(1'b0),
        .TXSYNCMODE(1'b0),
        .TXSYNCOUT(NLW_gtpe2_i_TXSYNCOUT_UNCONNECTED),
        .TXSYSCLKSEL({1'b0,1'b0}),
        .TXUSERRDY(gt0_txuserrdy_i),
        .TXUSRCLK(gtpe2_i_7),
        .TXUSRCLK2(gtpe2_i_7));
  gig_ethernet_pcs_pma_gtwizard_gtrxreset_seq gtrxreset_seq_i
       (.CLK(CLK),
        .D({gtpe2_i_n_63,gtpe2_i_n_64,gtpe2_i_n_65,gtpe2_i_n_66,gtpe2_i_n_67,gtpe2_i_n_68,gtpe2_i_n_69,gtpe2_i_n_70,gtpe2_i_n_71,gtpe2_i_n_72,gtpe2_i_n_73,gtpe2_i_n_74,gtpe2_i_n_75,gtpe2_i_n_76,gtpe2_i_n_77,gtpe2_i_n_78}),
        .DRPADDR(drpaddr_i),
        .DRPDI({gtrxreset_seq_i_n_2,gtrxreset_seq_i_n_3,gtrxreset_seq_i_n_4,gtrxreset_seq_i_n_5,gtrxreset_seq_i_n_6,gtrxreset_seq_i_n_7,gtrxreset_seq_i_n_8,gtrxreset_seq_i_n_9,gtrxreset_seq_i_n_10,gtrxreset_seq_i_n_11,gtrxreset_seq_i_n_12,gtrxreset_seq_i_n_13,gtrxreset_seq_i_n_14,gtrxreset_seq_i_n_15,gtrxreset_seq_i_n_16,gtrxreset_seq_i_n_17}),
        .\FSM_onehot_state_reg[5]_0 (gtrxreset_seq_i_n_1),
        .\FSM_onehot_state_reg[7]_0 (gtrxreset_seq_i_n_18),
        .SR(SR),
        .data_in(gtpe2_i_n_28),
        .gtrxreset_out(gtrxreset_out),
        .\original_rd_data_reg[0]_0 (gtpe2_i_n_0),
        .reset_sync5(reset_sync5));
endmodule

module gig_ethernet_pcs_pma_GTWIZARD_init
   (txn,
    txp,
    rxoutclk,
    txoutclk,
    D,
    TXBUFSTATUS,
    RXBUFSTATUS,
    gtpe2_i,
    gtpe2_i_0,
    gtpe2_i_1,
    gtpe2_i_2,
    gtpe2_i_3,
    mmcm_reset,
    reset_in,
    data_in,
    rx_fsm_reset_done_int_reg,
    CLK,
    rxn,
    rxp,
    gt0_pll0outclk_out,
    gt0_pll0outrefclk_out,
    gt0_pll1outclk_out,
    gt0_pll1outrefclk_out,
    reset_out,
    wtd_rxpcsreset_in,
    gtpe2_i_4,
    TXPD,
    RXPD,
    Q,
    gtpe2_i_5,
    gtpe2_i_6,
    gtpe2_i_7,
    independent_clock_bufg,
    out,
    gt0_gtrxreset_gt_d1_reg_0,
    gtpe2_i_8,
    gt0_pll0refclklost_out,
    data_sync_reg1,
    gt0_pll0lock_out,
    data_out);
  output txn;
  output txp;
  output rxoutclk;
  output txoutclk;
  output [1:0]D;
  output [0:0]TXBUFSTATUS;
  output [0:0]RXBUFSTATUS;
  output [15:0]gtpe2_i;
  output [1:0]gtpe2_i_0;
  output [1:0]gtpe2_i_1;
  output [1:0]gtpe2_i_2;
  output [1:0]gtpe2_i_3;
  output mmcm_reset;
  output reset_in;
  output data_in;
  output rx_fsm_reset_done_int_reg;
  input CLK;
  input rxn;
  input rxp;
  input gt0_pll0outclk_out;
  input gt0_pll0outrefclk_out;
  input gt0_pll1outclk_out;
  input gt0_pll1outrefclk_out;
  input reset_out;
  input wtd_rxpcsreset_in;
  input gtpe2_i_4;
  input [0:0]TXPD;
  input [0:0]RXPD;
  input [15:0]Q;
  input [1:0]gtpe2_i_5;
  input [1:0]gtpe2_i_6;
  input [1:0]gtpe2_i_7;
  input independent_clock_bufg;
  input [0:0]out;
  input gt0_gtrxreset_gt_d1_reg_0;
  input gtpe2_i_8;
  input gt0_pll0refclklost_out;
  input data_sync_reg1;
  input gt0_pll0lock_out;
  input data_out;

  wire CLK;
  wire [1:0]D;
  wire [15:0]Q;
  wire [0:0]RXBUFSTATUS;
  wire [0:0]RXPD;
  wire [0:0]TXBUFSTATUS;
  wire [0:0]TXPD;
  wire [31:1]data0;
  wire data_in;
  wire data_out;
  wire data_sync_reg1;
  wire gt0_gtrxreset_gt;
  wire gt0_gtrxreset_gt_d1;
  wire gt0_gtrxreset_gt_d1_reg_0;
  wire gt0_gttxreset_gt;
  wire gt0_pll0lock_out;
  wire gt0_pll0outclk_out;
  wire gt0_pll0outrefclk_out;
  wire gt0_pll0refclklost_out;
  wire gt0_pll1outclk_out;
  wire gt0_pll1outrefclk_out;
  wire [31:0]gt0_rx_cdrlock_counter;
  wire gt0_rx_cdrlock_counter0_carry__0_n_0;
  wire gt0_rx_cdrlock_counter0_carry__0_n_1;
  wire gt0_rx_cdrlock_counter0_carry__0_n_2;
  wire gt0_rx_cdrlock_counter0_carry__0_n_3;
  wire gt0_rx_cdrlock_counter0_carry__1_n_0;
  wire gt0_rx_cdrlock_counter0_carry__1_n_1;
  wire gt0_rx_cdrlock_counter0_carry__1_n_2;
  wire gt0_rx_cdrlock_counter0_carry__1_n_3;
  wire gt0_rx_cdrlock_counter0_carry__2_n_0;
  wire gt0_rx_cdrlock_counter0_carry__2_n_1;
  wire gt0_rx_cdrlock_counter0_carry__2_n_2;
  wire gt0_rx_cdrlock_counter0_carry__2_n_3;
  wire gt0_rx_cdrlock_counter0_carry__3_n_0;
  wire gt0_rx_cdrlock_counter0_carry__3_n_1;
  wire gt0_rx_cdrlock_counter0_carry__3_n_2;
  wire gt0_rx_cdrlock_counter0_carry__3_n_3;
  wire gt0_rx_cdrlock_counter0_carry__4_n_0;
  wire gt0_rx_cdrlock_counter0_carry__4_n_1;
  wire gt0_rx_cdrlock_counter0_carry__4_n_2;
  wire gt0_rx_cdrlock_counter0_carry__4_n_3;
  wire gt0_rx_cdrlock_counter0_carry__5_n_0;
  wire gt0_rx_cdrlock_counter0_carry__5_n_1;
  wire gt0_rx_cdrlock_counter0_carry__5_n_2;
  wire gt0_rx_cdrlock_counter0_carry__5_n_3;
  wire gt0_rx_cdrlock_counter0_carry__6_n_2;
  wire gt0_rx_cdrlock_counter0_carry__6_n_3;
  wire gt0_rx_cdrlock_counter0_carry_n_0;
  wire gt0_rx_cdrlock_counter0_carry_n_1;
  wire gt0_rx_cdrlock_counter0_carry_n_2;
  wire gt0_rx_cdrlock_counter0_carry_n_3;
  wire \gt0_rx_cdrlock_counter[31]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_3_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_4_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_5_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_6_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_7_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_8_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_9_n_0 ;
  wire [31:0]gt0_rx_cdrlock_counter_0;
  wire gt0_rx_cdrlocked_i_1_n_0;
  wire gt0_rx_cdrlocked_reg_n_0;
  wire gt0_rxuserrdy_i;
  wire gt0_txuserrdy_i;
  wire [15:0]gtpe2_i;
  wire [1:0]gtpe2_i_0;
  wire [1:0]gtpe2_i_1;
  wire [1:0]gtpe2_i_2;
  wire [1:0]gtpe2_i_3;
  wire gtpe2_i_4;
  wire [1:0]gtpe2_i_5;
  wire [1:0]gtpe2_i_6;
  wire [1:0]gtpe2_i_7;
  wire gtpe2_i_8;
  wire gtwizard_i_n_3;
  wire gtwizard_i_n_5;
  wire independent_clock_bufg;
  wire mmcm_reset;
  wire [0:0]out;
  wire reset_in;
  wire reset_out;
  wire rx_fsm_reset_done_int_reg;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire txn;
  wire txoutclk;
  wire txp;
  wire wtd_rxpcsreset_in;
  wire [3:2]NLW_gt0_rx_cdrlock_counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_gt0_rx_cdrlock_counter0_carry__6_O_UNCONNECTED;

  FDRE gt0_gtrxreset_gt_d1_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_gtrxreset_gt),
        .Q(gt0_gtrxreset_gt_d1),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gt0_rx_cdrlock_counter0_carry
       (.CI(1'b0),
        .CO({gt0_rx_cdrlock_counter0_carry_n_0,gt0_rx_cdrlock_counter0_carry_n_1,gt0_rx_cdrlock_counter0_carry_n_2,gt0_rx_cdrlock_counter0_carry_n_3}),
        .CYINIT(gt0_rx_cdrlock_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(gt0_rx_cdrlock_counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gt0_rx_cdrlock_counter0_carry__0
       (.CI(gt0_rx_cdrlock_counter0_carry_n_0),
        .CO({gt0_rx_cdrlock_counter0_carry__0_n_0,gt0_rx_cdrlock_counter0_carry__0_n_1,gt0_rx_cdrlock_counter0_carry__0_n_2,gt0_rx_cdrlock_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(gt0_rx_cdrlock_counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gt0_rx_cdrlock_counter0_carry__1
       (.CI(gt0_rx_cdrlock_counter0_carry__0_n_0),
        .CO({gt0_rx_cdrlock_counter0_carry__1_n_0,gt0_rx_cdrlock_counter0_carry__1_n_1,gt0_rx_cdrlock_counter0_carry__1_n_2,gt0_rx_cdrlock_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(gt0_rx_cdrlock_counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gt0_rx_cdrlock_counter0_carry__2
       (.CI(gt0_rx_cdrlock_counter0_carry__1_n_0),
        .CO({gt0_rx_cdrlock_counter0_carry__2_n_0,gt0_rx_cdrlock_counter0_carry__2_n_1,gt0_rx_cdrlock_counter0_carry__2_n_2,gt0_rx_cdrlock_counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(gt0_rx_cdrlock_counter[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gt0_rx_cdrlock_counter0_carry__3
       (.CI(gt0_rx_cdrlock_counter0_carry__2_n_0),
        .CO({gt0_rx_cdrlock_counter0_carry__3_n_0,gt0_rx_cdrlock_counter0_carry__3_n_1,gt0_rx_cdrlock_counter0_carry__3_n_2,gt0_rx_cdrlock_counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(gt0_rx_cdrlock_counter[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gt0_rx_cdrlock_counter0_carry__4
       (.CI(gt0_rx_cdrlock_counter0_carry__3_n_0),
        .CO({gt0_rx_cdrlock_counter0_carry__4_n_0,gt0_rx_cdrlock_counter0_carry__4_n_1,gt0_rx_cdrlock_counter0_carry__4_n_2,gt0_rx_cdrlock_counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(gt0_rx_cdrlock_counter[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gt0_rx_cdrlock_counter0_carry__5
       (.CI(gt0_rx_cdrlock_counter0_carry__4_n_0),
        .CO({gt0_rx_cdrlock_counter0_carry__5_n_0,gt0_rx_cdrlock_counter0_carry__5_n_1,gt0_rx_cdrlock_counter0_carry__5_n_2,gt0_rx_cdrlock_counter0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(gt0_rx_cdrlock_counter[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gt0_rx_cdrlock_counter0_carry__6
       (.CI(gt0_rx_cdrlock_counter0_carry__5_n_0),
        .CO({NLW_gt0_rx_cdrlock_counter0_carry__6_CO_UNCONNECTED[3:2],gt0_rx_cdrlock_counter0_carry__6_n_2,gt0_rx_cdrlock_counter0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_gt0_rx_cdrlock_counter0_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,gt0_rx_cdrlock_counter[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \gt0_rx_cdrlock_counter[0]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .O(gt0_rx_cdrlock_counter_0[0]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt0_rx_cdrlock_counter[10]_i_1 
       (.I0(data0[10]),
        .I1(gt0_rx_cdrlock_counter[0]),
        .I2(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt0_rx_cdrlock_counter_0[10]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt0_rx_cdrlock_counter[11]_i_1 
       (.I0(data0[11]),
        .I1(gt0_rx_cdrlock_counter[0]),
        .I2(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt0_rx_cdrlock_counter_0[11]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt0_rx_cdrlock_counter[12]_i_1 
       (.I0(data0[12]),
        .I1(gt0_rx_cdrlock_counter[0]),
        .I2(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt0_rx_cdrlock_counter_0[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[13]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[13]),
        .O(gt0_rx_cdrlock_counter_0[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[14]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[14]),
        .O(gt0_rx_cdrlock_counter_0[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[15]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[15]),
        .O(gt0_rx_cdrlock_counter_0[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[16]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[16]),
        .O(gt0_rx_cdrlock_counter_0[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[17]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[17]),
        .O(gt0_rx_cdrlock_counter_0[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[18]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[18]),
        .O(gt0_rx_cdrlock_counter_0[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[19]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[19]),
        .O(gt0_rx_cdrlock_counter_0[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[1]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[1]),
        .O(gt0_rx_cdrlock_counter_0[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[20]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[20]),
        .O(gt0_rx_cdrlock_counter_0[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[21]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[21]),
        .O(gt0_rx_cdrlock_counter_0[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[22]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[22]),
        .O(gt0_rx_cdrlock_counter_0[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[23]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[23]),
        .O(gt0_rx_cdrlock_counter_0[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[24]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[24]),
        .O(gt0_rx_cdrlock_counter_0[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[25]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[25]),
        .O(gt0_rx_cdrlock_counter_0[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[26]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[26]),
        .O(gt0_rx_cdrlock_counter_0[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[27]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[27]),
        .O(gt0_rx_cdrlock_counter_0[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[28]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[28]),
        .O(gt0_rx_cdrlock_counter_0[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[29]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[29]),
        .O(gt0_rx_cdrlock_counter_0[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[2]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[2]),
        .O(gt0_rx_cdrlock_counter_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[30]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[30]),
        .O(gt0_rx_cdrlock_counter_0[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[31]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[31]),
        .O(gt0_rx_cdrlock_counter_0[31]));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \gt0_rx_cdrlock_counter[31]_i_2 
       (.I0(gt0_rx_cdrlock_counter[13]),
        .I1(gt0_rx_cdrlock_counter[12]),
        .I2(gt0_rx_cdrlock_counter[10]),
        .I3(gt0_rx_cdrlock_counter[11]),
        .I4(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gt0_rx_cdrlock_counter[31]_i_3 
       (.I0(gt0_rx_cdrlock_counter[4]),
        .I1(gt0_rx_cdrlock_counter[5]),
        .I2(gt0_rx_cdrlock_counter[2]),
        .I3(gt0_rx_cdrlock_counter[3]),
        .I4(\gt0_rx_cdrlock_counter[31]_i_6_n_0 ),
        .O(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gt0_rx_cdrlock_counter[31]_i_4 
       (.I0(\gt0_rx_cdrlock_counter[31]_i_7_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_8_n_0 ),
        .I2(gt0_rx_cdrlock_counter[31]),
        .I3(gt0_rx_cdrlock_counter[30]),
        .I4(gt0_rx_cdrlock_counter[1]),
        .I5(\gt0_rx_cdrlock_counter[31]_i_9_n_0 ),
        .O(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt0_rx_cdrlock_counter[31]_i_5 
       (.I0(gt0_rx_cdrlock_counter[15]),
        .I1(gt0_rx_cdrlock_counter[14]),
        .I2(gt0_rx_cdrlock_counter[17]),
        .I3(gt0_rx_cdrlock_counter[16]),
        .O(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \gt0_rx_cdrlock_counter[31]_i_6 
       (.I0(gt0_rx_cdrlock_counter[6]),
        .I1(gt0_rx_cdrlock_counter[7]),
        .I2(gt0_rx_cdrlock_counter[9]),
        .I3(gt0_rx_cdrlock_counter[8]),
        .O(\gt0_rx_cdrlock_counter[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt0_rx_cdrlock_counter[31]_i_7 
       (.I0(gt0_rx_cdrlock_counter[23]),
        .I1(gt0_rx_cdrlock_counter[22]),
        .I2(gt0_rx_cdrlock_counter[25]),
        .I3(gt0_rx_cdrlock_counter[24]),
        .O(\gt0_rx_cdrlock_counter[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt0_rx_cdrlock_counter[31]_i_8 
       (.I0(gt0_rx_cdrlock_counter[19]),
        .I1(gt0_rx_cdrlock_counter[18]),
        .I2(gt0_rx_cdrlock_counter[21]),
        .I3(gt0_rx_cdrlock_counter[20]),
        .O(\gt0_rx_cdrlock_counter[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt0_rx_cdrlock_counter[31]_i_9 
       (.I0(gt0_rx_cdrlock_counter[27]),
        .I1(gt0_rx_cdrlock_counter[26]),
        .I2(gt0_rx_cdrlock_counter[29]),
        .I3(gt0_rx_cdrlock_counter[28]),
        .O(\gt0_rx_cdrlock_counter[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[3]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[3]),
        .O(gt0_rx_cdrlock_counter_0[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[4]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[4]),
        .O(gt0_rx_cdrlock_counter_0[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[5]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[5]),
        .O(gt0_rx_cdrlock_counter_0[5]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt0_rx_cdrlock_counter[6]_i_1 
       (.I0(data0[6]),
        .I1(gt0_rx_cdrlock_counter[0]),
        .I2(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt0_rx_cdrlock_counter_0[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[7]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[7]),
        .O(gt0_rx_cdrlock_counter_0[7]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt0_rx_cdrlock_counter[8]_i_1 
       (.I0(data0[8]),
        .I1(gt0_rx_cdrlock_counter[0]),
        .I2(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt0_rx_cdrlock_counter_0[8]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt0_rx_cdrlock_counter[9]_i_1 
       (.I0(data0[9]),
        .I1(gt0_rx_cdrlock_counter[0]),
        .I2(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt0_rx_cdrlock_counter_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[0] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[0]),
        .Q(gt0_rx_cdrlock_counter[0]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[10] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[10]),
        .Q(gt0_rx_cdrlock_counter[10]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[11] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[11]),
        .Q(gt0_rx_cdrlock_counter[11]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[12] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[12]),
        .Q(gt0_rx_cdrlock_counter[12]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[13] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[13]),
        .Q(gt0_rx_cdrlock_counter[13]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[14] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[14]),
        .Q(gt0_rx_cdrlock_counter[14]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[15] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[15]),
        .Q(gt0_rx_cdrlock_counter[15]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[16] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[16]),
        .Q(gt0_rx_cdrlock_counter[16]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[17] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[17]),
        .Q(gt0_rx_cdrlock_counter[17]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[18] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[18]),
        .Q(gt0_rx_cdrlock_counter[18]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[19] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[19]),
        .Q(gt0_rx_cdrlock_counter[19]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[1] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[1]),
        .Q(gt0_rx_cdrlock_counter[1]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[20] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[20]),
        .Q(gt0_rx_cdrlock_counter[20]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[21] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[21]),
        .Q(gt0_rx_cdrlock_counter[21]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[22] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[22]),
        .Q(gt0_rx_cdrlock_counter[22]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[23] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[23]),
        .Q(gt0_rx_cdrlock_counter[23]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[24] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[24]),
        .Q(gt0_rx_cdrlock_counter[24]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[25] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[25]),
        .Q(gt0_rx_cdrlock_counter[25]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[26] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[26]),
        .Q(gt0_rx_cdrlock_counter[26]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[27] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[27]),
        .Q(gt0_rx_cdrlock_counter[27]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[28] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[28]),
        .Q(gt0_rx_cdrlock_counter[28]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[29] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[29]),
        .Q(gt0_rx_cdrlock_counter[29]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[2] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[2]),
        .Q(gt0_rx_cdrlock_counter[2]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[30] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[30]),
        .Q(gt0_rx_cdrlock_counter[30]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[31] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[31]),
        .Q(gt0_rx_cdrlock_counter[31]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[3] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[3]),
        .Q(gt0_rx_cdrlock_counter[3]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[4] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[4]),
        .Q(gt0_rx_cdrlock_counter[4]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[5] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[5]),
        .Q(gt0_rx_cdrlock_counter[5]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[6] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[6]),
        .Q(gt0_rx_cdrlock_counter[6]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[7] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[7]),
        .Q(gt0_rx_cdrlock_counter[7]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[8] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[8]),
        .Q(gt0_rx_cdrlock_counter[8]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[9] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[9]),
        .Q(gt0_rx_cdrlock_counter[9]),
        .R(gt0_gtrxreset_gt_d1));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    gt0_rx_cdrlocked_i_1
       (.I0(gt0_rx_cdrlocked_reg_n_0),
        .I1(gt0_rx_cdrlock_counter[0]),
        .I2(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt0_rx_cdrlocked_i_1_n_0));
  FDRE gt0_rx_cdrlocked_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlocked_i_1_n_0),
        .Q(gt0_rx_cdrlocked_reg_n_0),
        .R(gt0_gtrxreset_gt_d1));
  gig_ethernet_pcs_pma_RX_STARTUP_FSM gt0_rxresetfsm_i
       (.data_in(rx_fsm_reset_done_int_reg),
        .data_out(data_out),
        .data_sync_reg1(gtwizard_i_n_3),
        .data_sync_reg1_0(data_sync_reg1),
        .data_sync_reg6(gtpe2_i_4),
        .gt0_gtrxreset_gt(gt0_gtrxreset_gt),
        .gt0_gtrxreset_gt_d1_reg(gt0_gtrxreset_gt_d1_reg_0),
        .gt0_pll0lock_out(gt0_pll0lock_out),
        .gt0_rxuserrdy_i(gt0_rxuserrdy_i),
        .independent_clock_bufg(independent_clock_bufg),
        .out(out),
        .reset_time_out_reg_0(gt0_rx_cdrlocked_reg_n_0));
  gig_ethernet_pcs_pma_TX_STARTUP_FSM gt0_txresetfsm_i
       (.PLL0_RESET_reg_0(reset_in),
        .data_in(data_in),
        .data_sync_reg1(gtpe2_i_4),
        .data_sync_reg1_0(gtwizard_i_n_5),
        .data_sync_reg1_1(data_sync_reg1),
        .gt0_gttxreset_gt(gt0_gttxreset_gt),
        .gt0_pll0lock_out(gt0_pll0lock_out),
        .gt0_pll0refclklost_out(gt0_pll0refclklost_out),
        .gt0_txuserrdy_i(gt0_txuserrdy_i),
        .gtpe2_i(gtpe2_i_8),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_reset(mmcm_reset),
        .out(out));
  gig_ethernet_pcs_pma_GTWIZARD_multi_gt gtwizard_i
       (.CLK(CLK),
        .D(D),
        .Q(Q),
        .RXBUFSTATUS(RXBUFSTATUS),
        .RXPD(RXPD),
        .SR(gt0_gtrxreset_gt_d1),
        .TXBUFSTATUS(TXBUFSTATUS),
        .TXPD(TXPD),
        .gt0_gttxreset_gt(gt0_gttxreset_gt),
        .gt0_pll0outclk_out(gt0_pll0outclk_out),
        .gt0_pll0outrefclk_out(gt0_pll0outrefclk_out),
        .gt0_pll1outclk_out(gt0_pll1outclk_out),
        .gt0_pll1outrefclk_out(gt0_pll1outrefclk_out),
        .gt0_rxuserrdy_i(gt0_rxuserrdy_i),
        .gt0_txuserrdy_i(gt0_txuserrdy_i),
        .gtpe2_i(gtwizard_i_n_3),
        .gtpe2_i_0(gtwizard_i_n_5),
        .gtpe2_i_1(gtpe2_i),
        .gtpe2_i_2(gtpe2_i_0),
        .gtpe2_i_3(gtpe2_i_1),
        .gtpe2_i_4(gtpe2_i_2),
        .gtpe2_i_5(gtpe2_i_3),
        .gtpe2_i_6(gtpe2_i_4),
        .gtpe2_i_7(gtpe2_i_5),
        .gtpe2_i_8(gtpe2_i_6),
        .gtpe2_i_9(gtpe2_i_7),
        .reset_out(reset_out),
        .reset_sync5(reset_in),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .wtd_rxpcsreset_in(wtd_rxpcsreset_in));
endmodule

module gig_ethernet_pcs_pma_GTWIZARD_multi_gt
   (txn,
    txp,
    rxoutclk,
    gtpe2_i,
    txoutclk,
    gtpe2_i_0,
    D,
    TXBUFSTATUS,
    RXBUFSTATUS,
    gtpe2_i_1,
    gtpe2_i_2,
    gtpe2_i_3,
    gtpe2_i_4,
    gtpe2_i_5,
    CLK,
    rxn,
    rxp,
    gt0_gttxreset_gt,
    gt0_pll0outclk_out,
    gt0_pll0outrefclk_out,
    gt0_pll1outclk_out,
    gt0_pll1outrefclk_out,
    reset_out,
    wtd_rxpcsreset_in,
    gt0_rxuserrdy_i,
    gtpe2_i_6,
    TXPD,
    gt0_txuserrdy_i,
    RXPD,
    Q,
    gtpe2_i_7,
    gtpe2_i_8,
    gtpe2_i_9,
    SR,
    reset_sync5);
  output txn;
  output txp;
  output rxoutclk;
  output gtpe2_i;
  output txoutclk;
  output gtpe2_i_0;
  output [1:0]D;
  output [0:0]TXBUFSTATUS;
  output [0:0]RXBUFSTATUS;
  output [15:0]gtpe2_i_1;
  output [1:0]gtpe2_i_2;
  output [1:0]gtpe2_i_3;
  output [1:0]gtpe2_i_4;
  output [1:0]gtpe2_i_5;
  input CLK;
  input rxn;
  input rxp;
  input gt0_gttxreset_gt;
  input gt0_pll0outclk_out;
  input gt0_pll0outrefclk_out;
  input gt0_pll1outclk_out;
  input gt0_pll1outrefclk_out;
  input reset_out;
  input wtd_rxpcsreset_in;
  input gt0_rxuserrdy_i;
  input gtpe2_i_6;
  input [0:0]TXPD;
  input gt0_txuserrdy_i;
  input [0:0]RXPD;
  input [15:0]Q;
  input [1:0]gtpe2_i_7;
  input [1:0]gtpe2_i_8;
  input [1:0]gtpe2_i_9;
  input [0:0]SR;
  input reset_sync5;

  wire CLK;
  wire [1:0]D;
  wire [15:0]Q;
  wire [0:0]RXBUFSTATUS;
  wire [0:0]RXPD;
  wire [0:0]SR;
  wire [0:0]TXBUFSTATUS;
  wire [0:0]TXPD;
  wire gt0_gttxreset_gt;
  wire gt0_pll0outclk_out;
  wire gt0_pll0outrefclk_out;
  wire gt0_pll1outclk_out;
  wire gt0_pll1outrefclk_out;
  wire gt0_rxuserrdy_i;
  wire gt0_txuserrdy_i;
  wire gtpe2_i;
  wire gtpe2_i_0;
  wire [15:0]gtpe2_i_1;
  wire [1:0]gtpe2_i_2;
  wire [1:0]gtpe2_i_3;
  wire [1:0]gtpe2_i_4;
  wire [1:0]gtpe2_i_5;
  wire gtpe2_i_6;
  wire [1:0]gtpe2_i_7;
  wire [1:0]gtpe2_i_8;
  wire [1:0]gtpe2_i_9;
  wire reset_out;
  wire reset_sync5;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire txn;
  wire txoutclk;
  wire txp;
  wire wtd_rxpcsreset_in;

  gig_ethernet_pcs_pma_GTWIZARD_GT gt0_GTWIZARD_i
       (.CLK(CLK),
        .D(D),
        .Q(Q),
        .RXBUFSTATUS(RXBUFSTATUS),
        .RXPD(RXPD),
        .SR(SR),
        .TXBUFSTATUS(TXBUFSTATUS),
        .TXPD(TXPD),
        .gt0_gttxreset_gt(gt0_gttxreset_gt),
        .gt0_pll0outclk_out(gt0_pll0outclk_out),
        .gt0_pll0outrefclk_out(gt0_pll0outrefclk_out),
        .gt0_pll1outclk_out(gt0_pll1outclk_out),
        .gt0_pll1outrefclk_out(gt0_pll1outrefclk_out),
        .gt0_rxuserrdy_i(gt0_rxuserrdy_i),
        .gt0_txuserrdy_i(gt0_txuserrdy_i),
        .gtpe2_i_0(gtpe2_i),
        .gtpe2_i_1(gtpe2_i_0),
        .gtpe2_i_10(gtpe2_i_9),
        .gtpe2_i_2(gtpe2_i_1),
        .gtpe2_i_3(gtpe2_i_2),
        .gtpe2_i_4(gtpe2_i_3),
        .gtpe2_i_5(gtpe2_i_4),
        .gtpe2_i_6(gtpe2_i_5),
        .gtpe2_i_7(gtpe2_i_6),
        .gtpe2_i_8(gtpe2_i_7),
        .gtpe2_i_9(gtpe2_i_8),
        .reset_out(reset_out),
        .reset_sync5(reset_sync5),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .wtd_rxpcsreset_in(wtd_rxpcsreset_in));
endmodule

module gig_ethernet_pcs_pma_RX_STARTUP_FSM
   (data_in,
    gt0_rxuserrdy_i,
    gt0_gtrxreset_gt,
    independent_clock_bufg,
    data_sync_reg6,
    out,
    gt0_gtrxreset_gt_d1_reg,
    reset_time_out_reg_0,
    data_sync_reg1,
    data_sync_reg1_0,
    data_out,
    gt0_pll0lock_out);
  output data_in;
  output gt0_rxuserrdy_i;
  output gt0_gtrxreset_gt;
  input independent_clock_bufg;
  input data_sync_reg6;
  input [0:0]out;
  input gt0_gtrxreset_gt_d1_reg;
  input reset_time_out_reg_0;
  input data_sync_reg1;
  input data_sync_reg1_0;
  input data_out;
  input gt0_pll0lock_out;

  wire \FSM_sequential_rx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[1]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_1_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_10_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_4_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_6_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_8_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_9_n_0 ;
  wire RXUSERRDY_i_1_n_0;
  wire check_tlock_max;
  wire check_tlock_max_i_1_n_0;
  wire check_tlock_max_reg_n_0;
  wire data_in;
  wire data_out;
  wire data_sync_reg1;
  wire data_sync_reg1_0;
  wire data_sync_reg6;
  wire data_valid_sync;
  wire gt0_gtrxreset_gt;
  wire gt0_gtrxreset_gt_d1_reg;
  wire gt0_gtrxreset_t;
  wire gt0_pll0lock_out;
  wire gt0_rxuserrdy_i;
  wire gtrxreset_i_i_1_n_0;
  wire independent_clock_bufg;
  wire init_wait_count;
  wire \init_wait_count[0]_i_1__0_n_0 ;
  wire \init_wait_count[7]_i_3__1_n_0 ;
  wire \init_wait_count[7]_i_4__0_n_0 ;
  wire [7:0]init_wait_count_reg;
  wire init_wait_done_i_1__0_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[7]_i_2__0_n_0 ;
  wire [7:0]mmcm_lock_count_reg;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_i_1_n_0;
  wire mmcm_lock_reclocked_i_2__0_n_0;
  wire [0:0]out;
  wire [7:1]p_0_in__3;
  wire [7:0]p_0_in__4;
  wire reset_time_out_i_2__0_n_0;
  wire reset_time_out_i_4_n_0;
  wire reset_time_out_i_6_n_0;
  wire reset_time_out_reg_0;
  wire reset_time_out_reg_n_0;
  wire run_phase_alignment_int_i_1__0_n_0;
  wire run_phase_alignment_int_reg_n_0;
  wire run_phase_alignment_int_s2;
  wire run_phase_alignment_int_s3_reg_n_0;
  wire rx_fsm_reset_done_int_s2;
  wire rx_fsm_reset_done_int_s3;
  wire [3:0]rx_state;
  wire [3:0]rx_state__0;
  wire rxresetdone_s2;
  wire rxresetdone_s3;
  wire sync_data_valid_n_0;
  wire sync_data_valid_n_5;
  wire sync_mmcm_lock_reclocked_n_0;
  wire sync_pll0lock_n_0;
  wire sync_pll0lock_n_1;
  wire time_out_100us_i_1_n_0;
  wire time_out_100us_i_2_n_0;
  wire time_out_100us_i_3_n_0;
  wire time_out_100us_i_4_n_0;
  wire time_out_100us_i_5_n_0;
  wire time_out_100us_reg_n_0;
  wire time_out_1us_i_1_n_0;
  wire time_out_1us_i_2_n_0;
  wire time_out_1us_i_3_n_0;
  wire time_out_1us_reg_n_0;
  wire time_out_2ms_i_1_n_0;
  wire time_out_2ms_i_2_n_0;
  wire time_out_2ms_i_3_n_0;
  wire time_out_2ms_i_4_n_0;
  wire time_out_2ms_i_5_n_0;
  wire time_out_2ms_i_6_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_3__0_n_0 ;
  wire \time_out_counter[0]_i_4_n_0 ;
  wire [19:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2__0_n_0 ;
  wire \time_out_counter_reg[0]_i_2__0_n_1 ;
  wire \time_out_counter_reg[0]_i_2__0_n_2 ;
  wire \time_out_counter_reg[0]_i_2__0_n_3 ;
  wire \time_out_counter_reg[0]_i_2__0_n_4 ;
  wire \time_out_counter_reg[0]_i_2__0_n_5 ;
  wire \time_out_counter_reg[0]_i_2__0_n_6 ;
  wire \time_out_counter_reg[0]_i_2__0_n_7 ;
  wire \time_out_counter_reg[12]_i_1__0_n_0 ;
  wire \time_out_counter_reg[12]_i_1__0_n_1 ;
  wire \time_out_counter_reg[12]_i_1__0_n_2 ;
  wire \time_out_counter_reg[12]_i_1__0_n_3 ;
  wire \time_out_counter_reg[12]_i_1__0_n_4 ;
  wire \time_out_counter_reg[12]_i_1__0_n_5 ;
  wire \time_out_counter_reg[12]_i_1__0_n_6 ;
  wire \time_out_counter_reg[12]_i_1__0_n_7 ;
  wire \time_out_counter_reg[16]_i_1__0_n_1 ;
  wire \time_out_counter_reg[16]_i_1__0_n_2 ;
  wire \time_out_counter_reg[16]_i_1__0_n_3 ;
  wire \time_out_counter_reg[16]_i_1__0_n_4 ;
  wire \time_out_counter_reg[16]_i_1__0_n_5 ;
  wire \time_out_counter_reg[16]_i_1__0_n_6 ;
  wire \time_out_counter_reg[16]_i_1__0_n_7 ;
  wire \time_out_counter_reg[4]_i_1__0_n_0 ;
  wire \time_out_counter_reg[4]_i_1__0_n_1 ;
  wire \time_out_counter_reg[4]_i_1__0_n_2 ;
  wire \time_out_counter_reg[4]_i_1__0_n_3 ;
  wire \time_out_counter_reg[4]_i_1__0_n_4 ;
  wire \time_out_counter_reg[4]_i_1__0_n_5 ;
  wire \time_out_counter_reg[4]_i_1__0_n_6 ;
  wire \time_out_counter_reg[4]_i_1__0_n_7 ;
  wire \time_out_counter_reg[8]_i_1__0_n_0 ;
  wire \time_out_counter_reg[8]_i_1__0_n_1 ;
  wire \time_out_counter_reg[8]_i_1__0_n_2 ;
  wire \time_out_counter_reg[8]_i_1__0_n_3 ;
  wire \time_out_counter_reg[8]_i_1__0_n_4 ;
  wire \time_out_counter_reg[8]_i_1__0_n_5 ;
  wire \time_out_counter_reg[8]_i_1__0_n_6 ;
  wire \time_out_counter_reg[8]_i_1__0_n_7 ;
  wire time_out_wait_bypass_i_1_n_0;
  wire time_out_wait_bypass_i_2__0_n_0;
  wire time_out_wait_bypass_i_3__0_n_0;
  wire time_out_wait_bypass_i_4__0_n_0;
  wire time_out_wait_bypass_reg_n_0;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max;
  wire time_tlock_max_i_1_n_0;
  wire time_tlock_max_i_2_n_0;
  wire time_tlock_max_i_3_n_0;
  wire time_tlock_max_i_4_n_0;
  wire time_tlock_max_i_5_n_0;
  wire \wait_bypass_count[0]_i_1__0_n_0 ;
  wire \wait_bypass_count[0]_i_2__0_n_0 ;
  wire \wait_bypass_count[0]_i_4_n_0 ;
  wire [12:0]wait_bypass_count_reg;
  wire \wait_bypass_count_reg[0]_i_3__0_n_0 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_1 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_2 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_3 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_4 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_5 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_6 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_7 ;
  wire \wait_bypass_count_reg[12]_i_1__0_n_7 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_0 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_1 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_2 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_3 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_4 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_5 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_6 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_7 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_0 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_1 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_2 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_3 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_4 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_5 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_6 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_7 ;
  wire \wait_time_cnt[0]_i_10__0_n_0 ;
  wire \wait_time_cnt[0]_i_11__0_n_0 ;
  wire \wait_time_cnt[0]_i_1_n_0 ;
  wire \wait_time_cnt[0]_i_2__0_n_0 ;
  wire \wait_time_cnt[0]_i_4__0_n_0 ;
  wire \wait_time_cnt[0]_i_5__0_n_0 ;
  wire \wait_time_cnt[0]_i_6__0_n_0 ;
  wire \wait_time_cnt[0]_i_7__0_n_0 ;
  wire \wait_time_cnt[0]_i_8__0_n_0 ;
  wire \wait_time_cnt[0]_i_9__0_n_0 ;
  wire \wait_time_cnt[12]_i_2__0_n_0 ;
  wire \wait_time_cnt[12]_i_3__0_n_0 ;
  wire \wait_time_cnt[12]_i_4__0_n_0 ;
  wire \wait_time_cnt[12]_i_5__0_n_0 ;
  wire \wait_time_cnt[4]_i_2__0_n_0 ;
  wire \wait_time_cnt[4]_i_3__0_n_0 ;
  wire \wait_time_cnt[4]_i_4__0_n_0 ;
  wire \wait_time_cnt[4]_i_5__0_n_0 ;
  wire \wait_time_cnt[8]_i_2__0_n_0 ;
  wire \wait_time_cnt[8]_i_3__0_n_0 ;
  wire \wait_time_cnt[8]_i_4__0_n_0 ;
  wire \wait_time_cnt[8]_i_5__0_n_0 ;
  wire [15:0]wait_time_cnt_reg;
  wire \wait_time_cnt_reg[0]_i_3__0_n_0 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_1 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_2 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_3 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_4 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_5 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_6 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_7 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_1 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_2 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_3 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_4 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_5 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_6 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_7 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_0 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_1 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_2 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_3 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_4 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_5 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_6 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_7 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_0 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_1 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_2 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_3 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_4 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_5 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_6 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_7 ;
  wire [3:3]\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED ;
  wire [3:3]\NLW_wait_time_cnt_reg[12]_i_1__0_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFF8000AF00)) 
    \FSM_sequential_rx_state[0]_i_2 
       (.I0(rx_state[1]),
        .I1(reset_time_out_reg_n_0),
        .I2(rx_state[2]),
        .I3(rx_state[0]),
        .I4(time_out_2ms_reg_n_0),
        .I5(rx_state[3]),
        .O(\FSM_sequential_rx_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555FFFF7555)) 
    \FSM_sequential_rx_state[1]_i_2 
       (.I0(rx_state[0]),
        .I1(reset_time_out_reg_n_0),
        .I2(time_tlock_max),
        .I3(rx_state[2]),
        .I4(rx_state[1]),
        .I5(rx_state[3]),
        .O(\FSM_sequential_rx_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000100005551555)) 
    \FSM_sequential_rx_state[2]_i_1 
       (.I0(rx_state[3]),
        .I1(rx_state[2]),
        .I2(rx_state[1]),
        .I3(rx_state[0]),
        .I4(time_out_2ms_reg_n_0),
        .I5(\FSM_sequential_rx_state[2]_i_2_n_0 ),
        .O(\FSM_sequential_rx_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2727FF2727272727)) 
    \FSM_sequential_rx_state[2]_i_2 
       (.I0(rx_state[3]),
        .I1(rx_state[1]),
        .I2(rx_state[2]),
        .I3(rx_state[0]),
        .I4(reset_time_out_reg_n_0),
        .I5(time_tlock_max),
        .O(\FSM_sequential_rx_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \FSM_sequential_rx_state[3]_i_10 
       (.I0(rx_state[3]),
        .I1(rx_state[1]),
        .I2(rx_state[2]),
        .I3(rx_state[0]),
        .I4(init_wait_done_reg_n_0),
        .O(\FSM_sequential_rx_state[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000151)) 
    \FSM_sequential_rx_state[3]_i_4 
       (.I0(rx_state[1]),
        .I1(reset_time_out_reg_0),
        .I2(rx_state[0]),
        .I3(mmcm_lock_reclocked),
        .I4(\FSM_sequential_rx_state[2]_i_2_n_0 ),
        .I5(\FSM_sequential_rx_state[3]_i_10_n_0 ),
        .O(\FSM_sequential_rx_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEFFFFAEFFFFFF)) 
    \FSM_sequential_rx_state[3]_i_6 
       (.I0(rxresetdone_s3),
        .I1(time_out_2ms_reg_n_0),
        .I2(reset_time_out_reg_n_0),
        .I3(rx_state[2]),
        .I4(rx_state[1]),
        .I5(rx_state[3]),
        .O(\FSM_sequential_rx_state[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \FSM_sequential_rx_state[3]_i_8 
       (.I0(rx_state[2]),
        .I1(rx_state[1]),
        .I2(rx_state[3]),
        .O(\FSM_sequential_rx_state[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hDDD0000000000000)) 
    \FSM_sequential_rx_state[3]_i_9 
       (.I0(time_out_2ms_reg_n_0),
        .I1(reset_time_out_reg_n_0),
        .I2(rx_state[2]),
        .I3(rx_state[3]),
        .I4(rx_state[0]),
        .I5(rx_state[1]),
        .O(\FSM_sequential_rx_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[0] 
       (.C(independent_clock_bufg),
        .CE(sync_data_valid_n_0),
        .D(rx_state__0[0]),
        .Q(rx_state[0]),
        .R(out));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[1] 
       (.C(independent_clock_bufg),
        .CE(sync_data_valid_n_0),
        .D(rx_state__0[1]),
        .Q(rx_state[1]),
        .R(out));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[2] 
       (.C(independent_clock_bufg),
        .CE(sync_data_valid_n_0),
        .D(\FSM_sequential_rx_state[2]_i_1_n_0 ),
        .Q(rx_state[2]),
        .R(out));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[3] 
       (.C(independent_clock_bufg),
        .CE(sync_data_valid_n_0),
        .D(rx_state__0[3]),
        .Q(rx_state[3]),
        .R(out));
  LUT5 #(
    .INIT(32'hFFFB4000)) 
    RXUSERRDY_i_1
       (.I0(rx_state[3]),
        .I1(rx_state[0]),
        .I2(rx_state[2]),
        .I3(rx_state[1]),
        .I4(gt0_rxuserrdy_i),
        .O(RXUSERRDY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    RXUSERRDY_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(RXUSERRDY_i_1_n_0),
        .Q(gt0_rxuserrdy_i),
        .R(out));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    check_tlock_max_i_1
       (.I0(rx_state[2]),
        .I1(rx_state[3]),
        .I2(rx_state[0]),
        .I3(rx_state[1]),
        .I4(check_tlock_max_reg_n_0),
        .O(check_tlock_max_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    check_tlock_max_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(check_tlock_max_i_1_n_0),
        .Q(check_tlock_max_reg_n_0),
        .R(out));
  LUT3 #(
    .INIT(8'hEA)) 
    gt0_gtrxreset_gt_d1_i_1
       (.I0(gt0_gtrxreset_t),
        .I1(data_in),
        .I2(gt0_gtrxreset_gt_d1_reg),
        .O(gt0_gtrxreset_gt));
  LUT5 #(
    .INIT(32'hFFFD0004)) 
    gtrxreset_i_i_1
       (.I0(rx_state[2]),
        .I1(rx_state[0]),
        .I2(rx_state[3]),
        .I3(rx_state[1]),
        .I4(gt0_gtrxreset_t),
        .O(gtrxreset_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gtrxreset_i_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gtrxreset_i_i_1_n_0),
        .Q(gt0_gtrxreset_t),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1__0 
       (.I0(init_wait_count_reg[0]),
        .O(\init_wait_count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1__0 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \init_wait_count[2]_i_1__0 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[1]),
        .O(p_0_in__3[2]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \init_wait_count[3]_i_1__0 
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[2]),
        .O(p_0_in__3[3]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[4]_i_1__0 
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[2]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[1]),
        .I4(init_wait_count_reg[3]),
        .O(p_0_in__3[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \init_wait_count[5]_i_1__0 
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[2]),
        .I4(init_wait_count_reg[4]),
        .I5(init_wait_count_reg[5]),
        .O(p_0_in__3[5]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[6]_i_1__0 
       (.I0(init_wait_count_reg[6]),
        .I1(\init_wait_count[7]_i_4__0_n_0 ),
        .O(p_0_in__3[6]));
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \init_wait_count[7]_i_1__1 
       (.I0(\init_wait_count[7]_i_3__1_n_0 ),
        .I1(init_wait_count_reg[7]),
        .I2(init_wait_count_reg[4]),
        .I3(init_wait_count_reg[6]),
        .I4(init_wait_count_reg[1]),
        .O(init_wait_count));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \init_wait_count[7]_i_2__0 
       (.I0(init_wait_count_reg[7]),
        .I1(\init_wait_count[7]_i_4__0_n_0 ),
        .I2(init_wait_count_reg[6]),
        .O(p_0_in__3[7]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \init_wait_count[7]_i_3__1 
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[2]),
        .I2(init_wait_count_reg[5]),
        .I3(init_wait_count_reg[0]),
        .O(\init_wait_count[7]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \init_wait_count[7]_i_4__0 
       (.I0(init_wait_count_reg[5]),
        .I1(init_wait_count_reg[4]),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[0]),
        .I4(init_wait_count_reg[1]),
        .I5(init_wait_count_reg[3]),
        .O(\init_wait_count[7]_i_4__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(out),
        .D(\init_wait_count[0]_i_1__0_n_0 ),
        .Q(init_wait_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(out),
        .D(p_0_in__3[1]),
        .Q(init_wait_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(out),
        .D(p_0_in__3[2]),
        .Q(init_wait_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(out),
        .D(p_0_in__3[3]),
        .Q(init_wait_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(out),
        .D(p_0_in__3[4]),
        .Q(init_wait_count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(out),
        .D(p_0_in__3[5]),
        .Q(init_wait_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(out),
        .D(p_0_in__3[6]),
        .Q(init_wait_count_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(out),
        .D(p_0_in__3[7]),
        .Q(init_wait_count_reg[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFF01000000)) 
    init_wait_done_i_1__0
       (.I0(\init_wait_count[7]_i_3__1_n_0 ),
        .I1(init_wait_count_reg[7]),
        .I2(init_wait_count_reg[4]),
        .I3(init_wait_count_reg[6]),
        .I4(init_wait_count_reg[1]),
        .I5(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .CLR(out),
        .D(init_wait_done_i_1__0_n_0),
        .Q(init_wait_done_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1__0 
       (.I0(mmcm_lock_count_reg[0]),
        .O(p_0_in__4[0]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1__0 
       (.I0(mmcm_lock_count_reg[1]),
        .I1(mmcm_lock_count_reg[0]),
        .O(p_0_in__4[1]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \mmcm_lock_count[2]_i_1__0 
       (.I0(mmcm_lock_count_reg[2]),
        .I1(mmcm_lock_count_reg[1]),
        .I2(mmcm_lock_count_reg[0]),
        .O(p_0_in__4[2]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \mmcm_lock_count[3]_i_1__0 
       (.I0(mmcm_lock_count_reg[3]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[1]),
        .I3(mmcm_lock_count_reg[2]),
        .O(p_0_in__4[3]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[4]_i_1__0 
       (.I0(mmcm_lock_count_reg[4]),
        .I1(mmcm_lock_count_reg[2]),
        .I2(mmcm_lock_count_reg[1]),
        .I3(mmcm_lock_count_reg[0]),
        .I4(mmcm_lock_count_reg[3]),
        .O(p_0_in__4[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \mmcm_lock_count[5]_i_1__0 
       (.I0(mmcm_lock_count_reg[3]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[1]),
        .I3(mmcm_lock_count_reg[2]),
        .I4(mmcm_lock_count_reg[4]),
        .I5(mmcm_lock_count_reg[5]),
        .O(p_0_in__4[5]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[6]_i_1__0 
       (.I0(mmcm_lock_count_reg[6]),
        .I1(mmcm_lock_reclocked_i_2__0_n_0),
        .O(p_0_in__4[6]));
  LUT3 #(
    .INIT(8'h7F)) 
    \mmcm_lock_count[7]_i_2__0 
       (.I0(mmcm_lock_count_reg[6]),
        .I1(mmcm_lock_reclocked_i_2__0_n_0),
        .I2(mmcm_lock_count_reg[7]),
        .O(\mmcm_lock_count[7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \mmcm_lock_count[7]_i_3__0 
       (.I0(mmcm_lock_count_reg[7]),
        .I1(mmcm_lock_reclocked_i_2__0_n_0),
        .I2(mmcm_lock_count_reg[6]),
        .O(p_0_in__4[7]));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__4[0]),
        .Q(mmcm_lock_count_reg[0]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__4[1]),
        .Q(mmcm_lock_count_reg[1]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__4[2]),
        .Q(mmcm_lock_count_reg[2]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__4[3]),
        .Q(mmcm_lock_count_reg[3]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__4[4]),
        .Q(mmcm_lock_count_reg[4]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__4[5]),
        .Q(mmcm_lock_count_reg[5]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__4[6]),
        .Q(mmcm_lock_count_reg[6]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__4[7]),
        .Q(mmcm_lock_count_reg[7]),
        .R(sync_mmcm_lock_reclocked_n_0));
  LUT5 #(
    .INIT(32'hEAAA0000)) 
    mmcm_lock_reclocked_i_1
       (.I0(mmcm_lock_reclocked),
        .I1(mmcm_lock_count_reg[7]),
        .I2(mmcm_lock_reclocked_i_2__0_n_0),
        .I3(mmcm_lock_count_reg[6]),
        .I4(mmcm_lock_i),
        .O(mmcm_lock_reclocked_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mmcm_lock_reclocked_i_2__0
       (.I0(mmcm_lock_count_reg[5]),
        .I1(mmcm_lock_count_reg[4]),
        .I2(mmcm_lock_count_reg[2]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[0]),
        .I5(mmcm_lock_count_reg[3]),
        .O(mmcm_lock_reclocked_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(mmcm_lock_reclocked_i_1_n_0),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'hB)) 
    reset_time_out_i_2__0
       (.I0(rxresetdone_s3),
        .I1(rx_state[1]),
        .O(reset_time_out_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    reset_time_out_i_3__0
       (.I0(rx_state[2]),
        .I1(rx_state[3]),
        .O(check_tlock_max));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    reset_time_out_i_4
       (.I0(rx_state[1]),
        .I1(reset_time_out_reg_0),
        .I2(rx_state[0]),
        .I3(mmcm_lock_reclocked),
        .O(reset_time_out_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'h0F303F38)) 
    reset_time_out_i_6
       (.I0(reset_time_out_reg_0),
        .I1(rx_state[2]),
        .I2(rx_state[3]),
        .I3(rx_state[0]),
        .I4(rx_state[1]),
        .O(reset_time_out_i_6_n_0));
  FDSE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(sync_pll0lock_n_1),
        .Q(reset_time_out_reg_n_0),
        .S(out));
  LUT5 #(
    .INIT(32'hFFFB0002)) 
    run_phase_alignment_int_i_1__0
       (.I0(rx_state[3]),
        .I1(rx_state[0]),
        .I2(rx_state[2]),
        .I3(rx_state[1]),
        .I4(run_phase_alignment_int_reg_n_0),
        .O(run_phase_alignment_int_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(run_phase_alignment_int_i_1__0_n_0),
        .Q(run_phase_alignment_int_reg_n_0),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_s3_reg
       (.C(data_sync_reg6),
        .CE(1'b1),
        .D(run_phase_alignment_int_s2),
        .Q(run_phase_alignment_int_s3_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(sync_data_valid_n_5),
        .Q(data_in),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_s3_reg
       (.C(data_sync_reg6),
        .CE(1'b1),
        .D(rx_fsm_reset_done_int_s2),
        .Q(rx_fsm_reset_done_int_s3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rxresetdone_s3_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(rxresetdone_s2),
        .Q(rxresetdone_s3),
        .R(1'b0));
  gig_ethernet_pcs_pma_sync_block_13 sync_RXRESETDONE
       (.data_out(rxresetdone_s2),
        .data_sync_reg1_0(data_sync_reg1),
        .independent_clock_bufg(independent_clock_bufg));
  gig_ethernet_pcs_pma_sync_block_14 sync_data_valid
       (.D({rx_state__0[3],rx_state__0[1:0]}),
        .E(sync_data_valid_n_0),
        .\FSM_sequential_rx_state_reg[0] (\FSM_sequential_rx_state[3]_i_4_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_0 (\wait_time_cnt[0]_i_2__0_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_1 (sync_pll0lock_n_0),
        .\FSM_sequential_rx_state_reg[0]_2 (\FSM_sequential_rx_state[3]_i_6_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_3 (\FSM_sequential_rx_state[0]_i_2_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_4 (\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .\FSM_sequential_rx_state_reg[2] (sync_data_valid_n_5),
        .\FSM_sequential_rx_state_reg[3] (\FSM_sequential_rx_state[3]_i_8_n_0 ),
        .\FSM_sequential_rx_state_reg[3]_0 (\FSM_sequential_rx_state[3]_i_9_n_0 ),
        .Q(rx_state),
        .data_in(data_in),
        .data_out(data_valid_sync),
        .data_sync_reg1_0(data_out),
        .independent_clock_bufg(independent_clock_bufg),
        .rx_fsm_reset_done_int_reg(time_out_100us_reg_n_0),
        .rx_fsm_reset_done_int_reg_0(reset_time_out_reg_n_0),
        .rx_fsm_reset_done_int_reg_1(time_out_1us_reg_n_0),
        .time_out_wait_bypass_s3(time_out_wait_bypass_s3));
  gig_ethernet_pcs_pma_sync_block_15 sync_mmcm_lock_reclocked
       (.SR(sync_mmcm_lock_reclocked_n_0),
        .data_out(mmcm_lock_i),
        .data_sync_reg1_0(data_sync_reg1_0),
        .independent_clock_bufg(independent_clock_bufg));
  gig_ethernet_pcs_pma_sync_block_16 sync_pll0lock
       (.\FSM_sequential_rx_state_reg[0] (sync_pll0lock_n_0),
        .\FSM_sequential_rx_state_reg[0]_0 (time_out_2ms_reg_n_0),
        .Q(rx_state),
        .check_tlock_max(check_tlock_max),
        .data_out(data_valid_sync),
        .gt0_pll0lock_out(gt0_pll0lock_out),
        .independent_clock_bufg(independent_clock_bufg),
        .reset_time_out_reg(sync_pll0lock_n_1),
        .reset_time_out_reg_0(reset_time_out_i_2__0_n_0),
        .reset_time_out_reg_1(reset_time_out_i_4_n_0),
        .reset_time_out_reg_2(reset_time_out_i_6_n_0),
        .reset_time_out_reg_3(reset_time_out_reg_n_0));
  gig_ethernet_pcs_pma_sync_block_17 sync_run_phase_alignment_int
       (.data_in(run_phase_alignment_int_reg_n_0),
        .data_out(run_phase_alignment_int_s2),
        .data_sync_reg1_0(data_sync_reg6));
  gig_ethernet_pcs_pma_sync_block_18 sync_rx_fsm_reset_done_int
       (.data_in(data_in),
        .data_out(rx_fsm_reset_done_int_s2),
        .data_sync_reg6_0(data_sync_reg6));
  gig_ethernet_pcs_pma_sync_block_19 sync_time_out_wait_bypass
       (.data_in(time_out_wait_bypass_reg_n_0),
        .data_out(time_out_wait_bypass_s2),
        .independent_clock_bufg(independent_clock_bufg));
  LUT5 #(
    .INIT(32'hFFFF0040)) 
    time_out_100us_i_1
       (.I0(time_out_100us_i_2_n_0),
        .I1(time_out_100us_i_3_n_0),
        .I2(time_out_100us_i_4_n_0),
        .I3(time_out_100us_i_5_n_0),
        .I4(time_out_100us_reg_n_0),
        .O(time_out_100us_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    time_out_100us_i_2
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[15]),
        .I2(time_out_counter_reg[17]),
        .I3(time_out_counter_reg[19]),
        .I4(time_out_counter_reg[12]),
        .I5(time_out_counter_reg[13]),
        .O(time_out_100us_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    time_out_100us_i_3
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[2]),
        .I3(time_out_counter_reg[4]),
        .I4(time_out_counter_reg[3]),
        .O(time_out_100us_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    time_out_100us_i_4
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[18]),
        .I2(time_out_counter_reg[14]),
        .I3(time_out_counter_reg[16]),
        .I4(time_out_counter_reg[5]),
        .O(time_out_100us_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    time_out_100us_i_5
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[9]),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_counter_reg[6]),
        .I4(time_out_counter_reg[7]),
        .I5(time_out_counter_reg[8]),
        .O(time_out_100us_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_100us_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_100us_i_1_n_0),
        .Q(time_out_100us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000010)) 
    time_out_1us_i_1
       (.I0(time_out_1us_i_2_n_0),
        .I1(time_out_counter_reg[16]),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[8]),
        .I4(time_out_1us_i_3_n_0),
        .I5(time_out_1us_reg_n_0),
        .O(time_out_1us_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFDFFFFF)) 
    time_out_1us_i_2
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[4]),
        .I2(time_out_counter_reg[7]),
        .I3(time_out_counter_reg[5]),
        .I4(time_out_2ms_i_6_n_0),
        .I5(time_out_100us_i_2_n_0),
        .O(time_out_1us_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    time_out_1us_i_3
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[11]),
        .I2(time_out_counter_reg[9]),
        .I3(time_out_counter_reg[10]),
        .I4(time_out_counter_reg[18]),
        .I5(time_out_counter_reg[17]),
        .O(time_out_1us_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_1us_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_1us_i_1_n_0),
        .Q(time_out_1us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT4 #(
    .INIT(16'hFF01)) 
    time_out_2ms_i_1
       (.I0(time_out_2ms_i_2_n_0),
        .I1(time_out_2ms_i_3_n_0),
        .I2(time_out_2ms_i_4_n_0),
        .I3(time_out_2ms_reg_n_0),
        .O(time_out_2ms_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    time_out_2ms_i_2
       (.I0(time_out_counter_reg[10]),
        .I1(time_out_counter_reg[9]),
        .I2(time_out_counter_reg[12]),
        .I3(time_out_counter_reg[19]),
        .I4(time_out_counter_reg[11]),
        .I5(time_out_counter_reg[14]),
        .O(time_out_2ms_i_2_n_0));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    time_out_2ms_i_3
       (.I0(time_out_2ms_i_5_n_0),
        .I1(time_out_counter_reg[15]),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[13]),
        .I4(time_out_counter_reg[16]),
        .I5(time_out_counter_reg[8]),
        .O(time_out_2ms_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFDFFFFF)) 
    time_out_2ms_i_4
       (.I0(time_out_2ms_i_6_n_0),
        .I1(time_out_counter_reg[5]),
        .I2(time_out_counter_reg[7]),
        .I3(time_out_counter_reg[4]),
        .I4(time_out_counter_reg[6]),
        .O(time_out_2ms_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h1)) 
    time_out_2ms_i_5
       (.I0(time_out_counter_reg[18]),
        .I1(time_out_counter_reg[17]),
        .O(time_out_2ms_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h01)) 
    time_out_2ms_i_6
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[0]),
        .O(time_out_2ms_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_2ms_i_1_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \time_out_counter[0]_i_1 
       (.I0(time_out_2ms_i_2_n_0),
        .I1(\time_out_counter[0]_i_3__0_n_0 ),
        .I2(time_out_counter_reg[15]),
        .I3(time_out_counter_reg[17]),
        .I4(time_out_counter_reg[18]),
        .I5(time_out_2ms_i_4_n_0),
        .O(time_out_counter));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \time_out_counter[0]_i_3__0 
       (.I0(time_out_counter_reg[8]),
        .I1(time_out_counter_reg[16]),
        .I2(time_out_counter_reg[13]),
        .I3(time_out_counter_reg[3]),
        .O(\time_out_counter[0]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_4 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2__0_n_0 ,\time_out_counter_reg[0]_i_2__0_n_1 ,\time_out_counter_reg[0]_i_2__0_n_2 ,\time_out_counter_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2__0_n_4 ,\time_out_counter_reg[0]_i_2__0_n_5 ,\time_out_counter_reg[0]_i_2__0_n_6 ,\time_out_counter_reg[0]_i_2__0_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[12]_i_1__0 
       (.CI(\time_out_counter_reg[8]_i_1__0_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1__0_n_0 ,\time_out_counter_reg[12]_i_1__0_n_1 ,\time_out_counter_reg[12]_i_1__0_n_2 ,\time_out_counter_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1__0_n_4 ,\time_out_counter_reg[12]_i_1__0_n_5 ,\time_out_counter_reg[12]_i_1__0_n_6 ,\time_out_counter_reg[12]_i_1__0_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[16]_i_1__0 
       (.CI(\time_out_counter_reg[12]_i_1__0_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED [3],\time_out_counter_reg[16]_i_1__0_n_1 ,\time_out_counter_reg[16]_i_1__0_n_2 ,\time_out_counter_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[16]_i_1__0_n_4 ,\time_out_counter_reg[16]_i_1__0_n_5 ,\time_out_counter_reg[16]_i_1__0_n_6 ,\time_out_counter_reg[16]_i_1__0_n_7 }),
        .S(time_out_counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[18] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[18]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[19] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[19]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[4]_i_1__0 
       (.CI(\time_out_counter_reg[0]_i_2__0_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1__0_n_0 ,\time_out_counter_reg[4]_i_1__0_n_1 ,\time_out_counter_reg[4]_i_1__0_n_2 ,\time_out_counter_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1__0_n_4 ,\time_out_counter_reg[4]_i_1__0_n_5 ,\time_out_counter_reg[4]_i_1__0_n_6 ,\time_out_counter_reg[4]_i_1__0_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[8]_i_1__0 
       (.CI(\time_out_counter_reg[4]_i_1__0_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1__0_n_0 ,\time_out_counter_reg[8]_i_1__0_n_1 ,\time_out_counter_reg[8]_i_1__0_n_2 ,\time_out_counter_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1__0_n_4 ,\time_out_counter_reg[8]_i_1__0_n_5 ,\time_out_counter_reg[8]_i_1__0_n_6 ,\time_out_counter_reg[8]_i_1__0_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out_reg_n_0));
  LUT4 #(
    .INIT(16'hAB00)) 
    time_out_wait_bypass_i_1
       (.I0(time_out_wait_bypass_reg_n_0),
        .I1(rx_fsm_reset_done_int_s3),
        .I2(time_out_wait_bypass_i_2__0_n_0),
        .I3(run_phase_alignment_int_s3_reg_n_0),
        .O(time_out_wait_bypass_i_1_n_0));
  LUT5 #(
    .INIT(32'hFBFFFFFF)) 
    time_out_wait_bypass_i_2__0
       (.I0(time_out_wait_bypass_i_3__0_n_0),
        .I1(wait_bypass_count_reg[1]),
        .I2(wait_bypass_count_reg[11]),
        .I3(wait_bypass_count_reg[0]),
        .I4(time_out_wait_bypass_i_4__0_n_0),
        .O(time_out_wait_bypass_i_2__0_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    time_out_wait_bypass_i_3__0
       (.I0(wait_bypass_count_reg[9]),
        .I1(wait_bypass_count_reg[4]),
        .I2(wait_bypass_count_reg[12]),
        .I3(wait_bypass_count_reg[2]),
        .O(time_out_wait_bypass_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    time_out_wait_bypass_i_4__0
       (.I0(wait_bypass_count_reg[5]),
        .I1(wait_bypass_count_reg[7]),
        .I2(wait_bypass_count_reg[3]),
        .I3(wait_bypass_count_reg[6]),
        .I4(wait_bypass_count_reg[10]),
        .I5(wait_bypass_count_reg[8]),
        .O(time_out_wait_bypass_i_4__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_reg
       (.C(data_sync_reg6),
        .CE(1'b1),
        .D(time_out_wait_bypass_i_1_n_0),
        .Q(time_out_wait_bypass_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_s3_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFF200)) 
    time_tlock_max_i_1
       (.I0(time_out_counter_reg[14]),
        .I1(time_tlock_max_i_2_n_0),
        .I2(time_tlock_max_i_3_n_0),
        .I3(check_tlock_max_reg_n_0),
        .I4(time_tlock_max),
        .O(time_tlock_max_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000000000FF8A)) 
    time_tlock_max_i_2
       (.I0(time_tlock_max_i_4_n_0),
        .I1(time_out_100us_i_3_n_0),
        .I2(time_out_counter_reg[5]),
        .I3(time_tlock_max_i_5_n_0),
        .I4(time_out_counter_reg[13]),
        .I5(time_out_counter_reg[12]),
        .O(time_tlock_max_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    time_tlock_max_i_3
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[19]),
        .I2(time_out_counter_reg[18]),
        .I3(time_out_counter_reg[17]),
        .I4(time_out_counter_reg[15]),
        .O(time_tlock_max_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    time_tlock_max_i_4
       (.I0(time_out_counter_reg[8]),
        .I1(time_out_counter_reg[7]),
        .I2(time_out_counter_reg[6]),
        .O(time_tlock_max_i_4_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    time_tlock_max_i_5
       (.I0(time_out_counter_reg[10]),
        .I1(time_out_counter_reg[9]),
        .I2(time_out_counter_reg[11]),
        .O(time_tlock_max_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_tlock_max_i_1_n_0),
        .Q(time_tlock_max),
        .R(reset_time_out_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_1__0 
       (.I0(run_phase_alignment_int_s3_reg_n_0),
        .O(\wait_bypass_count[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wait_bypass_count[0]_i_2__0 
       (.I0(time_out_wait_bypass_i_2__0_n_0),
        .I1(rx_fsm_reset_done_int_s3),
        .O(\wait_bypass_count[0]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_4 
       (.I0(wait_bypass_count_reg[0]),
        .O(\wait_bypass_count[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[0] 
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_7 ),
        .Q(wait_bypass_count_reg[0]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[0]_i_3__0 
       (.CI(1'b0),
        .CO({\wait_bypass_count_reg[0]_i_3__0_n_0 ,\wait_bypass_count_reg[0]_i_3__0_n_1 ,\wait_bypass_count_reg[0]_i_3__0_n_2 ,\wait_bypass_count_reg[0]_i_3__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wait_bypass_count_reg[0]_i_3__0_n_4 ,\wait_bypass_count_reg[0]_i_3__0_n_5 ,\wait_bypass_count_reg[0]_i_3__0_n_6 ,\wait_bypass_count_reg[0]_i_3__0_n_7 }),
        .S({wait_bypass_count_reg[3:1],\wait_bypass_count[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[10] 
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_5 ),
        .Q(wait_bypass_count_reg[10]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[11] 
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_4 ),
        .Q(wait_bypass_count_reg[11]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[12] 
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[12]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[12]_i_1__0 
       (.CI(\wait_bypass_count_reg[8]_i_1__0_n_0 ),
        .CO(\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED [3:1],\wait_bypass_count_reg[12]_i_1__0_n_7 }),
        .S({1'b0,1'b0,1'b0,wait_bypass_count_reg[12]}));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[1] 
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_6 ),
        .Q(wait_bypass_count_reg[1]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[2] 
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_5 ),
        .Q(wait_bypass_count_reg[2]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[3] 
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_4 ),
        .Q(wait_bypass_count_reg[3]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[4] 
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[4]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[4]_i_1__0 
       (.CI(\wait_bypass_count_reg[0]_i_3__0_n_0 ),
        .CO({\wait_bypass_count_reg[4]_i_1__0_n_0 ,\wait_bypass_count_reg[4]_i_1__0_n_1 ,\wait_bypass_count_reg[4]_i_1__0_n_2 ,\wait_bypass_count_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[4]_i_1__0_n_4 ,\wait_bypass_count_reg[4]_i_1__0_n_5 ,\wait_bypass_count_reg[4]_i_1__0_n_6 ,\wait_bypass_count_reg[4]_i_1__0_n_7 }),
        .S(wait_bypass_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[5] 
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_6 ),
        .Q(wait_bypass_count_reg[5]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[6] 
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_5 ),
        .Q(wait_bypass_count_reg[6]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[7] 
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_4 ),
        .Q(wait_bypass_count_reg[7]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[8] 
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[8]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[8]_i_1__0 
       (.CI(\wait_bypass_count_reg[4]_i_1__0_n_0 ),
        .CO({\wait_bypass_count_reg[8]_i_1__0_n_0 ,\wait_bypass_count_reg[8]_i_1__0_n_1 ,\wait_bypass_count_reg[8]_i_1__0_n_2 ,\wait_bypass_count_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[8]_i_1__0_n_4 ,\wait_bypass_count_reg[8]_i_1__0_n_5 ,\wait_bypass_count_reg[8]_i_1__0_n_6 ,\wait_bypass_count_reg[8]_i_1__0_n_7 }),
        .S(wait_bypass_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[9] 
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_6 ),
        .Q(wait_bypass_count_reg[9]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \wait_time_cnt[0]_i_1 
       (.I0(rx_state[3]),
        .I1(rx_state[0]),
        .I2(rx_state[1]),
        .O(\wait_time_cnt[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_10__0 
       (.I0(wait_time_cnt_reg[1]),
        .O(\wait_time_cnt[0]_i_10__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_11__0 
       (.I0(wait_time_cnt_reg[0]),
        .O(\wait_time_cnt[0]_i_11__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_2__0 
       (.I0(\wait_time_cnt[0]_i_4__0_n_0 ),
        .I1(\wait_time_cnt[0]_i_5__0_n_0 ),
        .I2(\wait_time_cnt[0]_i_6__0_n_0 ),
        .I3(\wait_time_cnt[0]_i_7__0_n_0 ),
        .O(\wait_time_cnt[0]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_4__0 
       (.I0(wait_time_cnt_reg[14]),
        .I1(wait_time_cnt_reg[13]),
        .I2(wait_time_cnt_reg[10]),
        .I3(wait_time_cnt_reg[9]),
        .O(\wait_time_cnt[0]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_5__0 
       (.I0(wait_time_cnt_reg[12]),
        .I1(wait_time_cnt_reg[3]),
        .I2(wait_time_cnt_reg[15]),
        .I3(wait_time_cnt_reg[0]),
        .O(\wait_time_cnt[0]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_6__0 
       (.I0(wait_time_cnt_reg[7]),
        .I1(wait_time_cnt_reg[6]),
        .I2(wait_time_cnt_reg[5]),
        .I3(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[0]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_7__0 
       (.I0(wait_time_cnt_reg[2]),
        .I1(wait_time_cnt_reg[1]),
        .I2(wait_time_cnt_reg[11]),
        .I3(wait_time_cnt_reg[8]),
        .O(\wait_time_cnt[0]_i_7__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_8__0 
       (.I0(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[0]_i_8__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_9__0 
       (.I0(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[0]_i_9__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_2__0 
       (.I0(wait_time_cnt_reg[15]),
        .O(\wait_time_cnt[12]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_3__0 
       (.I0(wait_time_cnt_reg[14]),
        .O(\wait_time_cnt[12]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_4__0 
       (.I0(wait_time_cnt_reg[13]),
        .O(\wait_time_cnt[12]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_5__0 
       (.I0(wait_time_cnt_reg[12]),
        .O(\wait_time_cnt[12]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_2__0 
       (.I0(wait_time_cnt_reg[7]),
        .O(\wait_time_cnt[4]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_3__0 
       (.I0(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[4]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_4__0 
       (.I0(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[4]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_5__0 
       (.I0(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[4]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_2__0 
       (.I0(wait_time_cnt_reg[11]),
        .O(\wait_time_cnt[8]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_3__0 
       (.I0(wait_time_cnt_reg[10]),
        .O(\wait_time_cnt[8]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_4__0 
       (.I0(wait_time_cnt_reg[9]),
        .O(\wait_time_cnt[8]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_5__0 
       (.I0(wait_time_cnt_reg[8]),
        .O(\wait_time_cnt[8]_i_5__0_n_0 ));
  FDRE \wait_time_cnt_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__0_n_7 ),
        .Q(wait_time_cnt_reg[0]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_time_cnt_reg[0]_i_3__0 
       (.CI(1'b0),
        .CO({\wait_time_cnt_reg[0]_i_3__0_n_0 ,\wait_time_cnt_reg[0]_i_3__0_n_1 ,\wait_time_cnt_reg[0]_i_3__0_n_2 ,\wait_time_cnt_reg[0]_i_3__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[0]_i_3__0_n_4 ,\wait_time_cnt_reg[0]_i_3__0_n_5 ,\wait_time_cnt_reg[0]_i_3__0_n_6 ,\wait_time_cnt_reg[0]_i_3__0_n_7 }),
        .S({\wait_time_cnt[0]_i_8__0_n_0 ,\wait_time_cnt[0]_i_9__0_n_0 ,\wait_time_cnt[0]_i_10__0_n_0 ,\wait_time_cnt[0]_i_11__0_n_0 }));
  FDSE \wait_time_cnt_reg[10] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__0_n_5 ),
        .Q(wait_time_cnt_reg[10]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[11] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__0_n_4 ),
        .Q(wait_time_cnt_reg[11]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[12] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__0_n_7 ),
        .Q(wait_time_cnt_reg[12]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_time_cnt_reg[12]_i_1__0 
       (.CI(\wait_time_cnt_reg[8]_i_1__0_n_0 ),
        .CO({\NLW_wait_time_cnt_reg[12]_i_1__0_CO_UNCONNECTED [3],\wait_time_cnt_reg[12]_i_1__0_n_1 ,\wait_time_cnt_reg[12]_i_1__0_n_2 ,\wait_time_cnt_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[12]_i_1__0_n_4 ,\wait_time_cnt_reg[12]_i_1__0_n_5 ,\wait_time_cnt_reg[12]_i_1__0_n_6 ,\wait_time_cnt_reg[12]_i_1__0_n_7 }),
        .S({\wait_time_cnt[12]_i_2__0_n_0 ,\wait_time_cnt[12]_i_3__0_n_0 ,\wait_time_cnt[12]_i_4__0_n_0 ,\wait_time_cnt[12]_i_5__0_n_0 }));
  FDRE \wait_time_cnt_reg[13] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__0_n_6 ),
        .Q(wait_time_cnt_reg[13]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[14] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__0_n_5 ),
        .Q(wait_time_cnt_reg[14]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[15] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__0_n_4 ),
        .Q(wait_time_cnt_reg[15]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__0_n_6 ),
        .Q(wait_time_cnt_reg[1]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__0_n_5 ),
        .Q(wait_time_cnt_reg[2]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__0_n_4 ),
        .Q(wait_time_cnt_reg[3]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDSE \wait_time_cnt_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__0_n_7 ),
        .Q(wait_time_cnt_reg[4]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_time_cnt_reg[4]_i_1__0 
       (.CI(\wait_time_cnt_reg[0]_i_3__0_n_0 ),
        .CO({\wait_time_cnt_reg[4]_i_1__0_n_0 ,\wait_time_cnt_reg[4]_i_1__0_n_1 ,\wait_time_cnt_reg[4]_i_1__0_n_2 ,\wait_time_cnt_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[4]_i_1__0_n_4 ,\wait_time_cnt_reg[4]_i_1__0_n_5 ,\wait_time_cnt_reg[4]_i_1__0_n_6 ,\wait_time_cnt_reg[4]_i_1__0_n_7 }),
        .S({\wait_time_cnt[4]_i_2__0_n_0 ,\wait_time_cnt[4]_i_3__0_n_0 ,\wait_time_cnt[4]_i_4__0_n_0 ,\wait_time_cnt[4]_i_5__0_n_0 }));
  FDRE \wait_time_cnt_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__0_n_6 ),
        .Q(wait_time_cnt_reg[5]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDSE \wait_time_cnt_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__0_n_5 ),
        .Q(wait_time_cnt_reg[6]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  FDSE \wait_time_cnt_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__0_n_4 ),
        .Q(wait_time_cnt_reg[7]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  FDSE \wait_time_cnt_reg[8] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__0_n_7 ),
        .Q(wait_time_cnt_reg[8]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_time_cnt_reg[8]_i_1__0 
       (.CI(\wait_time_cnt_reg[4]_i_1__0_n_0 ),
        .CO({\wait_time_cnt_reg[8]_i_1__0_n_0 ,\wait_time_cnt_reg[8]_i_1__0_n_1 ,\wait_time_cnt_reg[8]_i_1__0_n_2 ,\wait_time_cnt_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[8]_i_1__0_n_4 ,\wait_time_cnt_reg[8]_i_1__0_n_5 ,\wait_time_cnt_reg[8]_i_1__0_n_6 ,\wait_time_cnt_reg[8]_i_1__0_n_7 }),
        .S({\wait_time_cnt[8]_i_2__0_n_0 ,\wait_time_cnt[8]_i_3__0_n_0 ,\wait_time_cnt[8]_i_4__0_n_0 ,\wait_time_cnt[8]_i_5__0_n_0 }));
  FDSE \wait_time_cnt_reg[9] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__0_n_6 ),
        .Q(wait_time_cnt_reg[9]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
endmodule

module gig_ethernet_pcs_pma_TX_STARTUP_FSM
   (mmcm_reset,
    PLL0_RESET_reg_0,
    data_in,
    gt0_txuserrdy_i,
    gt0_gttxreset_gt,
    independent_clock_bufg,
    data_sync_reg1,
    out,
    gtpe2_i,
    gt0_pll0refclklost_out,
    data_sync_reg1_0,
    data_sync_reg1_1,
    gt0_pll0lock_out);
  output mmcm_reset;
  output PLL0_RESET_reg_0;
  output data_in;
  output gt0_txuserrdy_i;
  output gt0_gttxreset_gt;
  input independent_clock_bufg;
  input data_sync_reg1;
  input [0:0]out;
  input gtpe2_i;
  input gt0_pll0refclklost_out;
  input data_sync_reg1_0;
  input data_sync_reg1_1;
  input gt0_pll0lock_out;

  wire \FSM_sequential_tx_state[0]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[1]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_4_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_5_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_7_n_0 ;
  wire MMCM_RESET_i_1_n_0;
  wire PLL0_RESET0;
  wire PLL0_RESET_i_1_n_0;
  wire PLL0_RESET_reg_0;
  wire TXUSERRDY_i_1_n_0;
  wire clear;
  wire data_in;
  wire data_sync_reg1;
  wire data_sync_reg1_0;
  wire data_sync_reg1_1;
  wire gt0_gttxreset_gt;
  wire gt0_gttxreset_t;
  wire gt0_pll0lock_out;
  wire gt0_pll0refclklost_out;
  wire gt0_txuserrdy_i;
  wire gtpe2_i;
  wire gttxreset_i_i_1_n_0;
  wire independent_clock_bufg;
  wire init_wait_count;
  wire \init_wait_count[0]_i_1_n_0 ;
  wire \init_wait_count[7]_i_3__0_n_0 ;
  wire \init_wait_count[7]_i_4_n_0 ;
  wire [7:0]init_wait_count_reg;
  wire init_wait_done_i_1_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[7]_i_2_n_0 ;
  wire [7:0]mmcm_lock_count_reg;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_i_1_n_0;
  wire mmcm_lock_reclocked_i_2_n_0;
  wire mmcm_reset;
  wire [0:0]out;
  wire [7:1]p_0_in__1;
  wire [7:0]p_0_in__2;
  wire pll_reset_asserted_i_1_n_0;
  wire pll_reset_asserted_reg_n_0;
  wire refclk_stable_count;
  wire \refclk_stable_count[0]_i_3_n_0 ;
  wire \refclk_stable_count[0]_i_4_n_0 ;
  wire \refclk_stable_count[0]_i_5_n_0 ;
  wire \refclk_stable_count[0]_i_6_n_0 ;
  wire \refclk_stable_count[0]_i_7_n_0 ;
  wire [19:0]refclk_stable_count_reg;
  wire \refclk_stable_count_reg[0]_i_2_n_0 ;
  wire \refclk_stable_count_reg[0]_i_2_n_1 ;
  wire \refclk_stable_count_reg[0]_i_2_n_2 ;
  wire \refclk_stable_count_reg[0]_i_2_n_3 ;
  wire \refclk_stable_count_reg[0]_i_2_n_4 ;
  wire \refclk_stable_count_reg[0]_i_2_n_5 ;
  wire \refclk_stable_count_reg[0]_i_2_n_6 ;
  wire \refclk_stable_count_reg[0]_i_2_n_7 ;
  wire \refclk_stable_count_reg[12]_i_1_n_0 ;
  wire \refclk_stable_count_reg[12]_i_1_n_1 ;
  wire \refclk_stable_count_reg[12]_i_1_n_2 ;
  wire \refclk_stable_count_reg[12]_i_1_n_3 ;
  wire \refclk_stable_count_reg[12]_i_1_n_4 ;
  wire \refclk_stable_count_reg[12]_i_1_n_5 ;
  wire \refclk_stable_count_reg[12]_i_1_n_6 ;
  wire \refclk_stable_count_reg[12]_i_1_n_7 ;
  wire \refclk_stable_count_reg[16]_i_1_n_1 ;
  wire \refclk_stable_count_reg[16]_i_1_n_2 ;
  wire \refclk_stable_count_reg[16]_i_1_n_3 ;
  wire \refclk_stable_count_reg[16]_i_1_n_4 ;
  wire \refclk_stable_count_reg[16]_i_1_n_5 ;
  wire \refclk_stable_count_reg[16]_i_1_n_6 ;
  wire \refclk_stable_count_reg[16]_i_1_n_7 ;
  wire \refclk_stable_count_reg[4]_i_1_n_0 ;
  wire \refclk_stable_count_reg[4]_i_1_n_1 ;
  wire \refclk_stable_count_reg[4]_i_1_n_2 ;
  wire \refclk_stable_count_reg[4]_i_1_n_3 ;
  wire \refclk_stable_count_reg[4]_i_1_n_4 ;
  wire \refclk_stable_count_reg[4]_i_1_n_5 ;
  wire \refclk_stable_count_reg[4]_i_1_n_6 ;
  wire \refclk_stable_count_reg[4]_i_1_n_7 ;
  wire \refclk_stable_count_reg[8]_i_1_n_0 ;
  wire \refclk_stable_count_reg[8]_i_1_n_1 ;
  wire \refclk_stable_count_reg[8]_i_1_n_2 ;
  wire \refclk_stable_count_reg[8]_i_1_n_3 ;
  wire \refclk_stable_count_reg[8]_i_1_n_4 ;
  wire \refclk_stable_count_reg[8]_i_1_n_5 ;
  wire \refclk_stable_count_reg[8]_i_1_n_6 ;
  wire \refclk_stable_count_reg[8]_i_1_n_7 ;
  wire refclk_stable_i_1_n_0;
  wire refclk_stable_reg_n_0;
  wire reset_time_out;
  wire reset_time_out_i_3_n_0;
  wire run_phase_alignment_int_i_1_n_0;
  wire run_phase_alignment_int_reg_n_0;
  wire run_phase_alignment_int_s2;
  wire run_phase_alignment_int_s3;
  wire sel;
  wire sync_mmcm_lock_reclocked_n_0;
  wire sync_pll0lock_n_0;
  wire sync_pll0lock_n_1;
  wire time_out_2ms_i_1_n_0;
  wire time_out_2ms_i_2__0_n_0;
  wire time_out_2ms_i_3__0_n_0;
  wire time_out_2ms_i_4__0_n_0;
  wire time_out_2ms_i_5__0_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_500us_i_1_n_0;
  wire time_out_500us_i_2_n_0;
  wire time_out_500us_reg_n_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_3_n_0 ;
  wire [18:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2_n_0 ;
  wire \time_out_counter_reg[0]_i_2_n_1 ;
  wire \time_out_counter_reg[0]_i_2_n_2 ;
  wire \time_out_counter_reg[0]_i_2_n_3 ;
  wire \time_out_counter_reg[0]_i_2_n_4 ;
  wire \time_out_counter_reg[0]_i_2_n_5 ;
  wire \time_out_counter_reg[0]_i_2_n_6 ;
  wire \time_out_counter_reg[0]_i_2_n_7 ;
  wire \time_out_counter_reg[12]_i_1_n_0 ;
  wire \time_out_counter_reg[12]_i_1_n_1 ;
  wire \time_out_counter_reg[12]_i_1_n_2 ;
  wire \time_out_counter_reg[12]_i_1_n_3 ;
  wire \time_out_counter_reg[12]_i_1_n_4 ;
  wire \time_out_counter_reg[12]_i_1_n_5 ;
  wire \time_out_counter_reg[12]_i_1_n_6 ;
  wire \time_out_counter_reg[12]_i_1_n_7 ;
  wire \time_out_counter_reg[16]_i_1_n_2 ;
  wire \time_out_counter_reg[16]_i_1_n_3 ;
  wire \time_out_counter_reg[16]_i_1_n_5 ;
  wire \time_out_counter_reg[16]_i_1_n_6 ;
  wire \time_out_counter_reg[16]_i_1_n_7 ;
  wire \time_out_counter_reg[4]_i_1_n_0 ;
  wire \time_out_counter_reg[4]_i_1_n_1 ;
  wire \time_out_counter_reg[4]_i_1_n_2 ;
  wire \time_out_counter_reg[4]_i_1_n_3 ;
  wire \time_out_counter_reg[4]_i_1_n_4 ;
  wire \time_out_counter_reg[4]_i_1_n_5 ;
  wire \time_out_counter_reg[4]_i_1_n_6 ;
  wire \time_out_counter_reg[4]_i_1_n_7 ;
  wire \time_out_counter_reg[8]_i_1_n_0 ;
  wire \time_out_counter_reg[8]_i_1_n_1 ;
  wire \time_out_counter_reg[8]_i_1_n_2 ;
  wire \time_out_counter_reg[8]_i_1_n_3 ;
  wire \time_out_counter_reg[8]_i_1_n_4 ;
  wire \time_out_counter_reg[8]_i_1_n_5 ;
  wire \time_out_counter_reg[8]_i_1_n_6 ;
  wire \time_out_counter_reg[8]_i_1_n_7 ;
  wire time_out_wait_bypass_i_1_n_0;
  wire time_out_wait_bypass_i_2_n_0;
  wire time_out_wait_bypass_i_3_n_0;
  wire time_out_wait_bypass_i_4_n_0;
  wire time_out_wait_bypass_i_5_n_0;
  wire time_out_wait_bypass_reg_n_0;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max_i_1_n_0;
  wire time_tlock_max_i_2__0_n_0;
  wire time_tlock_max_i_3__0_n_0;
  wire time_tlock_max_i_4__0_n_0;
  wire time_tlock_max_i_5__0_n_0;
  wire time_tlock_max_reg_n_0;
  wire tx_fsm_reset_done_int_i_1_n_0;
  wire tx_fsm_reset_done_int_s2;
  wire tx_fsm_reset_done_int_s3;
  wire [3:0]tx_state;
  wire [3:1]tx_state__0;
  wire txresetdone_s2;
  wire txresetdone_s3;
  wire \wait_bypass_count[0]_i_2_n_0 ;
  wire \wait_bypass_count[0]_i_4__0_n_0 ;
  wire [16:0]wait_bypass_count_reg;
  wire \wait_bypass_count_reg[0]_i_3_n_0 ;
  wire \wait_bypass_count_reg[0]_i_3_n_1 ;
  wire \wait_bypass_count_reg[0]_i_3_n_2 ;
  wire \wait_bypass_count_reg[0]_i_3_n_3 ;
  wire \wait_bypass_count_reg[0]_i_3_n_4 ;
  wire \wait_bypass_count_reg[0]_i_3_n_5 ;
  wire \wait_bypass_count_reg[0]_i_3_n_6 ;
  wire \wait_bypass_count_reg[0]_i_3_n_7 ;
  wire \wait_bypass_count_reg[12]_i_1_n_0 ;
  wire \wait_bypass_count_reg[12]_i_1_n_1 ;
  wire \wait_bypass_count_reg[12]_i_1_n_2 ;
  wire \wait_bypass_count_reg[12]_i_1_n_3 ;
  wire \wait_bypass_count_reg[12]_i_1_n_4 ;
  wire \wait_bypass_count_reg[12]_i_1_n_5 ;
  wire \wait_bypass_count_reg[12]_i_1_n_6 ;
  wire \wait_bypass_count_reg[12]_i_1_n_7 ;
  wire \wait_bypass_count_reg[16]_i_1_n_7 ;
  wire \wait_bypass_count_reg[4]_i_1_n_0 ;
  wire \wait_bypass_count_reg[4]_i_1_n_1 ;
  wire \wait_bypass_count_reg[4]_i_1_n_2 ;
  wire \wait_bypass_count_reg[4]_i_1_n_3 ;
  wire \wait_bypass_count_reg[4]_i_1_n_4 ;
  wire \wait_bypass_count_reg[4]_i_1_n_5 ;
  wire \wait_bypass_count_reg[4]_i_1_n_6 ;
  wire \wait_bypass_count_reg[4]_i_1_n_7 ;
  wire \wait_bypass_count_reg[8]_i_1_n_0 ;
  wire \wait_bypass_count_reg[8]_i_1_n_1 ;
  wire \wait_bypass_count_reg[8]_i_1_n_2 ;
  wire \wait_bypass_count_reg[8]_i_1_n_3 ;
  wire \wait_bypass_count_reg[8]_i_1_n_4 ;
  wire \wait_bypass_count_reg[8]_i_1_n_5 ;
  wire \wait_bypass_count_reg[8]_i_1_n_6 ;
  wire \wait_bypass_count_reg[8]_i_1_n_7 ;
  wire wait_time_cnt0;
  wire \wait_time_cnt[0]_i_10_n_0 ;
  wire \wait_time_cnt[0]_i_11_n_0 ;
  wire \wait_time_cnt[0]_i_4_n_0 ;
  wire \wait_time_cnt[0]_i_5_n_0 ;
  wire \wait_time_cnt[0]_i_6_n_0 ;
  wire \wait_time_cnt[0]_i_7_n_0 ;
  wire \wait_time_cnt[0]_i_8_n_0 ;
  wire \wait_time_cnt[0]_i_9_n_0 ;
  wire \wait_time_cnt[12]_i_2_n_0 ;
  wire \wait_time_cnt[12]_i_3_n_0 ;
  wire \wait_time_cnt[12]_i_4_n_0 ;
  wire \wait_time_cnt[12]_i_5_n_0 ;
  wire \wait_time_cnt[4]_i_2_n_0 ;
  wire \wait_time_cnt[4]_i_3_n_0 ;
  wire \wait_time_cnt[4]_i_4_n_0 ;
  wire \wait_time_cnt[4]_i_5_n_0 ;
  wire \wait_time_cnt[8]_i_2_n_0 ;
  wire \wait_time_cnt[8]_i_3_n_0 ;
  wire \wait_time_cnt[8]_i_4_n_0 ;
  wire \wait_time_cnt[8]_i_5_n_0 ;
  wire [15:0]wait_time_cnt_reg;
  wire \wait_time_cnt_reg[0]_i_3_n_0 ;
  wire \wait_time_cnt_reg[0]_i_3_n_1 ;
  wire \wait_time_cnt_reg[0]_i_3_n_2 ;
  wire \wait_time_cnt_reg[0]_i_3_n_3 ;
  wire \wait_time_cnt_reg[0]_i_3_n_4 ;
  wire \wait_time_cnt_reg[0]_i_3_n_5 ;
  wire \wait_time_cnt_reg[0]_i_3_n_6 ;
  wire \wait_time_cnt_reg[0]_i_3_n_7 ;
  wire \wait_time_cnt_reg[12]_i_1_n_1 ;
  wire \wait_time_cnt_reg[12]_i_1_n_2 ;
  wire \wait_time_cnt_reg[12]_i_1_n_3 ;
  wire \wait_time_cnt_reg[12]_i_1_n_4 ;
  wire \wait_time_cnt_reg[12]_i_1_n_5 ;
  wire \wait_time_cnt_reg[12]_i_1_n_6 ;
  wire \wait_time_cnt_reg[12]_i_1_n_7 ;
  wire \wait_time_cnt_reg[4]_i_1_n_0 ;
  wire \wait_time_cnt_reg[4]_i_1_n_1 ;
  wire \wait_time_cnt_reg[4]_i_1_n_2 ;
  wire \wait_time_cnt_reg[4]_i_1_n_3 ;
  wire \wait_time_cnt_reg[4]_i_1_n_4 ;
  wire \wait_time_cnt_reg[4]_i_1_n_5 ;
  wire \wait_time_cnt_reg[4]_i_1_n_6 ;
  wire \wait_time_cnt_reg[4]_i_1_n_7 ;
  wire \wait_time_cnt_reg[8]_i_1_n_0 ;
  wire \wait_time_cnt_reg[8]_i_1_n_1 ;
  wire \wait_time_cnt_reg[8]_i_1_n_2 ;
  wire \wait_time_cnt_reg[8]_i_1_n_3 ;
  wire \wait_time_cnt_reg[8]_i_1_n_4 ;
  wire \wait_time_cnt_reg[8]_i_1_n_5 ;
  wire \wait_time_cnt_reg[8]_i_1_n_6 ;
  wire \wait_time_cnt_reg[8]_i_1_n_7 ;
  wire [3:3]\NLW_refclk_stable_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_wait_time_cnt_reg[12]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h55400000FFFFFFFF)) 
    \FSM_sequential_tx_state[0]_i_1 
       (.I0(\FSM_sequential_tx_state[3]_i_5_n_0 ),
        .I1(tx_state[1]),
        .I2(time_out_2ms_reg_n_0),
        .I3(tx_state[2]),
        .I4(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .I5(\FSM_sequential_tx_state[0]_i_2_n_0 ),
        .O(\FSM_sequential_tx_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_tx_state[0]_i_2 
       (.I0(tx_state[0]),
        .I1(tx_state[3]),
        .O(\FSM_sequential_tx_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'h00070F00)) 
    \FSM_sequential_tx_state[1]_i_1 
       (.I0(\FSM_sequential_tx_state[1]_i_2_n_0 ),
        .I1(tx_state[2]),
        .I2(tx_state[3]),
        .I3(tx_state[1]),
        .I4(tx_state[0]),
        .O(tx_state__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_tx_state[1]_i_2 
       (.I0(reset_time_out),
        .I1(time_tlock_max_reg_n_0),
        .I2(mmcm_lock_reclocked),
        .O(\FSM_sequential_tx_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0505100055555555)) 
    \FSM_sequential_tx_state[2]_i_1 
       (.I0(tx_state[3]),
        .I1(time_out_2ms_reg_n_0),
        .I2(tx_state[0]),
        .I3(tx_state[1]),
        .I4(tx_state[2]),
        .I5(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .O(\FSM_sequential_tx_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'hDDDDDFDD)) 
    \FSM_sequential_tx_state[2]_i_2 
       (.I0(tx_state[2]),
        .I1(tx_state[1]),
        .I2(mmcm_lock_reclocked),
        .I3(time_tlock_max_reg_n_0),
        .I4(reset_time_out),
        .O(\FSM_sequential_tx_state[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h5C50)) 
    \FSM_sequential_tx_state[3]_i_2 
       (.I0(time_out_wait_bypass_s3),
        .I1(tx_state[0]),
        .I2(tx_state[3]),
        .I3(\FSM_sequential_tx_state[3]_i_5_n_0 ),
        .O(tx_state__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_tx_state[3]_i_4 
       (.I0(tx_state[2]),
        .I1(tx_state[1]),
        .O(\FSM_sequential_tx_state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h8088)) 
    \FSM_sequential_tx_state[3]_i_5 
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(reset_time_out),
        .I3(time_out_500us_reg_n_0),
        .O(\FSM_sequential_tx_state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_tx_state[3]_i_7 
       (.I0(time_tlock_max_reg_n_0),
        .I1(reset_time_out),
        .O(\FSM_sequential_tx_state[3]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[0] 
       (.C(independent_clock_bufg),
        .CE(sync_pll0lock_n_0),
        .D(\FSM_sequential_tx_state[0]_i_1_n_0 ),
        .Q(tx_state[0]),
        .R(out));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[1] 
       (.C(independent_clock_bufg),
        .CE(sync_pll0lock_n_0),
        .D(tx_state__0[1]),
        .Q(tx_state[1]),
        .R(out));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[2] 
       (.C(independent_clock_bufg),
        .CE(sync_pll0lock_n_0),
        .D(\FSM_sequential_tx_state[2]_i_1_n_0 ),
        .Q(tx_state[2]),
        .R(out));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[3] 
       (.C(independent_clock_bufg),
        .CE(sync_pll0lock_n_0),
        .D(tx_state__0[3]),
        .Q(tx_state[3]),
        .R(out));
  LUT5 #(
    .INIT(32'hFFF70004)) 
    MMCM_RESET_i_1
       (.I0(tx_state[2]),
        .I1(tx_state[0]),
        .I2(tx_state[1]),
        .I3(tx_state[3]),
        .I4(mmcm_reset),
        .O(MMCM_RESET_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    MMCM_RESET_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(MMCM_RESET_i_1_n_0),
        .Q(mmcm_reset),
        .R(out));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    PLL0_RESET_i_1
       (.I0(PLL0_RESET0),
        .I1(tx_state[2]),
        .I2(tx_state[0]),
        .I3(tx_state[1]),
        .I4(tx_state[3]),
        .I5(PLL0_RESET_reg_0),
        .O(PLL0_RESET_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    PLL0_RESET_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(PLL0_RESET_i_1_n_0),
        .Q(PLL0_RESET_reg_0),
        .R(out));
  LUT5 #(
    .INIT(32'hFFFD2000)) 
    TXUSERRDY_i_1
       (.I0(tx_state[0]),
        .I1(tx_state[3]),
        .I2(tx_state[1]),
        .I3(tx_state[2]),
        .I4(gt0_txuserrdy_i),
        .O(TXUSERRDY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TXUSERRDY_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(TXUSERRDY_i_1_n_0),
        .Q(gt0_txuserrdy_i),
        .R(out));
  LUT3 #(
    .INIT(8'hEA)) 
    gtpe2_i_i_3
       (.I0(gt0_gttxreset_t),
        .I1(data_in),
        .I2(gtpe2_i),
        .O(gt0_gttxreset_gt));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'hFFFB0002)) 
    gttxreset_i_i_1
       (.I0(tx_state[0]),
        .I1(tx_state[2]),
        .I2(tx_state[1]),
        .I3(tx_state[3]),
        .I4(gt0_gttxreset_t),
        .O(gttxreset_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gttxreset_i_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gttxreset_i_i_1_n_0),
        .Q(gt0_gttxreset_t),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1 
       (.I0(init_wait_count_reg[0]),
        .O(\init_wait_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \init_wait_count[2]_i_1 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[1]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \init_wait_count[3]_i_1 
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[2]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[4]_i_1 
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[2]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[1]),
        .I4(init_wait_count_reg[3]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \init_wait_count[5]_i_1 
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[2]),
        .I4(init_wait_count_reg[4]),
        .I5(init_wait_count_reg[5]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[6]_i_1 
       (.I0(init_wait_count_reg[6]),
        .I1(\init_wait_count[7]_i_4_n_0 ),
        .O(p_0_in__1[6]));
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \init_wait_count[7]_i_1__0 
       (.I0(\init_wait_count[7]_i_3__0_n_0 ),
        .I1(init_wait_count_reg[7]),
        .I2(init_wait_count_reg[4]),
        .I3(init_wait_count_reg[3]),
        .I4(init_wait_count_reg[2]),
        .O(init_wait_count));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \init_wait_count[7]_i_2 
       (.I0(init_wait_count_reg[7]),
        .I1(\init_wait_count[7]_i_4_n_0 ),
        .I2(init_wait_count_reg[6]),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \init_wait_count[7]_i_3__0 
       (.I0(init_wait_count_reg[5]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[6]),
        .I3(init_wait_count_reg[1]),
        .O(\init_wait_count[7]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \init_wait_count[7]_i_4 
       (.I0(init_wait_count_reg[5]),
        .I1(init_wait_count_reg[4]),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[0]),
        .I4(init_wait_count_reg[1]),
        .I5(init_wait_count_reg[3]),
        .O(\init_wait_count[7]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(out),
        .D(\init_wait_count[0]_i_1_n_0 ),
        .Q(init_wait_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(out),
        .D(p_0_in__1[1]),
        .Q(init_wait_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(out),
        .D(p_0_in__1[2]),
        .Q(init_wait_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(out),
        .D(p_0_in__1[3]),
        .Q(init_wait_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(out),
        .D(p_0_in__1[4]),
        .Q(init_wait_count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(out),
        .D(p_0_in__1[5]),
        .Q(init_wait_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(out),
        .D(p_0_in__1[6]),
        .Q(init_wait_count_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(out),
        .D(p_0_in__1[7]),
        .Q(init_wait_count_reg[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFF01000000)) 
    init_wait_done_i_1
       (.I0(\init_wait_count[7]_i_3__0_n_0 ),
        .I1(init_wait_count_reg[7]),
        .I2(init_wait_count_reg[4]),
        .I3(init_wait_count_reg[3]),
        .I4(init_wait_count_reg[2]),
        .I5(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .CLR(out),
        .D(init_wait_done_i_1_n_0),
        .Q(init_wait_done_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1 
       (.I0(mmcm_lock_count_reg[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1 
       (.I0(mmcm_lock_count_reg[1]),
        .I1(mmcm_lock_count_reg[0]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \mmcm_lock_count[2]_i_1 
       (.I0(mmcm_lock_count_reg[2]),
        .I1(mmcm_lock_count_reg[1]),
        .I2(mmcm_lock_count_reg[0]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \mmcm_lock_count[3]_i_1 
       (.I0(mmcm_lock_count_reg[3]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[1]),
        .I3(mmcm_lock_count_reg[2]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[4]_i_1 
       (.I0(mmcm_lock_count_reg[4]),
        .I1(mmcm_lock_count_reg[2]),
        .I2(mmcm_lock_count_reg[1]),
        .I3(mmcm_lock_count_reg[0]),
        .I4(mmcm_lock_count_reg[3]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \mmcm_lock_count[5]_i_1 
       (.I0(mmcm_lock_count_reg[3]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[1]),
        .I3(mmcm_lock_count_reg[2]),
        .I4(mmcm_lock_count_reg[4]),
        .I5(mmcm_lock_count_reg[5]),
        .O(p_0_in__2[5]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[6]_i_1 
       (.I0(mmcm_lock_count_reg[6]),
        .I1(mmcm_lock_reclocked_i_2_n_0),
        .O(p_0_in__2[6]));
  LUT3 #(
    .INIT(8'h7F)) 
    \mmcm_lock_count[7]_i_2 
       (.I0(mmcm_lock_count_reg[6]),
        .I1(mmcm_lock_reclocked_i_2_n_0),
        .I2(mmcm_lock_count_reg[7]),
        .O(\mmcm_lock_count[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \mmcm_lock_count[7]_i_3 
       (.I0(mmcm_lock_count_reg[7]),
        .I1(mmcm_lock_reclocked_i_2_n_0),
        .I2(mmcm_lock_count_reg[6]),
        .O(p_0_in__2[7]));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__2[0]),
        .Q(mmcm_lock_count_reg[0]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__2[1]),
        .Q(mmcm_lock_count_reg[1]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__2[2]),
        .Q(mmcm_lock_count_reg[2]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__2[3]),
        .Q(mmcm_lock_count_reg[3]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__2[4]),
        .Q(mmcm_lock_count_reg[4]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__2[5]),
        .Q(mmcm_lock_count_reg[5]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__2[6]),
        .Q(mmcm_lock_count_reg[6]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__2[7]),
        .Q(mmcm_lock_count_reg[7]),
        .R(sync_mmcm_lock_reclocked_n_0));
  LUT5 #(
    .INIT(32'hEAAA0000)) 
    mmcm_lock_reclocked_i_1
       (.I0(mmcm_lock_reclocked),
        .I1(mmcm_lock_count_reg[7]),
        .I2(mmcm_lock_reclocked_i_2_n_0),
        .I3(mmcm_lock_count_reg[6]),
        .I4(mmcm_lock_i),
        .O(mmcm_lock_reclocked_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mmcm_lock_reclocked_i_2
       (.I0(mmcm_lock_count_reg[5]),
        .I1(mmcm_lock_count_reg[4]),
        .I2(mmcm_lock_count_reg[2]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[0]),
        .I5(mmcm_lock_count_reg[3]),
        .O(mmcm_lock_reclocked_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(mmcm_lock_reclocked_i_1_n_0),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFBFBFFFF00000400)) 
    pll_reset_asserted_i_1
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[2]),
        .I3(PLL0_RESET0),
        .I4(tx_state[1]),
        .I5(pll_reset_asserted_reg_n_0),
        .O(pll_reset_asserted_i_1_n_0));
  LUT3 #(
    .INIT(8'h37)) 
    pll_reset_asserted_i_2
       (.I0(pll_reset_asserted_reg_n_0),
        .I1(refclk_stable_reg_n_0),
        .I2(gt0_pll0refclklost_out),
        .O(PLL0_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    pll_reset_asserted_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(pll_reset_asserted_i_1_n_0),
        .Q(pll_reset_asserted_reg_n_0),
        .R(out));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \refclk_stable_count[0]_i_1 
       (.I0(\refclk_stable_count[0]_i_3_n_0 ),
        .I1(refclk_stable_count_reg[4]),
        .I2(refclk_stable_count_reg[8]),
        .I3(refclk_stable_count_reg[5]),
        .I4(refclk_stable_count_reg[17]),
        .I5(\refclk_stable_count[0]_i_4_n_0 ),
        .O(refclk_stable_count));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \refclk_stable_count[0]_i_3 
       (.I0(refclk_stable_count_reg[2]),
        .I1(refclk_stable_count_reg[15]),
        .I2(refclk_stable_count_reg[0]),
        .I3(refclk_stable_count_reg[11]),
        .I4(\refclk_stable_count[0]_i_6_n_0 ),
        .I5(\refclk_stable_count[0]_i_7_n_0 ),
        .O(\refclk_stable_count[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \refclk_stable_count[0]_i_4 
       (.I0(refclk_stable_count_reg[6]),
        .I1(refclk_stable_count_reg[1]),
        .I2(refclk_stable_count_reg[10]),
        .I3(refclk_stable_count_reg[18]),
        .O(\refclk_stable_count[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \refclk_stable_count[0]_i_5 
       (.I0(refclk_stable_count_reg[0]),
        .O(\refclk_stable_count[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \refclk_stable_count[0]_i_6 
       (.I0(refclk_stable_count_reg[13]),
        .I1(refclk_stable_count_reg[19]),
        .I2(refclk_stable_count_reg[12]),
        .I3(refclk_stable_count_reg[14]),
        .O(\refclk_stable_count[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \refclk_stable_count[0]_i_7 
       (.I0(refclk_stable_count_reg[16]),
        .I1(refclk_stable_count_reg[7]),
        .I2(refclk_stable_count_reg[9]),
        .I3(refclk_stable_count_reg[3]),
        .O(\refclk_stable_count[0]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[0]_i_2_n_7 ),
        .Q(refclk_stable_count_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\refclk_stable_count_reg[0]_i_2_n_0 ,\refclk_stable_count_reg[0]_i_2_n_1 ,\refclk_stable_count_reg[0]_i_2_n_2 ,\refclk_stable_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\refclk_stable_count_reg[0]_i_2_n_4 ,\refclk_stable_count_reg[0]_i_2_n_5 ,\refclk_stable_count_reg[0]_i_2_n_6 ,\refclk_stable_count_reg[0]_i_2_n_7 }),
        .S({refclk_stable_count_reg[3:1],\refclk_stable_count[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[10] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[8]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[11] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[8]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[12] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[12]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[12]_i_1 
       (.CI(\refclk_stable_count_reg[8]_i_1_n_0 ),
        .CO({\refclk_stable_count_reg[12]_i_1_n_0 ,\refclk_stable_count_reg[12]_i_1_n_1 ,\refclk_stable_count_reg[12]_i_1_n_2 ,\refclk_stable_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[12]_i_1_n_4 ,\refclk_stable_count_reg[12]_i_1_n_5 ,\refclk_stable_count_reg[12]_i_1_n_6 ,\refclk_stable_count_reg[12]_i_1_n_7 }),
        .S(refclk_stable_count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[13] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[12]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[14] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[12]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[15] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[12]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[16] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[16]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[16]_i_1 
       (.CI(\refclk_stable_count_reg[12]_i_1_n_0 ),
        .CO({\NLW_refclk_stable_count_reg[16]_i_1_CO_UNCONNECTED [3],\refclk_stable_count_reg[16]_i_1_n_1 ,\refclk_stable_count_reg[16]_i_1_n_2 ,\refclk_stable_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[16]_i_1_n_4 ,\refclk_stable_count_reg[16]_i_1_n_5 ,\refclk_stable_count_reg[16]_i_1_n_6 ,\refclk_stable_count_reg[16]_i_1_n_7 }),
        .S(refclk_stable_count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[17] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[16]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[18] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[16]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[19] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[16]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[0]_i_2_n_6 ),
        .Q(refclk_stable_count_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[0]_i_2_n_5 ),
        .Q(refclk_stable_count_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[0]_i_2_n_4 ),
        .Q(refclk_stable_count_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[4]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[4]_i_1 
       (.CI(\refclk_stable_count_reg[0]_i_2_n_0 ),
        .CO({\refclk_stable_count_reg[4]_i_1_n_0 ,\refclk_stable_count_reg[4]_i_1_n_1 ,\refclk_stable_count_reg[4]_i_1_n_2 ,\refclk_stable_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[4]_i_1_n_4 ,\refclk_stable_count_reg[4]_i_1_n_5 ,\refclk_stable_count_reg[4]_i_1_n_6 ,\refclk_stable_count_reg[4]_i_1_n_7 }),
        .S(refclk_stable_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[4]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[4]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[4]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[8] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[8]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[8]_i_1 
       (.CI(\refclk_stable_count_reg[4]_i_1_n_0 ),
        .CO({\refclk_stable_count_reg[8]_i_1_n_0 ,\refclk_stable_count_reg[8]_i_1_n_1 ,\refclk_stable_count_reg[8]_i_1_n_2 ,\refclk_stable_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[8]_i_1_n_4 ,\refclk_stable_count_reg[8]_i_1_n_5 ,\refclk_stable_count_reg[8]_i_1_n_6 ,\refclk_stable_count_reg[8]_i_1_n_7 }),
        .S(refclk_stable_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[9] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[8]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    refclk_stable_i_1
       (.I0(\refclk_stable_count[0]_i_4_n_0 ),
        .I1(refclk_stable_count_reg[17]),
        .I2(refclk_stable_count_reg[5]),
        .I3(refclk_stable_count_reg[8]),
        .I4(refclk_stable_count_reg[4]),
        .I5(\refclk_stable_count[0]_i_3_n_0 ),
        .O(refclk_stable_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    refclk_stable_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(refclk_stable_i_1_n_0),
        .Q(refclk_stable_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hB833)) 
    reset_time_out_i_3
       (.I0(txresetdone_s3),
        .I1(tx_state[1]),
        .I2(mmcm_lock_reclocked),
        .I3(tx_state[2]),
        .O(reset_time_out_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(sync_pll0lock_n_1),
        .Q(reset_time_out),
        .R(out));
  LUT5 #(
    .INIT(32'hFFEF0100)) 
    run_phase_alignment_int_i_1
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .I4(run_phase_alignment_int_reg_n_0),
        .O(run_phase_alignment_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(run_phase_alignment_int_i_1_n_0),
        .Q(run_phase_alignment_int_reg_n_0),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_s3_reg
       (.C(data_sync_reg1),
        .CE(1'b1),
        .D(run_phase_alignment_int_s2),
        .Q(run_phase_alignment_int_s3),
        .R(1'b0));
  gig_ethernet_pcs_pma_sync_block_7 sync_TXRESETDONE
       (.data_out(txresetdone_s2),
        .data_sync_reg1_0(data_sync_reg1_0),
        .independent_clock_bufg(independent_clock_bufg));
  gig_ethernet_pcs_pma_sync_block_8 sync_mmcm_lock_reclocked
       (.SR(sync_mmcm_lock_reclocked_n_0),
        .data_out(mmcm_lock_i),
        .data_sync_reg1_0(data_sync_reg1_1),
        .independent_clock_bufg(independent_clock_bufg));
  gig_ethernet_pcs_pma_sync_block_9 sync_pll0lock
       (.E(sync_pll0lock_n_0),
        .\FSM_sequential_tx_state[3]_i_3_0 (refclk_stable_reg_n_0),
        .\FSM_sequential_tx_state[3]_i_3_1 (pll_reset_asserted_reg_n_0),
        .\FSM_sequential_tx_state[3]_i_3_2 (time_out_500us_reg_n_0),
        .\FSM_sequential_tx_state[3]_i_3_3 (time_out_2ms_reg_n_0),
        .\FSM_sequential_tx_state_reg[0] (init_wait_done_reg_n_0),
        .\FSM_sequential_tx_state_reg[0]_0 (\FSM_sequential_tx_state[3]_i_4_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_1 (\FSM_sequential_tx_state[3]_i_7_n_0 ),
        .\FSM_sequential_tx_state_reg[1] (sync_pll0lock_n_1),
        .Q(tx_state),
        .gt0_pll0lock_out(gt0_pll0lock_out),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .reset_time_out(reset_time_out),
        .reset_time_out_reg(reset_time_out_i_3_n_0),
        .sel(sel),
        .txresetdone_s3(txresetdone_s3));
  gig_ethernet_pcs_pma_sync_block_10 sync_run_phase_alignment_int
       (.data_in(run_phase_alignment_int_reg_n_0),
        .data_out(run_phase_alignment_int_s2),
        .data_sync_reg6_0(data_sync_reg1));
  gig_ethernet_pcs_pma_sync_block_11 sync_time_out_wait_bypass
       (.data_in(time_out_wait_bypass_reg_n_0),
        .data_out(time_out_wait_bypass_s2),
        .independent_clock_bufg(independent_clock_bufg));
  gig_ethernet_pcs_pma_sync_block_12 sync_tx_fsm_reset_done_int
       (.data_in(data_in),
        .data_out(tx_fsm_reset_done_int_s2),
        .data_sync_reg1_0(data_sync_reg1));
  LUT6 #(
    .INIT(64'h00000000FFFF0004)) 
    time_out_2ms_i_1
       (.I0(time_out_2ms_i_2__0_n_0),
        .I1(time_out_2ms_i_3__0_n_0),
        .I2(time_out_2ms_i_4__0_n_0),
        .I3(time_out_2ms_i_5__0_n_0),
        .I4(time_out_2ms_reg_n_0),
        .I5(reset_time_out),
        .O(time_out_2ms_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF0DFFFF)) 
    time_out_2ms_i_2__0
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[13]),
        .I2(time_out_counter_reg[14]),
        .I3(time_out_counter_reg[4]),
        .I4(time_out_counter_reg[11]),
        .I5(time_out_counter_reg[5]),
        .O(time_out_2ms_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    time_out_2ms_i_3__0
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[2]),
        .I3(time_out_counter_reg[0]),
        .O(time_out_2ms_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    time_out_2ms_i_4__0
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[15]),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_counter_reg[18]),
        .I4(time_out_counter_reg[9]),
        .I5(time_out_counter_reg[17]),
        .O(time_out_2ms_i_4__0_n_0));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    time_out_2ms_i_5__0
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[8]),
        .I2(time_out_counter_reg[6]),
        .I3(time_out_counter_reg[7]),
        .I4(time_out_counter_reg[14]),
        .O(time_out_2ms_i_5__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_2ms_i_1_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAAABAAA)) 
    time_out_500us_i_1
       (.I0(time_out_500us_reg_n_0),
        .I1(time_out_500us_i_2_n_0),
        .I2(time_tlock_max_i_3__0_n_0),
        .I3(time_tlock_max_i_2__0_n_0),
        .I4(time_out_2ms_i_5__0_n_0),
        .I5(reset_time_out),
        .O(time_out_500us_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFF2FFFFFFFFFF)) 
    time_out_500us_i_2
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[13]),
        .I2(time_out_counter_reg[14]),
        .I3(time_out_counter_reg[15]),
        .I4(time_out_counter_reg[11]),
        .I5(time_out_counter_reg[16]),
        .O(time_out_500us_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_500us_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_500us_i_1_n_0),
        .Q(time_out_500us_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \time_out_counter[0]_i_1__0 
       (.I0(time_out_2ms_i_2__0_n_0),
        .I1(time_out_2ms_i_3__0_n_0),
        .I2(time_out_2ms_i_4__0_n_0),
        .I3(time_out_2ms_i_5__0_n_0),
        .O(time_out_counter));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_3 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2_n_0 ,\time_out_counter_reg[0]_i_2_n_1 ,\time_out_counter_reg[0]_i_2_n_2 ,\time_out_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2_n_4 ,\time_out_counter_reg[0]_i_2_n_5 ,\time_out_counter_reg[0]_i_2_n_6 ,\time_out_counter_reg[0]_i_2_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[12]_i_1 
       (.CI(\time_out_counter_reg[8]_i_1_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1_n_0 ,\time_out_counter_reg[12]_i_1_n_1 ,\time_out_counter_reg[12]_i_1_n_2 ,\time_out_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1_n_4 ,\time_out_counter_reg[12]_i_1_n_5 ,\time_out_counter_reg[12]_i_1_n_6 ,\time_out_counter_reg[12]_i_1_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[16]_i_1 
       (.CI(\time_out_counter_reg[12]_i_1_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED [3:2],\time_out_counter_reg[16]_i_1_n_2 ,\time_out_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED [3],\time_out_counter_reg[16]_i_1_n_5 ,\time_out_counter_reg[16]_i_1_n_6 ,\time_out_counter_reg[16]_i_1_n_7 }),
        .S({1'b0,time_out_counter_reg[18:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[18] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_5 ),
        .Q(time_out_counter_reg[18]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[4]_i_1 
       (.CI(\time_out_counter_reg[0]_i_2_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1_n_0 ,\time_out_counter_reg[4]_i_1_n_1 ,\time_out_counter_reg[4]_i_1_n_2 ,\time_out_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1_n_4 ,\time_out_counter_reg[4]_i_1_n_5 ,\time_out_counter_reg[4]_i_1_n_6 ,\time_out_counter_reg[4]_i_1_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[8]_i_1 
       (.CI(\time_out_counter_reg[4]_i_1_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1_n_0 ,\time_out_counter_reg[8]_i_1_n_1 ,\time_out_counter_reg[8]_i_1_n_2 ,\time_out_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1_n_4 ,\time_out_counter_reg[8]_i_1_n_5 ,\time_out_counter_reg[8]_i_1_n_6 ,\time_out_counter_reg[8]_i_1_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out));
  LUT4 #(
    .INIT(16'hAB00)) 
    time_out_wait_bypass_i_1
       (.I0(time_out_wait_bypass_reg_n_0),
        .I1(tx_fsm_reset_done_int_s3),
        .I2(time_out_wait_bypass_i_2_n_0),
        .I3(run_phase_alignment_int_s3),
        .O(time_out_wait_bypass_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFEFFFFFFFFF)) 
    time_out_wait_bypass_i_2
       (.I0(time_out_wait_bypass_i_3_n_0),
        .I1(time_out_wait_bypass_i_4_n_0),
        .I2(wait_bypass_count_reg[5]),
        .I3(wait_bypass_count_reg[13]),
        .I4(wait_bypass_count_reg[11]),
        .I5(time_out_wait_bypass_i_5_n_0),
        .O(time_out_wait_bypass_i_2_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    time_out_wait_bypass_i_3
       (.I0(wait_bypass_count_reg[16]),
        .I1(wait_bypass_count_reg[9]),
        .I2(wait_bypass_count_reg[12]),
        .I3(wait_bypass_count_reg[10]),
        .O(time_out_wait_bypass_i_3_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    time_out_wait_bypass_i_4
       (.I0(wait_bypass_count_reg[4]),
        .I1(wait_bypass_count_reg[15]),
        .I2(wait_bypass_count_reg[6]),
        .I3(wait_bypass_count_reg[0]),
        .O(time_out_wait_bypass_i_4_n_0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    time_out_wait_bypass_i_5
       (.I0(wait_bypass_count_reg[8]),
        .I1(wait_bypass_count_reg[1]),
        .I2(wait_bypass_count_reg[7]),
        .I3(wait_bypass_count_reg[14]),
        .I4(wait_bypass_count_reg[2]),
        .I5(wait_bypass_count_reg[3]),
        .O(time_out_wait_bypass_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_reg
       (.C(data_sync_reg1),
        .CE(1'b1),
        .D(time_out_wait_bypass_i_1_n_0),
        .Q(time_out_wait_bypass_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_s3_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAAAEAAA)) 
    time_tlock_max_i_1
       (.I0(time_tlock_max_reg_n_0),
        .I1(time_tlock_max_i_2__0_n_0),
        .I2(time_tlock_max_i_3__0_n_0),
        .I3(time_tlock_max_i_4__0_n_0),
        .I4(time_tlock_max_i_5__0_n_0),
        .I5(reset_time_out),
        .O(time_tlock_max_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    time_tlock_max_i_2__0
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[2]),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[1]),
        .I4(time_out_counter_reg[5]),
        .I5(time_out_counter_reg[4]),
        .O(time_tlock_max_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h0040)) 
    time_tlock_max_i_3__0
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[9]),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_counter_reg[18]),
        .O(time_tlock_max_i_3__0_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    time_tlock_max_i_4__0
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[12]),
        .O(time_tlock_max_i_4__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    time_tlock_max_i_5__0
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[8]),
        .I2(time_out_counter_reg[6]),
        .I3(time_out_counter_reg[11]),
        .I4(time_out_counter_reg[15]),
        .I5(time_out_counter_reg[16]),
        .O(time_tlock_max_i_5__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_tlock_max_i_1_n_0),
        .Q(time_tlock_max_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF0200)) 
    tx_fsm_reset_done_int_i_1
       (.I0(tx_state[0]),
        .I1(tx_state[1]),
        .I2(tx_state[2]),
        .I3(tx_state[3]),
        .I4(data_in),
        .O(tx_fsm_reset_done_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(tx_fsm_reset_done_int_i_1_n_0),
        .Q(data_in),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_s3_reg
       (.C(data_sync_reg1),
        .CE(1'b1),
        .D(tx_fsm_reset_done_int_s2),
        .Q(tx_fsm_reset_done_int_s3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    txresetdone_s3_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(txresetdone_s2),
        .Q(txresetdone_s3),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_1 
       (.I0(run_phase_alignment_int_s3),
        .O(clear));
  LUT2 #(
    .INIT(4'h2)) 
    \wait_bypass_count[0]_i_2 
       (.I0(time_out_wait_bypass_i_2_n_0),
        .I1(tx_fsm_reset_done_int_s3),
        .O(\wait_bypass_count[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_4__0 
       (.I0(wait_bypass_count_reg[0]),
        .O(\wait_bypass_count[0]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[0] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_7 ),
        .Q(wait_bypass_count_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\wait_bypass_count_reg[0]_i_3_n_0 ,\wait_bypass_count_reg[0]_i_3_n_1 ,\wait_bypass_count_reg[0]_i_3_n_2 ,\wait_bypass_count_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wait_bypass_count_reg[0]_i_3_n_4 ,\wait_bypass_count_reg[0]_i_3_n_5 ,\wait_bypass_count_reg[0]_i_3_n_6 ,\wait_bypass_count_reg[0]_i_3_n_7 }),
        .S({wait_bypass_count_reg[3:1],\wait_bypass_count[0]_i_4__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[10] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[11] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[12] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[12]_i_1 
       (.CI(\wait_bypass_count_reg[8]_i_1_n_0 ),
        .CO({\wait_bypass_count_reg[12]_i_1_n_0 ,\wait_bypass_count_reg[12]_i_1_n_1 ,\wait_bypass_count_reg[12]_i_1_n_2 ,\wait_bypass_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[12]_i_1_n_4 ,\wait_bypass_count_reg[12]_i_1_n_5 ,\wait_bypass_count_reg[12]_i_1_n_6 ,\wait_bypass_count_reg[12]_i_1_n_7 }),
        .S(wait_bypass_count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[13] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[14] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[15] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[16] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[16]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[16]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[16]_i_1 
       (.CI(\wait_bypass_count_reg[12]_i_1_n_0 ),
        .CO(\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED [3:1],\wait_bypass_count_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,wait_bypass_count_reg[16]}));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[1] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_6 ),
        .Q(wait_bypass_count_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[2] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_5 ),
        .Q(wait_bypass_count_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[3] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_4 ),
        .Q(wait_bypass_count_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[4] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[4]_i_1 
       (.CI(\wait_bypass_count_reg[0]_i_3_n_0 ),
        .CO({\wait_bypass_count_reg[4]_i_1_n_0 ,\wait_bypass_count_reg[4]_i_1_n_1 ,\wait_bypass_count_reg[4]_i_1_n_2 ,\wait_bypass_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[4]_i_1_n_4 ,\wait_bypass_count_reg[4]_i_1_n_5 ,\wait_bypass_count_reg[4]_i_1_n_6 ,\wait_bypass_count_reg[4]_i_1_n_7 }),
        .S(wait_bypass_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[5] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[6] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[7] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[8] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[8]_i_1 
       (.CI(\wait_bypass_count_reg[4]_i_1_n_0 ),
        .CO({\wait_bypass_count_reg[8]_i_1_n_0 ,\wait_bypass_count_reg[8]_i_1_n_1 ,\wait_bypass_count_reg[8]_i_1_n_2 ,\wait_bypass_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[8]_i_1_n_4 ,\wait_bypass_count_reg[8]_i_1_n_5 ,\wait_bypass_count_reg[8]_i_1_n_6 ,\wait_bypass_count_reg[8]_i_1_n_7 }),
        .S(wait_bypass_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[9] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[9]),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_10 
       (.I0(wait_time_cnt_reg[1]),
        .O(\wait_time_cnt[0]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_11 
       (.I0(wait_time_cnt_reg[0]),
        .O(\wait_time_cnt[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0444)) 
    \wait_time_cnt[0]_i_1__0 
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[1]),
        .I3(tx_state[2]),
        .O(wait_time_cnt0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_2 
       (.I0(\wait_time_cnt[0]_i_4_n_0 ),
        .I1(\wait_time_cnt[0]_i_5_n_0 ),
        .I2(\wait_time_cnt[0]_i_6_n_0 ),
        .I3(\wait_time_cnt[0]_i_7_n_0 ),
        .O(sel));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_4 
       (.I0(wait_time_cnt_reg[11]),
        .I1(wait_time_cnt_reg[5]),
        .I2(wait_time_cnt_reg[13]),
        .I3(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_5 
       (.I0(wait_time_cnt_reg[8]),
        .I1(wait_time_cnt_reg[7]),
        .I2(wait_time_cnt_reg[15]),
        .I3(wait_time_cnt_reg[10]),
        .O(\wait_time_cnt[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_6 
       (.I0(wait_time_cnt_reg[2]),
        .I1(wait_time_cnt_reg[1]),
        .I2(wait_time_cnt_reg[4]),
        .I3(wait_time_cnt_reg[0]),
        .O(\wait_time_cnt[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_7 
       (.I0(wait_time_cnt_reg[12]),
        .I1(wait_time_cnt_reg[3]),
        .I2(wait_time_cnt_reg[14]),
        .I3(wait_time_cnt_reg[9]),
        .O(\wait_time_cnt[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_8 
       (.I0(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_9 
       (.I0(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_2 
       (.I0(wait_time_cnt_reg[15]),
        .O(\wait_time_cnt[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_3 
       (.I0(wait_time_cnt_reg[14]),
        .O(\wait_time_cnt[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_4 
       (.I0(wait_time_cnt_reg[13]),
        .O(\wait_time_cnt[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_5 
       (.I0(wait_time_cnt_reg[12]),
        .O(\wait_time_cnt[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_2 
       (.I0(wait_time_cnt_reg[7]),
        .O(\wait_time_cnt[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_3 
       (.I0(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_4 
       (.I0(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_5 
       (.I0(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_2 
       (.I0(wait_time_cnt_reg[11]),
        .O(\wait_time_cnt[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_3 
       (.I0(wait_time_cnt_reg[10]),
        .O(\wait_time_cnt[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_4 
       (.I0(wait_time_cnt_reg[9]),
        .O(\wait_time_cnt[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_5 
       (.I0(wait_time_cnt_reg[8]),
        .O(\wait_time_cnt[8]_i_5_n_0 ));
  FDRE \wait_time_cnt_reg[0] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt_reg[0]_i_3_n_7 ),
        .Q(wait_time_cnt_reg[0]),
        .R(wait_time_cnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_time_cnt_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\wait_time_cnt_reg[0]_i_3_n_0 ,\wait_time_cnt_reg[0]_i_3_n_1 ,\wait_time_cnt_reg[0]_i_3_n_2 ,\wait_time_cnt_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[0]_i_3_n_4 ,\wait_time_cnt_reg[0]_i_3_n_5 ,\wait_time_cnt_reg[0]_i_3_n_6 ,\wait_time_cnt_reg[0]_i_3_n_7 }),
        .S({\wait_time_cnt[0]_i_8_n_0 ,\wait_time_cnt[0]_i_9_n_0 ,\wait_time_cnt[0]_i_10_n_0 ,\wait_time_cnt[0]_i_11_n_0 }));
  FDSE \wait_time_cnt_reg[10] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt_reg[8]_i_1_n_5 ),
        .Q(wait_time_cnt_reg[10]),
        .S(wait_time_cnt0));
  FDRE \wait_time_cnt_reg[11] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt_reg[8]_i_1_n_4 ),
        .Q(wait_time_cnt_reg[11]),
        .R(wait_time_cnt0));
  FDRE \wait_time_cnt_reg[12] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt_reg[12]_i_1_n_7 ),
        .Q(wait_time_cnt_reg[12]),
        .R(wait_time_cnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_time_cnt_reg[12]_i_1 
       (.CI(\wait_time_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_wait_time_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\wait_time_cnt_reg[12]_i_1_n_1 ,\wait_time_cnt_reg[12]_i_1_n_2 ,\wait_time_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[12]_i_1_n_4 ,\wait_time_cnt_reg[12]_i_1_n_5 ,\wait_time_cnt_reg[12]_i_1_n_6 ,\wait_time_cnt_reg[12]_i_1_n_7 }),
        .S({\wait_time_cnt[12]_i_2_n_0 ,\wait_time_cnt[12]_i_3_n_0 ,\wait_time_cnt[12]_i_4_n_0 ,\wait_time_cnt[12]_i_5_n_0 }));
  FDRE \wait_time_cnt_reg[13] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt_reg[12]_i_1_n_6 ),
        .Q(wait_time_cnt_reg[13]),
        .R(wait_time_cnt0));
  FDRE \wait_time_cnt_reg[14] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt_reg[12]_i_1_n_5 ),
        .Q(wait_time_cnt_reg[14]),
        .R(wait_time_cnt0));
  FDRE \wait_time_cnt_reg[15] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt_reg[12]_i_1_n_4 ),
        .Q(wait_time_cnt_reg[15]),
        .R(wait_time_cnt0));
  FDRE \wait_time_cnt_reg[1] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt_reg[0]_i_3_n_6 ),
        .Q(wait_time_cnt_reg[1]),
        .R(wait_time_cnt0));
  FDRE \wait_time_cnt_reg[2] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt_reg[0]_i_3_n_5 ),
        .Q(wait_time_cnt_reg[2]),
        .R(wait_time_cnt0));
  FDRE \wait_time_cnt_reg[3] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt_reg[0]_i_3_n_4 ),
        .Q(wait_time_cnt_reg[3]),
        .R(wait_time_cnt0));
  FDSE \wait_time_cnt_reg[4] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt_reg[4]_i_1_n_7 ),
        .Q(wait_time_cnt_reg[4]),
        .S(wait_time_cnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_time_cnt_reg[4]_i_1 
       (.CI(\wait_time_cnt_reg[0]_i_3_n_0 ),
        .CO({\wait_time_cnt_reg[4]_i_1_n_0 ,\wait_time_cnt_reg[4]_i_1_n_1 ,\wait_time_cnt_reg[4]_i_1_n_2 ,\wait_time_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[4]_i_1_n_4 ,\wait_time_cnt_reg[4]_i_1_n_5 ,\wait_time_cnt_reg[4]_i_1_n_6 ,\wait_time_cnt_reg[4]_i_1_n_7 }),
        .S({\wait_time_cnt[4]_i_2_n_0 ,\wait_time_cnt[4]_i_3_n_0 ,\wait_time_cnt[4]_i_4_n_0 ,\wait_time_cnt[4]_i_5_n_0 }));
  FDRE \wait_time_cnt_reg[5] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt_reg[4]_i_1_n_6 ),
        .Q(wait_time_cnt_reg[5]),
        .R(wait_time_cnt0));
  FDSE \wait_time_cnt_reg[6] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt_reg[4]_i_1_n_5 ),
        .Q(wait_time_cnt_reg[6]),
        .S(wait_time_cnt0));
  FDSE \wait_time_cnt_reg[7] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt_reg[4]_i_1_n_4 ),
        .Q(wait_time_cnt_reg[7]),
        .S(wait_time_cnt0));
  FDSE \wait_time_cnt_reg[8] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt_reg[8]_i_1_n_7 ),
        .Q(wait_time_cnt_reg[8]),
        .S(wait_time_cnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_time_cnt_reg[8]_i_1 
       (.CI(\wait_time_cnt_reg[4]_i_1_n_0 ),
        .CO({\wait_time_cnt_reg[8]_i_1_n_0 ,\wait_time_cnt_reg[8]_i_1_n_1 ,\wait_time_cnt_reg[8]_i_1_n_2 ,\wait_time_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[8]_i_1_n_4 ,\wait_time_cnt_reg[8]_i_1_n_5 ,\wait_time_cnt_reg[8]_i_1_n_6 ,\wait_time_cnt_reg[8]_i_1_n_7 }),
        .S({\wait_time_cnt[8]_i_2_n_0 ,\wait_time_cnt[8]_i_3_n_0 ,\wait_time_cnt[8]_i_4_n_0 ,\wait_time_cnt[8]_i_5_n_0 }));
  FDSE \wait_time_cnt_reg[9] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt_reg[8]_i_1_n_6 ),
        .Q(wait_time_cnt_reg[9]),
        .S(wait_time_cnt0));
endmodule

module gig_ethernet_pcs_pma_block
   (gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    an_interrupt,
    mdio_o,
    mdio_t,
    status_vector,
    resetdone,
    txn,
    txp,
    rxoutclk,
    txoutclk,
    mmcm_reset,
    gt0_pll0reset,
    out,
    signal_detect,
    userclk2,
    data_in,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    phyaddr,
    mdc,
    mdio_i,
    an_adv_config_vector,
    an_adv_config_val,
    an_restart_config,
    configuration_vector,
    configuration_valid,
    CLK,
    rxn,
    rxp,
    gt0_pll0outclk_out,
    gt0_pll0outrefclk_out,
    gt0_pll1outclk_out,
    gt0_pll1outrefclk_out,
    gtpe2_i,
    independent_clock_bufg,
    gt0_pll0refclklost_out,
    gt0_pll0lock_out);
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  output an_interrupt;
  output mdio_o;
  output mdio_t;
  output [12:0]status_vector;
  output resetdone;
  output txn;
  output txp;
  output rxoutclk;
  output txoutclk;
  output mmcm_reset;
  output gt0_pll0reset;
  input [0:0]out;
  input signal_detect;
  input userclk2;
  input data_in;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  input [4:0]phyaddr;
  input mdc;
  input mdio_i;
  input [5:0]an_adv_config_vector;
  input an_adv_config_val;
  input an_restart_config;
  input [4:0]configuration_vector;
  input configuration_valid;
  input CLK;
  input rxn;
  input rxp;
  input gt0_pll0outclk_out;
  input gt0_pll0outrefclk_out;
  input gt0_pll1outclk_out;
  input gt0_pll1outrefclk_out;
  input gtpe2_i;
  input independent_clock_bufg;
  input gt0_pll0refclklost_out;
  input gt0_pll0lock_out;

  wire CLK;
  wire an_adv_config_val;
  wire [5:0]an_adv_config_vector;
  wire an_interrupt;
  wire an_restart_config;
  wire configuration_valid;
  wire [4:0]configuration_vector;
  wire data_in;
  wire enablealign;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire gt0_pll0lock_out;
  wire gt0_pll0outclk_out;
  wire gt0_pll0outrefclk_out;
  wire gt0_pll0refclklost_out;
  wire gt0_pll0reset;
  wire gt0_pll1outclk_out;
  wire gt0_pll1outrefclk_out;
  wire gtpe2_i;
  wire independent_clock_bufg;
  wire mdc;
  wire mdio_i;
  wire mdio_o;
  wire mdio_t;
  wire mgt_rx_reset;
  wire mgt_tx_reset;
  wire mmcm_reset;
  wire [0:0]out;
  wire [4:0]phyaddr;
  wire powerdown;
  wire resetdone;
  wire [1:1]rxbufstatus;
  wire rxchariscomma;
  wire rxcharisk;
  wire [1:0]rxclkcorcnt;
  wire [7:0]rxdata;
  wire rxdisperr;
  wire rxn;
  wire rxnotintable;
  wire rxoutclk;
  wire rxp;
  wire signal_detect;
  wire [12:0]status_vector;
  wire transceiver_inst_n_12;
  wire transceiver_inst_n_13;
  wire tx_reset_done_i;
  wire txbuferr;
  wire txchardispmode;
  wire txchardispval;
  wire txcharisk;
  wire [7:0]txdata;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk2;
  wire NLW_gig_ethernet_pcs_pma_core_an_enable_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_core_drp_den_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_core_drp_dwe_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_core_drp_req_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_core_en_cdet_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_core_ewrap_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_core_loc_ref_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_core_s_axi_arready_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_core_s_axi_awready_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_core_s_axi_bvalid_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_core_s_axi_rvalid_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_core_s_axi_wready_UNCONNECTED;
  wire [9:0]NLW_gig_ethernet_pcs_pma_core_drp_daddr_UNCONNECTED;
  wire [15:0]NLW_gig_ethernet_pcs_pma_core_drp_di_UNCONNECTED;
  wire [63:0]NLW_gig_ethernet_pcs_pma_core_rxphy_correction_timer_UNCONNECTED;
  wire [31:0]NLW_gig_ethernet_pcs_pma_core_rxphy_ns_field_UNCONNECTED;
  wire [47:0]NLW_gig_ethernet_pcs_pma_core_rxphy_s_field_UNCONNECTED;
  wire [1:0]NLW_gig_ethernet_pcs_pma_core_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_gig_ethernet_pcs_pma_core_s_axi_rdata_UNCONNECTED;
  wire [1:0]NLW_gig_ethernet_pcs_pma_core_s_axi_rresp_UNCONNECTED;
  wire [1:0]NLW_gig_ethernet_pcs_pma_core_speed_selection_UNCONNECTED;
  wire [11:7]NLW_gig_ethernet_pcs_pma_core_status_vector_UNCONNECTED;
  wire [9:0]NLW_gig_ethernet_pcs_pma_core_tx_code_group_UNCONNECTED;

  (* B_SHIFTER_ADDR = "10'b0101010000" *) 
  (* C_1588 = "0" *) 
  (* C_2_5G = "FALSE" *) 
  (* C_COMPONENT_NAME = "gig_ethernet_pcs_pma" *) 
  (* C_DYNAMIC_SWITCHING = "FALSE" *) 
  (* C_ELABORATION_TRANSIENT_DIR = "BlankString" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AN = "TRUE" *) 
  (* C_HAS_AXIL = "FALSE" *) 
  (* C_HAS_MDIO = "TRUE" *) 
  (* C_HAS_TEMAC = "TRUE" *) 
  (* C_IS_SGMII = "FALSE" *) 
  (* C_RX_GMII_CLK = "TXOUTCLK" *) 
  (* C_SGMII_FABRIC_BUFFER = "TRUE" *) 
  (* C_SGMII_PHY_MODE = "FALSE" *) 
  (* C_USE_LVDS = "FALSE" *) 
  (* C_USE_TBI = "FALSE" *) 
  (* C_USE_TRANSCEIVER = "TRUE" *) 
  (* GT_RX_BYTE_WIDTH = "1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  gig_ethernet_pcs_pma_v16_2_13 gig_ethernet_pcs_pma_core
       (.an_adv_config_val(an_adv_config_val),
        .an_adv_config_vector({an_adv_config_vector[5],1'b0,an_adv_config_vector[4:3],1'b0,1'b0,1'b0,an_adv_config_vector[2:1],1'b0,an_adv_config_vector[0],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .an_enable(NLW_gig_ethernet_pcs_pma_core_an_enable_UNCONNECTED),
        .an_interrupt(an_interrupt),
        .an_restart_config(an_restart_config),
        .basex_or_sgmii(1'b0),
        .configuration_valid(configuration_valid),
        .configuration_vector(configuration_vector),
        .correction_timer({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dcm_locked(data_in),
        .drp_daddr(NLW_gig_ethernet_pcs_pma_core_drp_daddr_UNCONNECTED[9:0]),
        .drp_dclk(1'b0),
        .drp_den(NLW_gig_ethernet_pcs_pma_core_drp_den_UNCONNECTED),
        .drp_di(NLW_gig_ethernet_pcs_pma_core_drp_di_UNCONNECTED[15:0]),
        .drp_do({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_drdy(1'b0),
        .drp_dwe(NLW_gig_ethernet_pcs_pma_core_drp_dwe_UNCONNECTED),
        .drp_gnt(1'b0),
        .drp_req(NLW_gig_ethernet_pcs_pma_core_drp_req_UNCONNECTED),
        .en_cdet(NLW_gig_ethernet_pcs_pma_core_en_cdet_UNCONNECTED),
        .enablealign(enablealign),
        .ewrap(NLW_gig_ethernet_pcs_pma_core_ewrap_UNCONNECTED),
        .gmii_isolate(gmii_isolate),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .gtx_clk(1'b0),
        .link_timer_basex({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .link_timer_sgmii({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .link_timer_value({1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1}),
        .loc_ref(NLW_gig_ethernet_pcs_pma_core_loc_ref_UNCONNECTED),
        .mdc(mdc),
        .mdio_in(mdio_i),
        .mdio_out(mdio_o),
        .mdio_tri(mdio_t),
        .mgt_rx_reset(mgt_rx_reset),
        .mgt_tx_reset(mgt_tx_reset),
        .phyad(phyaddr),
        .pma_rx_clk0(1'b0),
        .pma_rx_clk1(1'b0),
        .powerdown(powerdown),
        .reset(out),
        .reset_done(resetdone),
        .rx_code_group0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_code_group1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_gt_nominal_latency({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0}),
        .rxbufstatus({rxbufstatus,1'b0}),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .rxclkcorcnt({1'b0,rxclkcorcnt}),
        .rxdata(rxdata),
        .rxdisperr(rxdisperr),
        .rxnotintable(rxnotintable),
        .rxphy_correction_timer(NLW_gig_ethernet_pcs_pma_core_rxphy_correction_timer_UNCONNECTED[63:0]),
        .rxphy_ns_field(NLW_gig_ethernet_pcs_pma_core_rxphy_ns_field_UNCONNECTED[31:0]),
        .rxphy_s_field(NLW_gig_ethernet_pcs_pma_core_rxphy_s_field_UNCONNECTED[47:0]),
        .rxrecclk(1'b0),
        .rxrundisp(1'b0),
        .s_axi_aclk(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_gig_ethernet_pcs_pma_core_s_axi_arready_UNCONNECTED),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_gig_ethernet_pcs_pma_core_s_axi_awready_UNCONNECTED),
        .s_axi_awvalid(1'b0),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_gig_ethernet_pcs_pma_core_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_gig_ethernet_pcs_pma_core_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_gig_ethernet_pcs_pma_core_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_resetn(1'b0),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_gig_ethernet_pcs_pma_core_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_gig_ethernet_pcs_pma_core_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wready(NLW_gig_ethernet_pcs_pma_core_s_axi_wready_UNCONNECTED),
        .s_axi_wvalid(1'b0),
        .signal_detect(signal_detect),
        .speed_is_100(1'b0),
        .speed_is_10_100(1'b0),
        .speed_selection(NLW_gig_ethernet_pcs_pma_core_speed_selection_UNCONNECTED[1:0]),
        .status_vector({status_vector[12:9],NLW_gig_ethernet_pcs_pma_core_status_vector_UNCONNECTED[11:10],status_vector[8:7],NLW_gig_ethernet_pcs_pma_core_status_vector_UNCONNECTED[7],status_vector[6:0]}),
        .systemtimer_ns_field({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .systemtimer_s_field({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_code_group(NLW_gig_ethernet_pcs_pma_core_tx_code_group_UNCONNECTED[9:0]),
        .txbuferr(txbuferr),
        .txchardispmode(txchardispmode),
        .txchardispval(txchardispval),
        .txcharisk(txcharisk),
        .txdata(txdata),
        .userclk(1'b0),
        .userclk2(userclk2));
  gig_ethernet_pcs_pma_sync_block sync_block_rx_reset_done
       (.data_in(transceiver_inst_n_13),
        .data_out(tx_reset_done_i),
        .resetdone(resetdone),
        .userclk2(userclk2));
  gig_ethernet_pcs_pma_sync_block_0 sync_block_tx_reset_done
       (.data_in(transceiver_inst_n_12),
        .data_out(tx_reset_done_i),
        .userclk2(userclk2));
  gig_ethernet_pcs_pma_transceiver transceiver_inst
       (.CLK(CLK),
        .D(txchardispmode),
        .Q(rxclkcorcnt),
        .SR(mgt_tx_reset),
        .data_in(transceiver_inst_n_12),
        .data_sync_reg1(data_in),
        .enablealign(enablealign),
        .gt0_pll0lock_out(gt0_pll0lock_out),
        .gt0_pll0outclk_out(gt0_pll0outclk_out),
        .gt0_pll0outrefclk_out(gt0_pll0outrefclk_out),
        .gt0_pll0refclklost_out(gt0_pll0refclklost_out),
        .gt0_pll1outclk_out(gt0_pll1outclk_out),
        .gt0_pll1outrefclk_out(gt0_pll1outrefclk_out),
        .gtpe2_i(gtpe2_i),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_reset(mmcm_reset),
        .out(out),
        .powerdown(powerdown),
        .reset_in(gt0_pll0reset),
        .reset_sync5(mgt_rx_reset),
        .rx_fsm_reset_done_int_reg(transceiver_inst_n_13),
        .rxbufstatus(rxbufstatus),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .\rxdata_reg[7]_0 (rxdata),
        .rxdisperr(rxdisperr),
        .rxn(rxn),
        .rxnotintable(rxnotintable),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .status_vector(status_vector[1]),
        .txbuferr(txbuferr),
        .txchardispval_reg_reg_0(txchardispval),
        .txcharisk_reg_reg_0(txcharisk),
        .\txdata_reg_reg[7]_0 (txdata),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .userclk2(userclk2));
endmodule

module gig_ethernet_pcs_pma_clocking
   (gtrefclk_out,
    gtrefclk_bufg,
    mmcm_locked,
    userclk,
    userclk2,
    rxuserclk2_out,
    gtrefclk_p,
    gtrefclk_n,
    txoutclk,
    mmcm_reset,
    rxoutclk);
  output gtrefclk_out;
  output gtrefclk_bufg;
  output mmcm_locked;
  output userclk;
  output userclk2;
  output rxuserclk2_out;
  input gtrefclk_p;
  input gtrefclk_n;
  input txoutclk;
  input mmcm_reset;
  input rxoutclk;

  wire clkfbout;
  wire clkout0;
  wire clkout1;
  wire gtrefclk_bufg;
  wire gtrefclk_n;
  wire gtrefclk_out;
  wire gtrefclk_p;
  wire mmcm_locked;
  wire mmcm_reset;
  wire rxoutclk;
  wire rxuserclk2_out;
  wire txoutclk;
  wire txoutclk_bufg;
  wire userclk;
  wire userclk2;
  wire NLW_ibufds_gtrefclk_ODIV2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  BUFG bufg_gtrefclk
       (.I(gtrefclk_out),
        .O(gtrefclk_bufg));
  (* box_type = "PRIMITIVE" *) 
  BUFG bufg_txoutclk
       (.I(txoutclk),
        .O(txoutclk_bufg));
  (* box_type = "PRIMITIVE" *) 
  BUFG bufg_userclk
       (.I(clkout1),
        .O(userclk));
  (* box_type = "PRIMITIVE" *) 
  BUFG bufg_userclk2
       (.I(clkout0),
        .O(userclk2));
  (* box_type = "PRIMITIVE" *) 
  IBUFDS_GTE2 #(
    .CLKCM_CFG("TRUE"),
    .CLKRCV_TRST("TRUE"),
    .CLKSWING_CFG(2'b11)) 
    ibufds_gtrefclk
       (.CEB(1'b0),
        .I(gtrefclk_p),
        .IB(gtrefclk_n),
        .O(gtrefclk_out),
        .ODIV2(NLW_ibufds_gtrefclk_ODIV2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(16.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(16.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(8.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(16),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("INTERNAL"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout),
        .CLKFBOUT(clkfbout),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(txoutclk_bufg),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clkout0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(clkout1),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(mmcm_locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(mmcm_reset));
  (* box_type = "PRIMITIVE" *) 
  BUFG rxrecclkbufg
       (.I(rxoutclk),
        .O(rxuserclk2_out));
endmodule

module gig_ethernet_pcs_pma_common_reset
   (PLL0RESET_I,
    independent_clock_bufg,
    out,
    gt0_pll0reset,
    cpll_reset_i);
  output PLL0RESET_I;
  input independent_clock_bufg;
  input [0:0]out;
  input gt0_pll0reset;
  input cpll_reset_i;

  wire COMMON_RESET_i_1_n_0;
  wire PLL0RESET_I;
  wire common_reset_asserted;
  wire common_reset_asserted_i_1_n_0;
  wire commonreset_i;
  wire cpll_reset_i;
  wire gt0_pll0reset;
  wire independent_clock_bufg;
  wire init_wait_count;
  wire \init_wait_count[0]_i_1__1_n_0 ;
  wire \init_wait_count[7]_i_3_n_0 ;
  wire \init_wait_count[7]_i_4__1_n_0 ;
  wire [7:0]init_wait_count_reg;
  wire init_wait_done_i_1__1_n_0;
  wire init_wait_done_reg_n_0;
  wire [0:0]out;
  wire [7:1]p_0_in;
  wire state;
  wire state_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h74)) 
    COMMON_RESET_i_1
       (.I0(common_reset_asserted),
        .I1(state),
        .I2(commonreset_i),
        .O(COMMON_RESET_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    COMMON_RESET_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(COMMON_RESET_i_1_n_0),
        .Q(commonreset_i),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    common_reset_asserted_i_1
       (.I0(state),
        .I1(common_reset_asserted),
        .O(common_reset_asserted_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    common_reset_asserted_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(common_reset_asserted_i_1_n_0),
        .Q(common_reset_asserted),
        .R(out));
  LUT3 #(
    .INIT(8'hFE)) 
    gtpe2_common_i_i_1
       (.I0(commonreset_i),
        .I1(gt0_pll0reset),
        .I2(cpll_reset_i),
        .O(PLL0RESET_I));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1__1 
       (.I0(init_wait_count_reg[0]),
        .O(\init_wait_count[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1__1 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \init_wait_count[2]_i_1__1 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \init_wait_count[3]_i_1__1 
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[4]_i_1__1 
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[2]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[1]),
        .I4(init_wait_count_reg[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \init_wait_count[5]_i_1__1 
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[2]),
        .I4(init_wait_count_reg[4]),
        .I5(init_wait_count_reg[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[6]_i_1__1 
       (.I0(init_wait_count_reg[6]),
        .I1(\init_wait_count[7]_i_4__1_n_0 ),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \init_wait_count[7]_i_1 
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[7]),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[3]),
        .I4(\init_wait_count[7]_i_3_n_0 ),
        .O(init_wait_count));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \init_wait_count[7]_i_2__1 
       (.I0(init_wait_count_reg[7]),
        .I1(\init_wait_count[7]_i_4__1_n_0 ),
        .I2(init_wait_count_reg[6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \init_wait_count[7]_i_3 
       (.I0(init_wait_count_reg[5]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[6]),
        .I3(init_wait_count_reg[0]),
        .O(\init_wait_count[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \init_wait_count[7]_i_4__1 
       (.I0(init_wait_count_reg[5]),
        .I1(init_wait_count_reg[4]),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[0]),
        .I4(init_wait_count_reg[1]),
        .I5(init_wait_count_reg[3]),
        .O(\init_wait_count[7]_i_4__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .D(\init_wait_count[0]_i_1__1_n_0 ),
        .Q(init_wait_count_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .D(p_0_in[1]),
        .Q(init_wait_count_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .D(p_0_in[2]),
        .Q(init_wait_count_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .D(p_0_in[3]),
        .Q(init_wait_count_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .D(p_0_in[4]),
        .Q(init_wait_count_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .D(p_0_in[5]),
        .Q(init_wait_count_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .D(p_0_in[6]),
        .Q(init_wait_count_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .D(p_0_in[7]),
        .Q(init_wait_count_reg[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    init_wait_done_i_1__1
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[7]),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[3]),
        .I4(\init_wait_count[7]_i_3_n_0 ),
        .I5(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(init_wait_done_i_1__1_n_0),
        .Q(init_wait_done_reg_n_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    state_i_1
       (.I0(init_wait_done_reg_n_0),
        .I1(state),
        .O(state_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    state_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(state_i_1_n_0),
        .Q(state),
        .R(out));
endmodule

module gig_ethernet_pcs_pma_gt_common
   (gt0_pll0lock_out,
    gt0_pll0outclk_out,
    gt0_pll0outrefclk_out,
    gt0_pll0refclklost_out,
    gt0_pll1outclk_out,
    gt0_pll1outrefclk_out,
    cpll_reset_i,
    gtrefclk_out,
    independent_clock_bufg,
    PLL0RESET_I,
    gtrefclk_bufg);
  output gt0_pll0lock_out;
  output gt0_pll0outclk_out;
  output gt0_pll0outrefclk_out;
  output gt0_pll0refclklost_out;
  output gt0_pll1outclk_out;
  output gt0_pll1outrefclk_out;
  output cpll_reset_i;
  input gtrefclk_out;
  input independent_clock_bufg;
  input PLL0RESET_I;
  input gtrefclk_bufg;

  wire PLL0RESET_I;
  wire cpll_pd_i;
  wire cpll_reset_i;
  wire \cpllpd_wait_reg[31]_srl32_n_1 ;
  wire \cpllpd_wait_reg[63]_srl32_n_1 ;
  wire \cpllpd_wait_reg[94]_srl31_n_0 ;
  wire \cpllreset_wait_reg[126]_srl31_n_0 ;
  wire \cpllreset_wait_reg[31]_srl32_n_1 ;
  wire \cpllreset_wait_reg[63]_srl32_n_1 ;
  wire \cpllreset_wait_reg[95]_srl32_n_1 ;
  wire gt0_pll0lock_out;
  wire gt0_pll0outclk_out;
  wire gt0_pll0outrefclk_out;
  wire gt0_pll0refclklost_out;
  wire gt0_pll1outclk_out;
  wire gt0_pll1outrefclk_out;
  wire gtrefclk_bufg;
  wire gtrefclk_out;
  wire independent_clock_bufg;
  wire \NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED ;
  wire NLW_gtpe2_common_i_DRPRDY_UNCONNECTED;
  wire NLW_gtpe2_common_i_PLL0FBCLKLOST_UNCONNECTED;
  wire NLW_gtpe2_common_i_PLL1FBCLKLOST_UNCONNECTED;
  wire NLW_gtpe2_common_i_PLL1LOCK_UNCONNECTED;
  wire NLW_gtpe2_common_i_PLL1REFCLKLOST_UNCONNECTED;
  wire NLW_gtpe2_common_i_REFCLKOUTMONITOR0_UNCONNECTED;
  wire NLW_gtpe2_common_i_REFCLKOUTMONITOR1_UNCONNECTED;
  wire [7:0]NLW_gtpe2_common_i_DMONITOROUT_UNCONNECTED;
  wire [15:0]NLW_gtpe2_common_i_DRPDO_UNCONNECTED;
  wire [15:0]NLW_gtpe2_common_i_PMARSVDOUT_UNCONNECTED;

  (* srl_bus_name = "inst/\\core_gt_common_i/cpllpd_wait_reg " *) 
  (* srl_name = "inst/\\core_gt_common_i/cpllpd_wait_reg[31]_srl32 " *) 
  SRLC32E #(
    .INIT(32'hFFFFFFFF)) 
    \cpllpd_wait_reg[31]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gtrefclk_bufg),
        .D(1'b0),
        .Q(\NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllpd_wait_reg[31]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\core_gt_common_i/cpllpd_wait_reg " *) 
  (* srl_name = "inst/\\core_gt_common_i/cpllpd_wait_reg[63]_srl32 " *) 
  SRLC32E #(
    .INIT(32'hFFFFFFFF)) 
    \cpllpd_wait_reg[63]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gtrefclk_bufg),
        .D(\cpllpd_wait_reg[31]_srl32_n_1 ),
        .Q(\NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllpd_wait_reg[63]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\core_gt_common_i/cpllpd_wait_reg " *) 
  (* srl_name = "inst/\\core_gt_common_i/cpllpd_wait_reg[94]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h7FFFFFFF)) 
    \cpllpd_wait_reg[94]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(gtrefclk_bufg),
        .D(\cpllpd_wait_reg[63]_srl32_n_1 ),
        .Q(\cpllpd_wait_reg[94]_srl31_n_0 ),
        .Q31(\NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    \cpllpd_wait_reg[95] 
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[94]_srl31_n_0 ),
        .Q(cpll_pd_i),
        .R(1'b0));
  (* srl_bus_name = "inst/\\core_gt_common_i/cpllreset_wait_reg " *) 
  (* srl_name = "inst/\\core_gt_common_i/cpllreset_wait_reg[126]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \cpllreset_wait_reg[126]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(gtrefclk_bufg),
        .D(\cpllreset_wait_reg[95]_srl32_n_1 ),
        .Q(\cpllreset_wait_reg[126]_srl31_n_0 ),
        .Q31(\NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cpllreset_wait_reg[127] 
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(\cpllreset_wait_reg[126]_srl31_n_0 ),
        .Q(cpll_reset_i),
        .R(1'b0));
  (* srl_bus_name = "inst/\\core_gt_common_i/cpllreset_wait_reg " *) 
  (* srl_name = "inst/\\core_gt_common_i/cpllreset_wait_reg[31]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h000000FF)) 
    \cpllreset_wait_reg[31]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gtrefclk_bufg),
        .D(1'b0),
        .Q(\NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllreset_wait_reg[31]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\core_gt_common_i/cpllreset_wait_reg " *) 
  (* srl_name = "inst/\\core_gt_common_i/cpllreset_wait_reg[63]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \cpllreset_wait_reg[63]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gtrefclk_bufg),
        .D(\cpllreset_wait_reg[31]_srl32_n_1 ),
        .Q(\NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllreset_wait_reg[63]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\core_gt_common_i/cpllreset_wait_reg " *) 
  (* srl_name = "inst/\\core_gt_common_i/cpllreset_wait_reg[95]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \cpllreset_wait_reg[95]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gtrefclk_bufg),
        .D(\cpllreset_wait_reg[63]_srl32_n_1 ),
        .Q(\NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllreset_wait_reg[95]_srl32_n_1 ));
  (* box_type = "PRIMITIVE" *) 
  GTPE2_COMMON #(
    .BIAS_CFG(64'h0000000000050001),
    .COMMON_CFG(32'h00000000),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK0_INVERTED(1'b0),
    .IS_GTGREFCLK1_INVERTED(1'b0),
    .IS_PLL0LOCKDETCLK_INVERTED(1'b0),
    .IS_PLL1LOCKDETCLK_INVERTED(1'b0),
    .PLL0_CFG(27'h01F03DC),
    .PLL0_DMON_CFG(1'b0),
    .PLL0_FBDIV(4),
    .PLL0_FBDIV_45(5),
    .PLL0_INIT_CFG(24'h00001E),
    .PLL0_LOCK_CFG(9'h1E8),
    .PLL0_REFCLK_DIV(1),
    .PLL1_CFG(27'h01F03DC),
    .PLL1_DMON_CFG(1'b0),
    .PLL1_FBDIV(1),
    .PLL1_FBDIV_45(4),
    .PLL1_INIT_CFG(24'h00001E),
    .PLL1_LOCK_CFG(9'h1E8),
    .PLL1_REFCLK_DIV(1),
    .PLL_CLKOUT_CFG(8'b00000000),
    .RSVD_ATTR0(16'h0000),
    .RSVD_ATTR1(16'h0000),
    .SIM_PLL0REFCLK_SEL(3'b001),
    .SIM_PLL1REFCLK_SEL(3'b001),
    .SIM_RESET_SPEEDUP("FALSE"),
    .SIM_VERSION("2.0")) 
    gtpe2_common_i
       (.BGBYPASSB(1'b1),
        .BGMONITORENB(1'b1),
        .BGPDB(1'b1),
        .BGRCALOVRD({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BGRCALOVRDENB(1'b1),
        .DMONITOROUT(NLW_gtpe2_common_i_DMONITOROUT_UNCONNECTED[7:0]),
        .DRPADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPCLK(1'b0),
        .DRPDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPDO(NLW_gtpe2_common_i_DRPDO_UNCONNECTED[15:0]),
        .DRPEN(1'b0),
        .DRPRDY(NLW_gtpe2_common_i_DRPRDY_UNCONNECTED),
        .DRPWE(1'b0),
        .GTEASTREFCLK0(1'b0),
        .GTEASTREFCLK1(1'b0),
        .GTGREFCLK0(1'b0),
        .GTGREFCLK1(1'b0),
        .GTREFCLK0(gtrefclk_out),
        .GTREFCLK1(1'b0),
        .GTWESTREFCLK0(1'b0),
        .GTWESTREFCLK1(1'b0),
        .PLL0FBCLKLOST(NLW_gtpe2_common_i_PLL0FBCLKLOST_UNCONNECTED),
        .PLL0LOCK(gt0_pll0lock_out),
        .PLL0LOCKDETCLK(independent_clock_bufg),
        .PLL0LOCKEN(1'b1),
        .PLL0OUTCLK(gt0_pll0outclk_out),
        .PLL0OUTREFCLK(gt0_pll0outrefclk_out),
        .PLL0PD(cpll_pd_i),
        .PLL0REFCLKLOST(gt0_pll0refclklost_out),
        .PLL0REFCLKSEL({1'b0,1'b0,1'b1}),
        .PLL0RESET(PLL0RESET_I),
        .PLL1FBCLKLOST(NLW_gtpe2_common_i_PLL1FBCLKLOST_UNCONNECTED),
        .PLL1LOCK(NLW_gtpe2_common_i_PLL1LOCK_UNCONNECTED),
        .PLL1LOCKDETCLK(1'b0),
        .PLL1LOCKEN(1'b1),
        .PLL1OUTCLK(gt0_pll1outclk_out),
        .PLL1OUTREFCLK(gt0_pll1outrefclk_out),
        .PLL1PD(1'b1),
        .PLL1REFCLKLOST(NLW_gtpe2_common_i_PLL1REFCLKLOST_UNCONNECTED),
        .PLL1REFCLKSEL({1'b0,1'b0,1'b1}),
        .PLL1RESET(1'b0),
        .PLLRSVD1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PLLRSVD2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PMARSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PMARSVDOUT(NLW_gtpe2_common_i_PMARSVDOUT_UNCONNECTED[15:0]),
        .RCALENB(1'b1),
        .REFCLKOUTMONITOR0(NLW_gtpe2_common_i_REFCLKOUTMONITOR0_UNCONNECTED),
        .REFCLKOUTMONITOR1(NLW_gtpe2_common_i_REFCLKOUTMONITOR1_UNCONNECTED));
endmodule

module gig_ethernet_pcs_pma_gtwizard_gtrxreset_seq
   (gtrxreset_out,
    \FSM_onehot_state_reg[5]_0 ,
    DRPDI,
    \FSM_onehot_state_reg[7]_0 ,
    DRPADDR,
    CLK,
    \original_rd_data_reg[0]_0 ,
    SR,
    data_in,
    reset_sync5,
    D);
  output gtrxreset_out;
  output \FSM_onehot_state_reg[5]_0 ;
  output [15:0]DRPDI;
  output \FSM_onehot_state_reg[7]_0 ;
  output [0:0]DRPADDR;
  input CLK;
  input \original_rd_data_reg[0]_0 ;
  input [0:0]SR;
  input data_in;
  input reset_sync5;
  input [15:0]D;

  wire CLK;
  wire [15:0]D;
  wire [0:0]DRPADDR;
  wire [15:0]DRPDI;
  wire DRP_OP_DONE_i_1_n_0;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[7]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[5]_0 ;
  wire \FSM_onehot_state_reg[7]_0 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire [0:0]SR;
  wire data_in;
  wire drp_op_done;
  wire flag;
  wire flag_i_1_n_0;
  wire flag_reg_n_0;
  wire gtrxreset_i__0;
  wire gtrxreset_in_sync;
  wire gtrxreset_out;
  wire gtrxreset_s;
  wire gtrxreset_ss;
  wire [15:0]in7;
  wire next_rd_data;
  wire [15:0]original_rd_data;
  wire original_rd_data0;
  wire \original_rd_data_reg[0]_0 ;
  wire p_0_in;
  wire p_1_in;
  wire p_2_in;
  wire p_3_in;
  wire \rd_data[0]_i_1_n_0 ;
  wire \rd_data[10]_i_1_n_0 ;
  wire \rd_data[11]_i_1_n_0 ;
  wire \rd_data[12]_i_1_n_0 ;
  wire \rd_data[13]_i_1_n_0 ;
  wire \rd_data[14]_i_1_n_0 ;
  wire \rd_data[15]_i_2_n_0 ;
  wire \rd_data[1]_i_1_n_0 ;
  wire \rd_data[2]_i_1_n_0 ;
  wire \rd_data[3]_i_1_n_0 ;
  wire \rd_data[4]_i_1_n_0 ;
  wire \rd_data[5]_i_1_n_0 ;
  wire \rd_data[6]_i_1_n_0 ;
  wire \rd_data[7]_i_1_n_0 ;
  wire \rd_data[8]_i_1_n_0 ;
  wire \rd_data[9]_i_1_n_0 ;
  wire \rd_data_reg_n_0_[11] ;
  wire reset_sync5;
  wire rst_sync;
  wire rxpmaresetdone_s;
  wire rxpmaresetdone_ss;
  wire rxpmaresetdone_sss;
  wire rxpmaresetdone_sync;

  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    DRP_OP_DONE_i_1
       (.I0(\original_rd_data_reg[0]_0 ),
        .I1(flag),
        .I2(drp_op_done),
        .O(DRP_OP_DONE_i_1_n_0));
  FDCE DRP_OP_DONE_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(gtrxreset_ss),
        .D(DRP_OP_DONE_i_1_n_0),
        .Q(drp_op_done));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(p_2_in),
        .I1(\original_rd_data_reg[0]_0 ),
        .I2(flag),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\original_rd_data_reg[0]_0 ),
        .I1(flag),
        .I2(gtrxreset_ss),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(p_1_in),
        .I1(rxpmaresetdone_ss),
        .I2(rxpmaresetdone_sss),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'hFFD0D0D0)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(rxpmaresetdone_sss),
        .I1(rxpmaresetdone_ss),
        .I2(p_1_in),
        .I3(\original_rd_data_reg[0]_0 ),
        .I4(p_3_in),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\original_rd_data_reg[0]_0 ),
        .I2(p_3_in),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(p_0_in),
        .I1(\original_rd_data_reg[0]_0 ),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\original_rd_data_reg[0]_0 ),
        .I2(p_0_in),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(gtrxreset_ss),
        .O(\FSM_onehot_state[7]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(flag));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .PRE(rst_sync),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(p_2_in));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(p_1_in));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(p_3_in));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_onehot_state[6]_i_1_n_0 ),
        .Q(p_0_in));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_onehot_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    flag_i_1
       (.I0(flag),
        .I1(flag_reg_n_0),
        .I2(p_2_in),
        .I3(p_1_in),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .I5(p_3_in),
        .O(flag_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    flag_reg
       (.C(CLK),
        .CE(1'b1),
        .D(flag_i_1_n_0),
        .Q(flag_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    gtpe2_i_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(p_2_in),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(drp_op_done),
        .O(\FSM_onehot_state_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_10
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[9]),
        .I3(drp_op_done),
        .O(DRPDI[9]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_11
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[8]),
        .I3(drp_op_done),
        .O(DRPDI[8]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_12
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[7]),
        .I3(drp_op_done),
        .O(DRPDI[7]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_13
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[6]),
        .I3(drp_op_done),
        .O(DRPDI[6]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_14
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[5]),
        .I3(drp_op_done),
        .O(DRPDI[5]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_15
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[4]),
        .I3(drp_op_done),
        .O(DRPDI[4]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_16
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[3]),
        .I3(drp_op_done),
        .O(DRPDI[3]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_17
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[2]),
        .I3(drp_op_done),
        .O(DRPDI[2]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_18
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[1]),
        .I3(drp_op_done),
        .O(DRPDI[1]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_19
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[0]),
        .I3(drp_op_done),
        .O(DRPDI[0]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    gtpe2_i_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(p_2_in),
        .I2(drp_op_done),
        .O(\FSM_onehot_state_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT1 #(
    .INIT(2'h1)) 
    gtpe2_i_i_20
       (.I0(drp_op_done),
        .O(DRPADDR));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_4
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[15]),
        .I3(drp_op_done),
        .O(DRPDI[15]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_5
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[14]),
        .I3(drp_op_done),
        .O(DRPDI[14]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_6
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[13]),
        .I3(drp_op_done),
        .O(DRPDI[13]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_7
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[12]),
        .I3(drp_op_done),
        .O(DRPDI[12]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'h08)) 
    gtpe2_i_i_8
       (.I0(\rd_data_reg_n_0_[11] ),
        .I1(p_2_in),
        .I2(drp_op_done),
        .O(DRPDI[11]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_9
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[10]),
        .I3(drp_op_done),
        .O(DRPDI[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    gtrxreset_i
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(p_3_in),
        .I2(gtrxreset_ss),
        .I3(p_1_in),
        .I4(p_0_in),
        .I5(\FSM_onehot_state_reg_n_0_[5] ),
        .O(gtrxreset_i__0));
  FDCE gtrxreset_o_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(gtrxreset_i__0),
        .Q(gtrxreset_out));
  FDCE gtrxreset_s_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(gtrxreset_in_sync),
        .Q(gtrxreset_s));
  FDCE gtrxreset_ss_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(gtrxreset_s),
        .Q(gtrxreset_ss));
  LUT3 #(
    .INIT(8'h20)) 
    \original_rd_data[15]_i_1 
       (.I0(p_0_in),
        .I1(flag_reg_n_0),
        .I2(\original_rd_data_reg[0]_0 ),
        .O(original_rd_data0));
  FDRE \original_rd_data_reg[0] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[0]),
        .Q(original_rd_data[0]),
        .R(1'b0));
  FDRE \original_rd_data_reg[10] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[10]),
        .Q(original_rd_data[10]),
        .R(1'b0));
  FDRE \original_rd_data_reg[11] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[11]),
        .Q(original_rd_data[11]),
        .R(1'b0));
  FDRE \original_rd_data_reg[12] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[12]),
        .Q(original_rd_data[12]),
        .R(1'b0));
  FDRE \original_rd_data_reg[13] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[13]),
        .Q(original_rd_data[13]),
        .R(1'b0));
  FDRE \original_rd_data_reg[14] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[14]),
        .Q(original_rd_data[14]),
        .R(1'b0));
  FDRE \original_rd_data_reg[15] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[15]),
        .Q(original_rd_data[15]),
        .R(1'b0));
  FDRE \original_rd_data_reg[1] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[1]),
        .Q(original_rd_data[1]),
        .R(1'b0));
  FDRE \original_rd_data_reg[2] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[2]),
        .Q(original_rd_data[2]),
        .R(1'b0));
  FDRE \original_rd_data_reg[3] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[3]),
        .Q(original_rd_data[3]),
        .R(1'b0));
  FDRE \original_rd_data_reg[4] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[4]),
        .Q(original_rd_data[4]),
        .R(1'b0));
  FDRE \original_rd_data_reg[5] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[5]),
        .Q(original_rd_data[5]),
        .R(1'b0));
  FDRE \original_rd_data_reg[6] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[6]),
        .Q(original_rd_data[6]),
        .R(1'b0));
  FDRE \original_rd_data_reg[7] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[7]),
        .Q(original_rd_data[7]),
        .R(1'b0));
  FDRE \original_rd_data_reg[8] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[8]),
        .Q(original_rd_data[8]),
        .R(1'b0));
  FDRE \original_rd_data_reg[9] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[9]),
        .Q(original_rd_data[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[0]_i_1 
       (.I0(D[0]),
        .I1(original_rd_data[0]),
        .I2(flag_reg_n_0),
        .O(\rd_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[10]_i_1 
       (.I0(D[10]),
        .I1(original_rd_data[10]),
        .I2(flag_reg_n_0),
        .O(\rd_data[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[11]_i_1 
       (.I0(D[11]),
        .I1(original_rd_data[11]),
        .I2(flag_reg_n_0),
        .O(\rd_data[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[12]_i_1 
       (.I0(D[12]),
        .I1(original_rd_data[12]),
        .I2(flag_reg_n_0),
        .O(\rd_data[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[13]_i_1 
       (.I0(D[13]),
        .I1(original_rd_data[13]),
        .I2(flag_reg_n_0),
        .O(\rd_data[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[14]_i_1 
       (.I0(D[14]),
        .I1(original_rd_data[14]),
        .I2(flag_reg_n_0),
        .O(\rd_data[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_data[15]_i_1 
       (.I0(p_0_in),
        .I1(\original_rd_data_reg[0]_0 ),
        .O(next_rd_data));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[15]_i_2 
       (.I0(D[15]),
        .I1(original_rd_data[15]),
        .I2(flag_reg_n_0),
        .O(\rd_data[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[1]_i_1 
       (.I0(D[1]),
        .I1(original_rd_data[1]),
        .I2(flag_reg_n_0),
        .O(\rd_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[2]_i_1 
       (.I0(D[2]),
        .I1(original_rd_data[2]),
        .I2(flag_reg_n_0),
        .O(\rd_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[3]_i_1 
       (.I0(D[3]),
        .I1(original_rd_data[3]),
        .I2(flag_reg_n_0),
        .O(\rd_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[4]_i_1 
       (.I0(D[4]),
        .I1(original_rd_data[4]),
        .I2(flag_reg_n_0),
        .O(\rd_data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[5]_i_1 
       (.I0(D[5]),
        .I1(original_rd_data[5]),
        .I2(flag_reg_n_0),
        .O(\rd_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[6]_i_1 
       (.I0(D[6]),
        .I1(original_rd_data[6]),
        .I2(flag_reg_n_0),
        .O(\rd_data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[7]_i_1 
       (.I0(D[7]),
        .I1(original_rd_data[7]),
        .I2(flag_reg_n_0),
        .O(\rd_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[8]_i_1 
       (.I0(D[8]),
        .I1(original_rd_data[8]),
        .I2(flag_reg_n_0),
        .O(\rd_data[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[9]_i_1 
       (.I0(D[9]),
        .I1(original_rd_data[9]),
        .I2(flag_reg_n_0),
        .O(\rd_data[9]_i_1_n_0 ));
  FDCE \rd_data_reg[0] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[0]_i_1_n_0 ),
        .Q(in7[0]));
  FDCE \rd_data_reg[10] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[10]_i_1_n_0 ),
        .Q(in7[10]));
  FDCE \rd_data_reg[11] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[11]_i_1_n_0 ),
        .Q(\rd_data_reg_n_0_[11] ));
  FDCE \rd_data_reg[12] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[12]_i_1_n_0 ),
        .Q(in7[12]));
  FDCE \rd_data_reg[13] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[13]_i_1_n_0 ),
        .Q(in7[13]));
  FDCE \rd_data_reg[14] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[14]_i_1_n_0 ),
        .Q(in7[14]));
  FDCE \rd_data_reg[15] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[15]_i_2_n_0 ),
        .Q(in7[15]));
  FDCE \rd_data_reg[1] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[1]_i_1_n_0 ),
        .Q(in7[1]));
  FDCE \rd_data_reg[2] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[2]_i_1_n_0 ),
        .Q(in7[2]));
  FDCE \rd_data_reg[3] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[3]_i_1_n_0 ),
        .Q(in7[3]));
  FDCE \rd_data_reg[4] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[4]_i_1_n_0 ),
        .Q(in7[4]));
  FDCE \rd_data_reg[5] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[5]_i_1_n_0 ),
        .Q(in7[5]));
  FDCE \rd_data_reg[6] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[6]_i_1_n_0 ),
        .Q(in7[6]));
  FDCE \rd_data_reg[7] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[7]_i_1_n_0 ),
        .Q(in7[7]));
  FDCE \rd_data_reg[8] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[8]_i_1_n_0 ),
        .Q(in7[8]));
  FDCE \rd_data_reg[9] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[9]_i_1_n_0 ),
        .Q(in7[9]));
  FDCE rxpmaresetdone_s_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(rxpmaresetdone_sync),
        .Q(rxpmaresetdone_s));
  FDCE rxpmaresetdone_ss_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(rxpmaresetdone_s),
        .Q(rxpmaresetdone_ss));
  FDCE rxpmaresetdone_sss_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(rxpmaresetdone_ss),
        .Q(rxpmaresetdone_sss));
  gig_ethernet_pcs_pma_reset_sync_4 sync_gtrxreset_in
       (.CLK(CLK),
        .SR(SR),
        .reset_out(gtrxreset_in_sync));
  gig_ethernet_pcs_pma_reset_sync_5 sync_rst
       (.CLK(CLK),
        .reset_out(rst_sync),
        .reset_sync5_0(reset_sync5));
  gig_ethernet_pcs_pma_sync_block_6 sync_rxpmaresetdone
       (.CLK(CLK),
        .data_in(data_in),
        .data_out(rxpmaresetdone_sync));
endmodule

module gig_ethernet_pcs_pma_reset_sync
   (reset_out,
    userclk2,
    enablealign);
  output reset_out;
  input userclk2;
  input enablealign;

  wire enablealign;
  wire reset_out;
  wire reset_stage1;
  wire reset_stage2;
  wire reset_stage3;
  wire reset_stage4;
  wire reset_stage5;
  wire userclk2;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(userclk2),
        .CE(1'b1),
        .D(1'b0),
        .PRE(enablealign),
        .Q(reset_stage1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_stage1),
        .PRE(enablealign),
        .Q(reset_stage2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_stage2),
        .PRE(enablealign),
        .Q(reset_stage3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_stage3),
        .PRE(enablealign),
        .Q(reset_stage4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_stage4),
        .PRE(enablealign),
        .Q(reset_stage5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_stage5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_reset_sync" *) 
module gig_ethernet_pcs_pma_reset_sync_1
   (reset_out,
    independent_clock_bufg,
    reset_sync5_0);
  output reset_out;
  input independent_clock_bufg;
  input [0:0]reset_sync5_0;

  wire independent_clock_bufg;
  wire reset_out;
  wire reset_stage1;
  wire reset_stage2;
  wire reset_stage3;
  wire reset_stage4;
  wire reset_stage5;
  wire [0:0]reset_sync5_0;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset_sync5_0),
        .Q(reset_stage1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_stage1),
        .PRE(reset_sync5_0),
        .Q(reset_stage2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_stage2),
        .PRE(reset_sync5_0),
        .Q(reset_stage3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_stage3),
        .PRE(reset_sync5_0),
        .Q(reset_stage4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_stage4),
        .PRE(reset_sync5_0),
        .Q(reset_stage5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_stage5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_reset_sync" *) 
module gig_ethernet_pcs_pma_reset_sync_2
   (reset_out,
    independent_clock_bufg,
    SR);
  output reset_out;
  input independent_clock_bufg;
  input [0:0]SR;

  wire [0:0]SR;
  wire independent_clock_bufg;
  wire reset_out;
  wire reset_stage1;
  wire reset_stage2;
  wire reset_stage3;
  wire reset_stage4;
  wire reset_stage5;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(1'b0),
        .PRE(SR),
        .Q(reset_stage1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_stage1),
        .PRE(SR),
        .Q(reset_stage2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_stage2),
        .PRE(SR),
        .Q(reset_stage3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_stage3),
        .PRE(SR),
        .Q(reset_stage4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_stage4),
        .PRE(SR),
        .Q(reset_stage5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_stage5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_reset_sync" *) 
module gig_ethernet_pcs_pma_reset_sync_4
   (reset_out,
    CLK,
    SR);
  output reset_out;
  input CLK;
  input [0:0]SR;

  wire CLK;
  wire [0:0]SR;
  wire reset_out;
  wire reset_stage1;
  wire reset_stage2;
  wire reset_stage3;
  wire reset_stage4;
  wire reset_stage5;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(CLK),
        .CE(1'b1),
        .D(1'b0),
        .PRE(SR),
        .Q(reset_stage1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage1),
        .PRE(SR),
        .Q(reset_stage2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage2),
        .PRE(SR),
        .Q(reset_stage3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage3),
        .PRE(SR),
        .Q(reset_stage4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage4),
        .PRE(SR),
        .Q(reset_stage5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_reset_sync" *) 
module gig_ethernet_pcs_pma_reset_sync_5
   (reset_out,
    CLK,
    reset_sync5_0);
  output reset_out;
  input CLK;
  input reset_sync5_0;

  wire CLK;
  wire reset_out;
  wire reset_stage1;
  wire reset_stage2;
  wire reset_stage3;
  wire reset_stage4;
  wire reset_stage5;
  wire reset_sync5_0;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(CLK),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset_sync5_0),
        .Q(reset_stage1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage1),
        .PRE(reset_sync5_0),
        .Q(reset_stage2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage2),
        .PRE(reset_sync5_0),
        .Q(reset_stage3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage3),
        .PRE(reset_sync5_0),
        .Q(reset_stage4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage4),
        .PRE(reset_sync5_0),
        .Q(reset_stage5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

module gig_ethernet_pcs_pma_reset_wtd_timer
   (wtd_rxpcsreset_in,
    independent_clock_bufg,
    data_out);
  output wtd_rxpcsreset_in;
  input independent_clock_bufg;
  input data_out;

  wire \counter_stg1[5]_i_1_n_0 ;
  wire [5:5]counter_stg1_reg;
  wire [4:0]counter_stg1_reg__0;
  wire counter_stg1_roll;
  wire \counter_stg2[0]_i_3_n_0 ;
  wire [11:0]counter_stg2_reg;
  wire \counter_stg2_reg[0]_i_2_n_0 ;
  wire \counter_stg2_reg[0]_i_2_n_1 ;
  wire \counter_stg2_reg[0]_i_2_n_2 ;
  wire \counter_stg2_reg[0]_i_2_n_3 ;
  wire \counter_stg2_reg[0]_i_2_n_4 ;
  wire \counter_stg2_reg[0]_i_2_n_5 ;
  wire \counter_stg2_reg[0]_i_2_n_6 ;
  wire \counter_stg2_reg[0]_i_2_n_7 ;
  wire \counter_stg2_reg[4]_i_1_n_0 ;
  wire \counter_stg2_reg[4]_i_1_n_1 ;
  wire \counter_stg2_reg[4]_i_1_n_2 ;
  wire \counter_stg2_reg[4]_i_1_n_3 ;
  wire \counter_stg2_reg[4]_i_1_n_4 ;
  wire \counter_stg2_reg[4]_i_1_n_5 ;
  wire \counter_stg2_reg[4]_i_1_n_6 ;
  wire \counter_stg2_reg[4]_i_1_n_7 ;
  wire \counter_stg2_reg[8]_i_1_n_1 ;
  wire \counter_stg2_reg[8]_i_1_n_2 ;
  wire \counter_stg2_reg[8]_i_1_n_3 ;
  wire \counter_stg2_reg[8]_i_1_n_4 ;
  wire \counter_stg2_reg[8]_i_1_n_5 ;
  wire \counter_stg2_reg[8]_i_1_n_6 ;
  wire \counter_stg2_reg[8]_i_1_n_7 ;
  wire counter_stg30;
  wire \counter_stg3[0]_i_3_n_0 ;
  wire \counter_stg3[0]_i_4_n_0 ;
  wire \counter_stg3[0]_i_5_n_0 ;
  wire [11:0]counter_stg3_reg;
  wire \counter_stg3_reg[0]_i_2_n_0 ;
  wire \counter_stg3_reg[0]_i_2_n_1 ;
  wire \counter_stg3_reg[0]_i_2_n_2 ;
  wire \counter_stg3_reg[0]_i_2_n_3 ;
  wire \counter_stg3_reg[0]_i_2_n_4 ;
  wire \counter_stg3_reg[0]_i_2_n_5 ;
  wire \counter_stg3_reg[0]_i_2_n_6 ;
  wire \counter_stg3_reg[0]_i_2_n_7 ;
  wire \counter_stg3_reg[4]_i_1_n_0 ;
  wire \counter_stg3_reg[4]_i_1_n_1 ;
  wire \counter_stg3_reg[4]_i_1_n_2 ;
  wire \counter_stg3_reg[4]_i_1_n_3 ;
  wire \counter_stg3_reg[4]_i_1_n_4 ;
  wire \counter_stg3_reg[4]_i_1_n_5 ;
  wire \counter_stg3_reg[4]_i_1_n_6 ;
  wire \counter_stg3_reg[4]_i_1_n_7 ;
  wire \counter_stg3_reg[8]_i_1_n_1 ;
  wire \counter_stg3_reg[8]_i_1_n_2 ;
  wire \counter_stg3_reg[8]_i_1_n_3 ;
  wire \counter_stg3_reg[8]_i_1_n_4 ;
  wire \counter_stg3_reg[8]_i_1_n_5 ;
  wire \counter_stg3_reg[8]_i_1_n_6 ;
  wire \counter_stg3_reg[8]_i_1_n_7 ;
  wire data_out;
  wire independent_clock_bufg;
  wire [5:0]p_0_in__0;
  wire reset0;
  wire reset_i_2_n_0;
  wire reset_i_3_n_0;
  wire reset_i_4_n_0;
  wire reset_i_5_n_0;
  wire reset_i_6_n_0;
  wire reset_i_7_n_0;
  wire reset_i_8_n_0;
  wire wtd_rxpcsreset_in;
  wire [3:3]\NLW_counter_stg2_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_stg3_reg[8]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \counter_stg1[0]_i_1 
       (.I0(counter_stg1_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter_stg1[1]_i_1 
       (.I0(counter_stg1_reg__0[1]),
        .I1(counter_stg1_reg__0[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter_stg1[2]_i_1 
       (.I0(counter_stg1_reg__0[2]),
        .I1(counter_stg1_reg__0[1]),
        .I2(counter_stg1_reg__0[0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter_stg1[3]_i_1 
       (.I0(counter_stg1_reg__0[3]),
        .I1(counter_stg1_reg__0[0]),
        .I2(counter_stg1_reg__0[1]),
        .I3(counter_stg1_reg__0[2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \counter_stg1[4]_i_1 
       (.I0(counter_stg1_reg__0[4]),
        .I1(counter_stg1_reg__0[2]),
        .I2(counter_stg1_reg__0[1]),
        .I3(counter_stg1_reg__0[0]),
        .I4(counter_stg1_reg__0[3]),
        .O(p_0_in__0[4]));
  LUT3 #(
    .INIT(8'hBA)) 
    \counter_stg1[5]_i_1 
       (.I0(data_out),
        .I1(reset_i_2_n_0),
        .I2(counter_stg1_roll),
        .O(\counter_stg1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter_stg1[5]_i_2 
       (.I0(counter_stg1_reg__0[3]),
        .I1(counter_stg1_reg__0[0]),
        .I2(counter_stg1_reg__0[1]),
        .I3(counter_stg1_reg__0[2]),
        .I4(counter_stg1_reg__0[4]),
        .I5(counter_stg1_reg),
        .O(p_0_in__0[5]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[0] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(counter_stg1_reg__0[0]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[1] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(counter_stg1_reg__0[1]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[2] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(counter_stg1_reg__0[2]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[3] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(counter_stg1_reg__0[3]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[4] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(counter_stg1_reg__0[4]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[5] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(counter_stg1_reg),
        .R(\counter_stg1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter_stg2[0]_i_1 
       (.I0(counter_stg1_reg),
        .I1(counter_stg1_reg__0[4]),
        .I2(counter_stg1_reg__0[2]),
        .I3(counter_stg1_reg__0[1]),
        .I4(counter_stg1_reg__0[0]),
        .I5(counter_stg1_reg__0[3]),
        .O(counter_stg1_roll));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_stg2[0]_i_3 
       (.I0(counter_stg2_reg[0]),
        .O(\counter_stg2[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[0] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\counter_stg2_reg[0]_i_2_n_7 ),
        .Q(counter_stg2_reg[0]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_stg2_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_stg2_reg[0]_i_2_n_0 ,\counter_stg2_reg[0]_i_2_n_1 ,\counter_stg2_reg[0]_i_2_n_2 ,\counter_stg2_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_stg2_reg[0]_i_2_n_4 ,\counter_stg2_reg[0]_i_2_n_5 ,\counter_stg2_reg[0]_i_2_n_6 ,\counter_stg2_reg[0]_i_2_n_7 }),
        .S({counter_stg2_reg[3:1],\counter_stg2[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[10] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\counter_stg2_reg[8]_i_1_n_5 ),
        .Q(counter_stg2_reg[10]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[11] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\counter_stg2_reg[8]_i_1_n_4 ),
        .Q(counter_stg2_reg[11]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[1] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\counter_stg2_reg[0]_i_2_n_6 ),
        .Q(counter_stg2_reg[1]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[2] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\counter_stg2_reg[0]_i_2_n_5 ),
        .Q(counter_stg2_reg[2]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[3] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\counter_stg2_reg[0]_i_2_n_4 ),
        .Q(counter_stg2_reg[3]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[4] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\counter_stg2_reg[4]_i_1_n_7 ),
        .Q(counter_stg2_reg[4]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_stg2_reg[4]_i_1 
       (.CI(\counter_stg2_reg[0]_i_2_n_0 ),
        .CO({\counter_stg2_reg[4]_i_1_n_0 ,\counter_stg2_reg[4]_i_1_n_1 ,\counter_stg2_reg[4]_i_1_n_2 ,\counter_stg2_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_stg2_reg[4]_i_1_n_4 ,\counter_stg2_reg[4]_i_1_n_5 ,\counter_stg2_reg[4]_i_1_n_6 ,\counter_stg2_reg[4]_i_1_n_7 }),
        .S(counter_stg2_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[5] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\counter_stg2_reg[4]_i_1_n_6 ),
        .Q(counter_stg2_reg[5]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[6] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\counter_stg2_reg[4]_i_1_n_5 ),
        .Q(counter_stg2_reg[6]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[7] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\counter_stg2_reg[4]_i_1_n_4 ),
        .Q(counter_stg2_reg[7]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[8] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\counter_stg2_reg[8]_i_1_n_7 ),
        .Q(counter_stg2_reg[8]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_stg2_reg[8]_i_1 
       (.CI(\counter_stg2_reg[4]_i_1_n_0 ),
        .CO({\NLW_counter_stg2_reg[8]_i_1_CO_UNCONNECTED [3],\counter_stg2_reg[8]_i_1_n_1 ,\counter_stg2_reg[8]_i_1_n_2 ,\counter_stg2_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_stg2_reg[8]_i_1_n_4 ,\counter_stg2_reg[8]_i_1_n_5 ,\counter_stg2_reg[8]_i_1_n_6 ,\counter_stg2_reg[8]_i_1_n_7 }),
        .S(counter_stg2_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[9] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\counter_stg2_reg[8]_i_1_n_6 ),
        .Q(counter_stg2_reg[9]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \counter_stg3[0]_i_1 
       (.I0(counter_stg1_roll),
        .I1(\counter_stg3[0]_i_3_n_0 ),
        .I2(counter_stg2_reg[3]),
        .I3(counter_stg2_reg[8]),
        .I4(counter_stg2_reg[11]),
        .I5(counter_stg2_reg[4]),
        .O(counter_stg30));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \counter_stg3[0]_i_3 
       (.I0(counter_stg2_reg[9]),
        .I1(counter_stg2_reg[0]),
        .I2(counter_stg2_reg[7]),
        .I3(counter_stg2_reg[10]),
        .I4(\counter_stg3[0]_i_5_n_0 ),
        .O(\counter_stg3[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_stg3[0]_i_4 
       (.I0(counter_stg3_reg[0]),
        .O(\counter_stg3[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter_stg3[0]_i_5 
       (.I0(counter_stg2_reg[1]),
        .I1(counter_stg2_reg[6]),
        .I2(counter_stg2_reg[5]),
        .I3(counter_stg2_reg[2]),
        .O(\counter_stg3[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[0] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[0]_i_2_n_7 ),
        .Q(counter_stg3_reg[0]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_stg3_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_stg3_reg[0]_i_2_n_0 ,\counter_stg3_reg[0]_i_2_n_1 ,\counter_stg3_reg[0]_i_2_n_2 ,\counter_stg3_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_stg3_reg[0]_i_2_n_4 ,\counter_stg3_reg[0]_i_2_n_5 ,\counter_stg3_reg[0]_i_2_n_6 ,\counter_stg3_reg[0]_i_2_n_7 }),
        .S({counter_stg3_reg[3:1],\counter_stg3[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[10] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[8]_i_1_n_5 ),
        .Q(counter_stg3_reg[10]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[11] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[8]_i_1_n_4 ),
        .Q(counter_stg3_reg[11]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[1] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[0]_i_2_n_6 ),
        .Q(counter_stg3_reg[1]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[2] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[0]_i_2_n_5 ),
        .Q(counter_stg3_reg[2]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[3] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[0]_i_2_n_4 ),
        .Q(counter_stg3_reg[3]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[4] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[4]_i_1_n_7 ),
        .Q(counter_stg3_reg[4]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_stg3_reg[4]_i_1 
       (.CI(\counter_stg3_reg[0]_i_2_n_0 ),
        .CO({\counter_stg3_reg[4]_i_1_n_0 ,\counter_stg3_reg[4]_i_1_n_1 ,\counter_stg3_reg[4]_i_1_n_2 ,\counter_stg3_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_stg3_reg[4]_i_1_n_4 ,\counter_stg3_reg[4]_i_1_n_5 ,\counter_stg3_reg[4]_i_1_n_6 ,\counter_stg3_reg[4]_i_1_n_7 }),
        .S(counter_stg3_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[5] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[4]_i_1_n_6 ),
        .Q(counter_stg3_reg[5]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[6] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[4]_i_1_n_5 ),
        .Q(counter_stg3_reg[6]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[7] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[4]_i_1_n_4 ),
        .Q(counter_stg3_reg[7]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[8] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[8]_i_1_n_7 ),
        .Q(counter_stg3_reg[8]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_stg3_reg[8]_i_1 
       (.CI(\counter_stg3_reg[4]_i_1_n_0 ),
        .CO({\NLW_counter_stg3_reg[8]_i_1_CO_UNCONNECTED [3],\counter_stg3_reg[8]_i_1_n_1 ,\counter_stg3_reg[8]_i_1_n_2 ,\counter_stg3_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_stg3_reg[8]_i_1_n_4 ,\counter_stg3_reg[8]_i_1_n_5 ,\counter_stg3_reg[8]_i_1_n_6 ,\counter_stg3_reg[8]_i_1_n_7 }),
        .S(counter_stg3_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[9] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[8]_i_1_n_6 ),
        .Q(counter_stg3_reg[9]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    reset_i_1
       (.I0(counter_stg1_reg),
        .I1(reset_i_2_n_0),
        .O(reset0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    reset_i_2
       (.I0(reset_i_3_n_0),
        .I1(reset_i_4_n_0),
        .I2(reset_i_5_n_0),
        .I3(reset_i_6_n_0),
        .I4(reset_i_7_n_0),
        .I5(reset_i_8_n_0),
        .O(reset_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    reset_i_3
       (.I0(counter_stg3_reg[4]),
        .I1(counter_stg3_reg[8]),
        .I2(counter_stg3_reg[1]),
        .I3(counter_stg3_reg[10]),
        .O(reset_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    reset_i_4
       (.I0(counter_stg3_reg[9]),
        .I1(counter_stg2_reg[5]),
        .I2(counter_stg3_reg[7]),
        .I3(counter_stg2_reg[0]),
        .O(reset_i_4_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    reset_i_5
       (.I0(counter_stg2_reg[3]),
        .I1(counter_stg2_reg[8]),
        .I2(counter_stg2_reg[11]),
        .I3(counter_stg2_reg[4]),
        .O(reset_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    reset_i_6
       (.I0(counter_stg3_reg[11]),
        .I1(counter_stg3_reg[2]),
        .I2(counter_stg2_reg[10]),
        .I3(counter_stg3_reg[0]),
        .O(reset_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_i_7
       (.I0(counter_stg2_reg[2]),
        .I1(counter_stg2_reg[9]),
        .I2(counter_stg2_reg[1]),
        .I3(counter_stg2_reg[7]),
        .O(reset_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    reset_i_8
       (.I0(counter_stg3_reg[6]),
        .I1(counter_stg3_reg[3]),
        .I2(counter_stg3_reg[5]),
        .I3(counter_stg2_reg[6]),
        .O(reset_i_8_n_0));
  FDRE reset_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset0),
        .Q(wtd_rxpcsreset_in),
        .R(1'b0));
endmodule

module gig_ethernet_pcs_pma_resets
   (out,
    independent_clock_bufg,
    reset);
  output [0:0]out;
  input independent_clock_bufg;
  input reset;

  wire independent_clock_bufg;
  (* async_reg = "true" *) wire [3:0]pma_reset_pipe;
  wire reset;

  assign out[0] = pma_reset_pipe[3];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \pma_reset_pipe_reg[0] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset),
        .Q(pma_reset_pipe[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \pma_reset_pipe_reg[1] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(pma_reset_pipe[0]),
        .PRE(reset),
        .Q(pma_reset_pipe[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \pma_reset_pipe_reg[2] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(pma_reset_pipe[1]),
        .PRE(reset),
        .Q(pma_reset_pipe[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \pma_reset_pipe_reg[3] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(pma_reset_pipe[2]),
        .PRE(reset),
        .Q(pma_reset_pipe[3]));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) (* EXAMPLE_SIMULATION = "0" *) 
module gig_ethernet_pcs_pma_support
   (gtrefclk_p,
    gtrefclk_n,
    gtrefclk_out,
    gtrefclk_bufg_out,
    txp,
    txn,
    rxp,
    rxn,
    userclk_out,
    userclk2_out,
    rxuserclk_out,
    rxuserclk2_out,
    independent_clock_bufg,
    pma_reset_out,
    mmcm_locked_out,
    resetdone,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    mdc,
    mdio_i,
    mdio_o,
    mdio_t,
    phyaddr,
    configuration_vector,
    configuration_valid,
    an_interrupt,
    an_adv_config_vector,
    an_adv_config_val,
    an_restart_config,
    status_vector,
    reset,
    signal_detect,
    gt0_pll0outclk_out,
    gt0_pll0outrefclk_out,
    gt0_pll1outclk_out,
    gt0_pll1outrefclk_out,
    gt0_pll0lock_out,
    gt0_pll0refclklost_out);
  input gtrefclk_p;
  input gtrefclk_n;
  output gtrefclk_out;
  output gtrefclk_bufg_out;
  output txp;
  output txn;
  input rxp;
  input rxn;
  output userclk_out;
  output userclk2_out;
  output rxuserclk_out;
  output rxuserclk2_out;
  input independent_clock_bufg;
  output pma_reset_out;
  output mmcm_locked_out;
  output resetdone;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  input mdc;
  input mdio_i;
  output mdio_o;
  output mdio_t;
  input [4:0]phyaddr;
  input [4:0]configuration_vector;
  input configuration_valid;
  output an_interrupt;
  input [15:0]an_adv_config_vector;
  input an_adv_config_val;
  input an_restart_config;
  output [15:0]status_vector;
  input reset;
  input signal_detect;
  output gt0_pll0outclk_out;
  output gt0_pll0outrefclk_out;
  output gt0_pll1outclk_out;
  output gt0_pll1outrefclk_out;
  output gt0_pll0lock_out;
  output gt0_pll0refclklost_out;

  wire \<const0> ;
  wire PLL0RESET_I;
  wire an_adv_config_val;
  wire [15:0]an_adv_config_vector;
  wire an_interrupt;
  wire an_restart_config;
  wire configuration_valid;
  wire [4:0]configuration_vector;
  wire cpll_reset_i;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire gt0_pll0lock_out;
  wire gt0_pll0outclk_out;
  wire gt0_pll0outrefclk_out;
  wire gt0_pll0refclklost_out;
  wire gt0_pll0reset;
  wire gt0_pll1outclk_out;
  wire gt0_pll1outrefclk_out;
  wire gtrefclk_bufg_out;
  wire gtrefclk_n;
  wire gtrefclk_out;
  wire gtrefclk_p;
  wire independent_clock_bufg;
  wire mdc;
  wire mdio_i;
  wire mdio_o;
  wire mdio_t;
  wire mmcm_locked_out;
  wire mmcm_reset;
  wire [4:0]phyaddr;
  wire pma_reset_out;
  wire reset;
  wire resetdone;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire rxuserclk2_out;
  wire signal_detect;
  wire [15:0]\^status_vector ;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk2_out;
  wire userclk_out;

  assign rxuserclk_out = rxuserclk2_out;
  assign status_vector[15:12] = \^status_vector [15:12];
  assign status_vector[11] = \<const0> ;
  assign status_vector[10] = \<const0> ;
  assign status_vector[9:8] = \^status_vector [9:8];
  assign status_vector[7] = \<const0> ;
  assign status_vector[6:0] = \^status_vector [6:0];
  GND GND
       (.G(\<const0> ));
  gig_ethernet_pcs_pma_clocking core_clocking_i
       (.gtrefclk_bufg(gtrefclk_bufg_out),
        .gtrefclk_n(gtrefclk_n),
        .gtrefclk_out(gtrefclk_out),
        .gtrefclk_p(gtrefclk_p),
        .mmcm_locked(mmcm_locked_out),
        .mmcm_reset(mmcm_reset),
        .rxoutclk(rxoutclk),
        .rxuserclk2_out(rxuserclk2_out),
        .txoutclk(txoutclk),
        .userclk(userclk_out),
        .userclk2(userclk2_out));
  gig_ethernet_pcs_pma_gt_common core_gt_common_i
       (.PLL0RESET_I(PLL0RESET_I),
        .cpll_reset_i(cpll_reset_i),
        .gt0_pll0lock_out(gt0_pll0lock_out),
        .gt0_pll0outclk_out(gt0_pll0outclk_out),
        .gt0_pll0outrefclk_out(gt0_pll0outrefclk_out),
        .gt0_pll0refclklost_out(gt0_pll0refclklost_out),
        .gt0_pll1outclk_out(gt0_pll1outclk_out),
        .gt0_pll1outrefclk_out(gt0_pll1outrefclk_out),
        .gtrefclk_bufg(gtrefclk_bufg_out),
        .gtrefclk_out(gtrefclk_out),
        .independent_clock_bufg(independent_clock_bufg));
  gig_ethernet_pcs_pma_common_reset core_gt_common_reset_i
       (.PLL0RESET_I(PLL0RESET_I),
        .cpll_reset_i(cpll_reset_i),
        .gt0_pll0reset(gt0_pll0reset),
        .independent_clock_bufg(independent_clock_bufg),
        .out(pma_reset_out));
  gig_ethernet_pcs_pma_resets core_resets_i
       (.independent_clock_bufg(independent_clock_bufg),
        .out(pma_reset_out),
        .reset(reset));
  gig_ethernet_pcs_pma_block pcs_pma_block_i
       (.CLK(gtrefclk_bufg_out),
        .an_adv_config_val(an_adv_config_val),
        .an_adv_config_vector({an_adv_config_vector[15],an_adv_config_vector[13:12],an_adv_config_vector[8:7],an_adv_config_vector[5]}),
        .an_interrupt(an_interrupt),
        .an_restart_config(an_restart_config),
        .configuration_valid(configuration_valid),
        .configuration_vector(configuration_vector),
        .data_in(mmcm_locked_out),
        .gmii_isolate(gmii_isolate),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .gt0_pll0lock_out(gt0_pll0lock_out),
        .gt0_pll0outclk_out(gt0_pll0outclk_out),
        .gt0_pll0outrefclk_out(gt0_pll0outrefclk_out),
        .gt0_pll0refclklost_out(gt0_pll0refclklost_out),
        .gt0_pll0reset(gt0_pll0reset),
        .gt0_pll1outclk_out(gt0_pll1outclk_out),
        .gt0_pll1outrefclk_out(gt0_pll1outrefclk_out),
        .gtpe2_i(userclk_out),
        .independent_clock_bufg(independent_clock_bufg),
        .mdc(mdc),
        .mdio_i(mdio_i),
        .mdio_o(mdio_o),
        .mdio_t(mdio_t),
        .mmcm_reset(mmcm_reset),
        .out(pma_reset_out),
        .phyaddr(phyaddr),
        .resetdone(resetdone),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .signal_detect(signal_detect),
        .status_vector({\^status_vector [15:12],\^status_vector [9:8],\^status_vector [6:0]}),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .userclk2(userclk2_out));
endmodule

module gig_ethernet_pcs_pma_sync_block
   (resetdone,
    data_out,
    data_in,
    userclk2);
  output resetdone;
  input data_out;
  input data_in;
  input userclk2;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire resetdone;
  wire rx_reset_done_i;
  wire userclk2;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(userclk2),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(rx_reset_done_i),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    resetdone_INST_0
       (.I0(rx_reset_done_i),
        .I1(data_out),
        .O(resetdone));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_sync_block" *) 
module gig_ethernet_pcs_pma_sync_block_0
   (data_out,
    data_in,
    userclk2);
  output data_out;
  input data_in;
  input userclk2;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire userclk2;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(userclk2),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_sync_block" *) 
module gig_ethernet_pcs_pma_sync_block_10
   (data_out,
    data_in,
    data_sync_reg6_0);
  output data_out;
  input data_in;
  input data_sync_reg6_0;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg6_0;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(data_sync_reg6_0),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(data_sync_reg6_0),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(data_sync_reg6_0),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(data_sync_reg6_0),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(data_sync_reg6_0),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(data_sync_reg6_0),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_sync_block" *) 
module gig_ethernet_pcs_pma_sync_block_11
   (data_out,
    data_in,
    independent_clock_bufg);
  output data_out;
  input data_in;
  input independent_clock_bufg;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_sync_block" *) 
module gig_ethernet_pcs_pma_sync_block_12
   (data_out,
    data_in,
    data_sync_reg1_0);
  output data_out;
  input data_in;
  input data_sync_reg1_0;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg1_0;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_sync_block" *) 
module gig_ethernet_pcs_pma_sync_block_13
   (data_out,
    data_sync_reg1_0,
    independent_clock_bufg);
  output data_out;
  input data_sync_reg1_0;
  input independent_clock_bufg;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg1_0;
  wire independent_clock_bufg;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync_reg1_0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_sync_block" *) 
module gig_ethernet_pcs_pma_sync_block_14
   (E,
    D,
    data_out,
    \FSM_sequential_rx_state_reg[2] ,
    \FSM_sequential_rx_state_reg[0] ,
    \FSM_sequential_rx_state_reg[0]_0 ,
    Q,
    \FSM_sequential_rx_state_reg[0]_1 ,
    \FSM_sequential_rx_state_reg[0]_2 ,
    \FSM_sequential_rx_state_reg[3] ,
    time_out_wait_bypass_s3,
    \FSM_sequential_rx_state_reg[3]_0 ,
    rx_fsm_reset_done_int_reg,
    rx_fsm_reset_done_int_reg_0,
    rx_fsm_reset_done_int_reg_1,
    \FSM_sequential_rx_state_reg[0]_3 ,
    \FSM_sequential_rx_state_reg[0]_4 ,
    data_in,
    data_sync_reg1_0,
    independent_clock_bufg);
  output [0:0]E;
  output [2:0]D;
  output data_out;
  output \FSM_sequential_rx_state_reg[2] ;
  input \FSM_sequential_rx_state_reg[0] ;
  input \FSM_sequential_rx_state_reg[0]_0 ;
  input [3:0]Q;
  input \FSM_sequential_rx_state_reg[0]_1 ;
  input \FSM_sequential_rx_state_reg[0]_2 ;
  input \FSM_sequential_rx_state_reg[3] ;
  input time_out_wait_bypass_s3;
  input \FSM_sequential_rx_state_reg[3]_0 ;
  input rx_fsm_reset_done_int_reg;
  input rx_fsm_reset_done_int_reg_0;
  input rx_fsm_reset_done_int_reg_1;
  input \FSM_sequential_rx_state_reg[0]_3 ;
  input \FSM_sequential_rx_state_reg[0]_4 ;
  input data_in;
  input data_sync_reg1_0;
  input independent_clock_bufg;

  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_sequential_rx_state[3]_i_3_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_7_n_0 ;
  wire \FSM_sequential_rx_state_reg[0] ;
  wire \FSM_sequential_rx_state_reg[0]_0 ;
  wire \FSM_sequential_rx_state_reg[0]_1 ;
  wire \FSM_sequential_rx_state_reg[0]_2 ;
  wire \FSM_sequential_rx_state_reg[0]_3 ;
  wire \FSM_sequential_rx_state_reg[0]_4 ;
  wire \FSM_sequential_rx_state_reg[2] ;
  wire \FSM_sequential_rx_state_reg[3] ;
  wire \FSM_sequential_rx_state_reg[3]_0 ;
  wire [3:0]Q;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg1_0;
  wire independent_clock_bufg;
  wire rx_fsm_reset_done_int;
  wire rx_fsm_reset_done_int_i_3_n_0;
  wire rx_fsm_reset_done_int_reg;
  wire rx_fsm_reset_done_int_reg_0;
  wire rx_fsm_reset_done_int_reg_1;
  wire time_out_wait_bypass_s3;

  LUT5 #(
    .INIT(32'hA8FFA8A8)) 
    \FSM_sequential_rx_state[0]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(\FSM_sequential_rx_state[3]_i_7_n_0 ),
        .I3(\FSM_sequential_rx_state_reg[0]_3 ),
        .I4(\FSM_sequential_rx_state_reg[0]_4 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h03443377)) 
    \FSM_sequential_rx_state[1]_i_1 
       (.I0(\FSM_sequential_rx_state[3]_i_7_n_0 ),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\FSM_sequential_rx_state_reg[0]_4 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAAABBBBBAAABAAAB)) 
    \FSM_sequential_rx_state[3]_i_1 
       (.I0(\FSM_sequential_rx_state[3]_i_3_n_0 ),
        .I1(\FSM_sequential_rx_state_reg[0] ),
        .I2(\FSM_sequential_rx_state_reg[0]_0 ),
        .I3(Q[0]),
        .I4(\FSM_sequential_rx_state_reg[0]_1 ),
        .I5(\FSM_sequential_rx_state_reg[0]_2 ),
        .O(E));
  LUT6 #(
    .INIT(64'hDDDFFFFFDDDF0000)) 
    \FSM_sequential_rx_state[3]_i_2 
       (.I0(\FSM_sequential_rx_state[3]_i_7_n_0 ),
        .I1(\FSM_sequential_rx_state_reg[3] ),
        .I2(Q[0]),
        .I3(time_out_wait_bypass_s3),
        .I4(Q[3]),
        .I5(\FSM_sequential_rx_state_reg[3]_0 ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h4C48)) 
    \FSM_sequential_rx_state[3]_i_3 
       (.I0(data_out),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(\FSM_sequential_rx_state[3]_i_7_n_0 ),
        .O(\FSM_sequential_rx_state[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h04FF)) 
    \FSM_sequential_rx_state[3]_i_7 
       (.I0(rx_fsm_reset_done_int_reg_0),
        .I1(rx_fsm_reset_done_int_reg),
        .I2(data_out),
        .I3(Q[0]),
        .O(\FSM_sequential_rx_state[3]_i_7_n_0 ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync_reg1_0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    rx_fsm_reset_done_int_i_1
       (.I0(rx_fsm_reset_done_int),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(rx_fsm_reset_done_int_i_3_n_0),
        .I4(data_in),
        .O(\FSM_sequential_rx_state_reg[2] ));
  LUT5 #(
    .INIT(32'h00100000)) 
    rx_fsm_reset_done_int_i_2
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(rx_fsm_reset_done_int_reg_1),
        .I3(rx_fsm_reset_done_int_reg_0),
        .I4(data_out),
        .O(rx_fsm_reset_done_int));
  LUT6 #(
    .INIT(64'hFFFF3131C0CCFFFF)) 
    rx_fsm_reset_done_int_i_3
       (.I0(rx_fsm_reset_done_int_reg),
        .I1(data_out),
        .I2(rx_fsm_reset_done_int_reg_0),
        .I3(rx_fsm_reset_done_int_reg_1),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(rx_fsm_reset_done_int_i_3_n_0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_sync_block" *) 
module gig_ethernet_pcs_pma_sync_block_15
   (SR,
    data_out,
    data_sync_reg1_0,
    independent_clock_bufg);
  output [0:0]SR;
  output data_out;
  input data_sync_reg1_0;
  input independent_clock_bufg;

  wire [0:0]SR;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg1_0;
  wire independent_clock_bufg;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync_reg1_0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[7]_i_1__0 
       (.I0(data_out),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_sync_block" *) 
module gig_ethernet_pcs_pma_sync_block_16
   (\FSM_sequential_rx_state_reg[0] ,
    reset_time_out_reg,
    Q,
    \FSM_sequential_rx_state_reg[0]_0 ,
    data_out,
    reset_time_out_reg_0,
    check_tlock_max,
    reset_time_out_reg_1,
    reset_time_out_reg_2,
    reset_time_out_reg_3,
    gt0_pll0lock_out,
    independent_clock_bufg);
  output \FSM_sequential_rx_state_reg[0] ;
  output reset_time_out_reg;
  input [3:0]Q;
  input \FSM_sequential_rx_state_reg[0]_0 ;
  input data_out;
  input reset_time_out_reg_0;
  input check_tlock_max;
  input reset_time_out_reg_1;
  input reset_time_out_reg_2;
  input reset_time_out_reg_3;
  input gt0_pll0lock_out;
  input independent_clock_bufg;

  wire \FSM_sequential_rx_state_reg[0] ;
  wire \FSM_sequential_rx_state_reg[0]_0 ;
  wire [3:0]Q;
  wire check_tlock_max;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt0_pll0lock_out;
  wire independent_clock_bufg;
  wire pll0lock_sync;
  wire reset_time_out_i_5_n_0;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire reset_time_out_reg_1;
  wire reset_time_out_reg_2;
  wire reset_time_out_reg_3;

  LUT6 #(
    .INIT(64'h5050505050505070)) 
    \FSM_sequential_rx_state[3]_i_5 
       (.I0(Q[0]),
        .I1(\FSM_sequential_rx_state_reg[0]_0 ),
        .I2(Q[1]),
        .I3(pll0lock_sync),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\FSM_sequential_rx_state_reg[0] ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_pll0lock_out),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(pll0lock_sync),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF80FFFFFF800000)) 
    reset_time_out_i_1__0
       (.I0(reset_time_out_reg_0),
        .I1(check_tlock_max),
        .I2(reset_time_out_reg_1),
        .I3(reset_time_out_i_5_n_0),
        .I4(reset_time_out_reg_2),
        .I5(reset_time_out_reg_3),
        .O(reset_time_out_reg));
  LUT6 #(
    .INIT(64'h1D0D1D0DD1C1DDCD)) 
    reset_time_out_i_5
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(pll0lock_sync),
        .I4(Q[0]),
        .I5(data_out),
        .O(reset_time_out_i_5_n_0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_sync_block" *) 
module gig_ethernet_pcs_pma_sync_block_17
   (data_out,
    data_in,
    data_sync_reg1_0);
  output data_out;
  input data_in;
  input data_sync_reg1_0;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg1_0;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_sync_block" *) 
module gig_ethernet_pcs_pma_sync_block_18
   (data_out,
    data_in,
    data_sync_reg6_0);
  output data_out;
  input data_in;
  input data_sync_reg6_0;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg6_0;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(data_sync_reg6_0),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(data_sync_reg6_0),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(data_sync_reg6_0),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(data_sync_reg6_0),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(data_sync_reg6_0),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(data_sync_reg6_0),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_sync_block" *) 
module gig_ethernet_pcs_pma_sync_block_19
   (data_out,
    data_in,
    independent_clock_bufg);
  output data_out;
  input data_in;
  input independent_clock_bufg;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_sync_block" *) 
module gig_ethernet_pcs_pma_sync_block_3
   (data_out,
    status_vector,
    independent_clock_bufg);
  output data_out;
  input [0:0]status_vector;
  input independent_clock_bufg;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;
  wire [0:0]status_vector;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(status_vector),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_sync_block" *) 
module gig_ethernet_pcs_pma_sync_block_6
   (data_out,
    data_in,
    CLK);
  output data_out;
  input data_in;
  input CLK;

  wire CLK;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(CLK),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(CLK),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(CLK),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(CLK),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(CLK),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(CLK),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_sync_block" *) 
module gig_ethernet_pcs_pma_sync_block_7
   (data_out,
    data_sync_reg1_0,
    independent_clock_bufg);
  output data_out;
  input data_sync_reg1_0;
  input independent_clock_bufg;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg1_0;
  wire independent_clock_bufg;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync_reg1_0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_sync_block" *) 
module gig_ethernet_pcs_pma_sync_block_8
   (SR,
    data_out,
    data_sync_reg1_0,
    independent_clock_bufg);
  output [0:0]SR;
  output data_out;
  input data_sync_reg1_0;
  input independent_clock_bufg;

  wire [0:0]SR;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg1_0;
  wire independent_clock_bufg;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync_reg1_0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[7]_i_1 
       (.I0(data_out),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_sync_block" *) 
module gig_ethernet_pcs_pma_sync_block_9
   (E,
    \FSM_sequential_tx_state_reg[1] ,
    reset_time_out_reg,
    Q,
    \FSM_sequential_tx_state_reg[0] ,
    \FSM_sequential_tx_state_reg[0]_0 ,
    sel,
    mmcm_lock_reclocked,
    \FSM_sequential_tx_state_reg[0]_1 ,
    \FSM_sequential_tx_state[3]_i_3_0 ,
    \FSM_sequential_tx_state[3]_i_3_1 ,
    txresetdone_s3,
    reset_time_out,
    \FSM_sequential_tx_state[3]_i_3_2 ,
    \FSM_sequential_tx_state[3]_i_3_3 ,
    gt0_pll0lock_out,
    independent_clock_bufg);
  output [0:0]E;
  output \FSM_sequential_tx_state_reg[1] ;
  input reset_time_out_reg;
  input [3:0]Q;
  input \FSM_sequential_tx_state_reg[0] ;
  input \FSM_sequential_tx_state_reg[0]_0 ;
  input sel;
  input mmcm_lock_reclocked;
  input \FSM_sequential_tx_state_reg[0]_1 ;
  input \FSM_sequential_tx_state[3]_i_3_0 ;
  input \FSM_sequential_tx_state[3]_i_3_1 ;
  input txresetdone_s3;
  input reset_time_out;
  input \FSM_sequential_tx_state[3]_i_3_2 ;
  input \FSM_sequential_tx_state[3]_i_3_3 ;
  input gt0_pll0lock_out;
  input independent_clock_bufg;

  wire [0:0]E;
  wire \FSM_sequential_tx_state[3]_i_3_0 ;
  wire \FSM_sequential_tx_state[3]_i_3_1 ;
  wire \FSM_sequential_tx_state[3]_i_3_2 ;
  wire \FSM_sequential_tx_state[3]_i_3_3 ;
  wire \FSM_sequential_tx_state[3]_i_3_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_6_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_8_n_0 ;
  wire \FSM_sequential_tx_state_reg[0] ;
  wire \FSM_sequential_tx_state_reg[0]_0 ;
  wire \FSM_sequential_tx_state_reg[0]_1 ;
  wire \FSM_sequential_tx_state_reg[1] ;
  wire [3:0]Q;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt0_pll0lock_out;
  wire independent_clock_bufg;
  wire mmcm_lock_reclocked;
  wire pll0lock_sync;
  wire reset_time_out;
  wire reset_time_out_0;
  wire reset_time_out_reg;
  wire sel;
  wire txresetdone_s3;

  LUT6 #(
    .INIT(64'h3300744433007477)) 
    \FSM_sequential_tx_state[3]_i_1 
       (.I0(\FSM_sequential_tx_state[3]_i_3_n_0 ),
        .I1(Q[0]),
        .I2(\FSM_sequential_tx_state_reg[0] ),
        .I3(\FSM_sequential_tx_state_reg[0]_0 ),
        .I4(Q[3]),
        .I5(sel),
        .O(E));
  LUT6 #(
    .INIT(64'h888BBBBB888B8888)) 
    \FSM_sequential_tx_state[3]_i_3 
       (.I0(\FSM_sequential_tx_state[3]_i_6_n_0 ),
        .I1(Q[1]),
        .I2(mmcm_lock_reclocked),
        .I3(\FSM_sequential_tx_state_reg[0]_1 ),
        .I4(Q[2]),
        .I5(\FSM_sequential_tx_state[3]_i_8_n_0 ),
        .O(\FSM_sequential_tx_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h45004500450045FF)) 
    \FSM_sequential_tx_state[3]_i_6 
       (.I0(txresetdone_s3),
        .I1(reset_time_out),
        .I2(\FSM_sequential_tx_state[3]_i_3_2 ),
        .I3(Q[2]),
        .I4(pll0lock_sync),
        .I5(\FSM_sequential_tx_state[3]_i_3_3 ),
        .O(\FSM_sequential_tx_state[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \FSM_sequential_tx_state[3]_i_8 
       (.I0(pll0lock_sync),
        .I1(\FSM_sequential_tx_state[3]_i_3_0 ),
        .I2(\FSM_sequential_tx_state[3]_i_3_1 ),
        .O(\FSM_sequential_tx_state[3]_i_8_n_0 ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_pll0lock_out),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(pll0lock_sync),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFEAAFEFE02AA0202)) 
    reset_time_out_i_1
       (.I0(reset_time_out_0),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(reset_time_out),
        .O(\FSM_sequential_tx_state_reg[1] ));
  LUT5 #(
    .INIT(32'h08BF08BB)) 
    reset_time_out_i_2
       (.I0(reset_time_out_reg),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(pll0lock_sync),
        .O(reset_time_out_0));
endmodule

module gig_ethernet_pcs_pma_transceiver
   (txn,
    txp,
    rxoutclk,
    txoutclk,
    rxchariscomma,
    rxcharisk,
    rxdisperr,
    rxnotintable,
    rxbufstatus,
    txbuferr,
    mmcm_reset,
    reset_in,
    data_in,
    rx_fsm_reset_done_int_reg,
    Q,
    \rxdata_reg[7]_0 ,
    CLK,
    rxn,
    rxp,
    gt0_pll0outclk_out,
    gt0_pll0outrefclk_out,
    gt0_pll1outclk_out,
    gt0_pll1outrefclk_out,
    gtpe2_i,
    independent_clock_bufg,
    SR,
    userclk2,
    reset_sync5,
    powerdown,
    D,
    txchardispval_reg_reg_0,
    txcharisk_reg_reg_0,
    out,
    gt0_pll0refclklost_out,
    status_vector,
    enablealign,
    data_sync_reg1,
    gt0_pll0lock_out,
    \txdata_reg_reg[7]_0 );
  output txn;
  output txp;
  output rxoutclk;
  output txoutclk;
  output [0:0]rxchariscomma;
  output [0:0]rxcharisk;
  output [0:0]rxdisperr;
  output [0:0]rxnotintable;
  output [0:0]rxbufstatus;
  output txbuferr;
  output mmcm_reset;
  output reset_in;
  output data_in;
  output rx_fsm_reset_done_int_reg;
  output [1:0]Q;
  output [7:0]\rxdata_reg[7]_0 ;
  input CLK;
  input rxn;
  input rxp;
  input gt0_pll0outclk_out;
  input gt0_pll0outrefclk_out;
  input gt0_pll1outclk_out;
  input gt0_pll1outrefclk_out;
  input gtpe2_i;
  input independent_clock_bufg;
  input [0:0]SR;
  input userclk2;
  input [0:0]reset_sync5;
  input powerdown;
  input [0:0]D;
  input [0:0]txchardispval_reg_reg_0;
  input [0:0]txcharisk_reg_reg_0;
  input [0:0]out;
  input gt0_pll0refclklost_out;
  input [0:0]status_vector;
  input enablealign;
  input data_sync_reg1;
  input gt0_pll0lock_out;
  input [7:0]\txdata_reg_reg[7]_0 ;

  wire CLK;
  wire [0:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire data_in;
  wire data_sync_reg1;
  wire data_valid_reg2;
  wire enablealign;
  wire encommaalign_int;
  wire gt0_pll0lock_out;
  wire gt0_pll0outclk_out;
  wire gt0_pll0outrefclk_out;
  wire gt0_pll0refclklost_out;
  wire gt0_pll1outclk_out;
  wire gt0_pll1outrefclk_out;
  wire gtpe2_i;
  wire gtwizard_inst_n_6;
  wire gtwizard_inst_n_7;
  wire independent_clock_bufg;
  wire mmcm_reset;
  wire [0:0]out;
  wire p_0_in;
  wire powerdown;
  wire reset_in;
  wire [0:0]reset_sync5;
  wire rx_fsm_reset_done_int_reg;
  wire [0:0]rxbufstatus;
  wire [0:0]rxchariscomma;
  wire [1:0]rxchariscomma_double;
  wire rxchariscomma_i_1_n_0;
  wire [1:0]rxchariscomma_int;
  wire [1:0]rxchariscomma_reg__0;
  wire [0:0]rxcharisk;
  wire [1:0]rxcharisk_double;
  wire rxcharisk_i_1_n_0;
  wire [1:0]rxcharisk_int;
  wire [1:0]rxcharisk_reg__0;
  wire [1:0]rxclkcorcnt_double;
  wire [1:0]rxclkcorcnt_int;
  wire [1:0]rxclkcorcnt_reg;
  wire \rxdata[0]_i_1_n_0 ;
  wire \rxdata[1]_i_1_n_0 ;
  wire \rxdata[2]_i_1_n_0 ;
  wire \rxdata[3]_i_1_n_0 ;
  wire \rxdata[4]_i_1_n_0 ;
  wire \rxdata[5]_i_1_n_0 ;
  wire \rxdata[6]_i_1_n_0 ;
  wire \rxdata[7]_i_1_n_0 ;
  wire [15:0]rxdata_double;
  wire [15:0]rxdata_int;
  wire [15:0]rxdata_reg;
  wire [7:0]\rxdata_reg[7]_0 ;
  wire [0:0]rxdisperr;
  wire [1:0]rxdisperr_double;
  wire rxdisperr_i_1_n_0;
  wire [1:0]rxdisperr_int;
  wire [1:0]rxdisperr_reg__0;
  wire rxn;
  wire [0:0]rxnotintable;
  wire [1:0]rxnotintable_double;
  wire rxnotintable_i_1_n_0;
  wire [1:0]rxnotintable_int;
  wire [1:0]rxnotintable_reg__0;
  wire rxoutclk;
  wire rxp;
  wire rxpowerdown;
  wire rxpowerdown_double;
  wire rxpowerdown_reg__0;
  wire rxreset_int;
  wire [0:0]status_vector;
  wire toggle;
  wire toggle_i_1_n_0;
  wire txbuferr;
  wire [1:1]txbufstatus_reg;
  wire [1:0]txchardispmode_double;
  wire [1:0]txchardispmode_int;
  wire txchardispmode_reg;
  wire [1:0]txchardispval_double;
  wire [1:0]txchardispval_int;
  wire txchardispval_reg;
  wire [0:0]txchardispval_reg_reg_0;
  wire [1:0]txcharisk_double;
  wire [1:0]txcharisk_int;
  wire txcharisk_reg;
  wire [0:0]txcharisk_reg_reg_0;
  wire [15:0]txdata_double;
  wire [15:0]txdata_int;
  wire [7:0]txdata_reg;
  wire [7:0]\txdata_reg_reg[7]_0 ;
  wire txn;
  wire txoutclk;
  wire txp;
  wire txpowerdown;
  wire txpowerdown_double;
  wire txpowerdown_reg__0;
  wire txreset_int;
  wire userclk2;
  wire wtd_rxpcsreset_in;

  gig_ethernet_pcs_pma_GTWIZARD gtwizard_inst
       (.CLK(CLK),
        .D(rxclkcorcnt_int),
        .PLL0_RESET_reg(reset_in),
        .Q(txdata_int),
        .RXBUFSTATUS(gtwizard_inst_n_7),
        .RXPD(rxpowerdown),
        .TXBUFSTATUS(gtwizard_inst_n_6),
        .TXPD(txpowerdown),
        .data_in(data_in),
        .data_out(data_valid_reg2),
        .data_sync_reg1(data_sync_reg1),
        .gt0_gtrxreset_gt_d1_reg(rxreset_int),
        .gt0_pll0lock_out(gt0_pll0lock_out),
        .gt0_pll0outclk_out(gt0_pll0outclk_out),
        .gt0_pll0outrefclk_out(gt0_pll0outrefclk_out),
        .gt0_pll0refclklost_out(gt0_pll0refclklost_out),
        .gt0_pll1outclk_out(gt0_pll1outclk_out),
        .gt0_pll1outrefclk_out(gt0_pll1outrefclk_out),
        .gtpe2_i(rxdata_int),
        .gtpe2_i_0(rxchariscomma_int),
        .gtpe2_i_1(rxcharisk_int),
        .gtpe2_i_2(rxdisperr_int),
        .gtpe2_i_3(rxnotintable_int),
        .gtpe2_i_4(gtpe2_i),
        .gtpe2_i_5(txchardispmode_int),
        .gtpe2_i_6(txchardispval_int),
        .gtpe2_i_7(txcharisk_int),
        .gtpe2_i_8(txreset_int),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_reset(mmcm_reset),
        .out(out),
        .reset_out(encommaalign_int),
        .rx_fsm_reset_done_int_reg(rx_fsm_reset_done_int_reg),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .wtd_rxpcsreset_in(wtd_rxpcsreset_in));
  gig_ethernet_pcs_pma_reset_sync reclock_encommaalign
       (.enablealign(enablealign),
        .reset_out(encommaalign_int),
        .userclk2(userclk2));
  gig_ethernet_pcs_pma_reset_sync_1 reclock_rxreset
       (.independent_clock_bufg(independent_clock_bufg),
        .reset_out(rxreset_int),
        .reset_sync5_0(reset_sync5));
  gig_ethernet_pcs_pma_reset_sync_2 reclock_txreset
       (.SR(SR),
        .independent_clock_bufg(independent_clock_bufg),
        .reset_out(txreset_int));
  gig_ethernet_pcs_pma_reset_wtd_timer reset_wtd_timer
       (.data_out(data_valid_reg2),
        .independent_clock_bufg(independent_clock_bufg),
        .wtd_rxpcsreset_in(wtd_rxpcsreset_in));
  FDRE rxbuferr_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(p_0_in),
        .Q(rxbufstatus),
        .R(1'b0));
  FDRE \rxbufstatus_reg_reg[2] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(gtwizard_inst_n_7),
        .Q(p_0_in),
        .R(1'b0));
  FDRE \rxchariscomma_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxchariscomma_reg__0[0]),
        .Q(rxchariscomma_double[0]),
        .R(reset_sync5));
  FDRE \rxchariscomma_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxchariscomma_reg__0[1]),
        .Q(rxchariscomma_double[1]),
        .R(reset_sync5));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rxchariscomma_i_1
       (.I0(rxchariscomma_double[1]),
        .I1(toggle),
        .I2(rxchariscomma_double[0]),
        .O(rxchariscomma_i_1_n_0));
  FDRE rxchariscomma_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(rxchariscomma_i_1_n_0),
        .Q(rxchariscomma),
        .R(reset_sync5));
  FDRE \rxchariscomma_reg_reg[0] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxchariscomma_int[0]),
        .Q(rxchariscomma_reg__0[0]),
        .R(1'b0));
  FDRE \rxchariscomma_reg_reg[1] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxchariscomma_int[1]),
        .Q(rxchariscomma_reg__0[1]),
        .R(1'b0));
  FDRE \rxcharisk_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxcharisk_reg__0[0]),
        .Q(rxcharisk_double[0]),
        .R(reset_sync5));
  FDRE \rxcharisk_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxcharisk_reg__0[1]),
        .Q(rxcharisk_double[1]),
        .R(reset_sync5));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rxcharisk_i_1
       (.I0(rxcharisk_double[1]),
        .I1(toggle),
        .I2(rxcharisk_double[0]),
        .O(rxcharisk_i_1_n_0));
  FDRE rxcharisk_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(rxcharisk_i_1_n_0),
        .Q(rxcharisk),
        .R(reset_sync5));
  FDRE \rxcharisk_reg_reg[0] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxcharisk_int[0]),
        .Q(rxcharisk_reg__0[0]),
        .R(1'b0));
  FDRE \rxcharisk_reg_reg[1] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxcharisk_int[1]),
        .Q(rxcharisk_reg__0[1]),
        .R(1'b0));
  FDRE \rxclkcorcnt_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxclkcorcnt_reg[0]),
        .Q(rxclkcorcnt_double[0]),
        .R(reset_sync5));
  FDRE \rxclkcorcnt_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxclkcorcnt_reg[1]),
        .Q(rxclkcorcnt_double[1]),
        .R(reset_sync5));
  FDRE \rxclkcorcnt_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(rxclkcorcnt_double[0]),
        .Q(Q[0]),
        .R(reset_sync5));
  FDRE \rxclkcorcnt_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(rxclkcorcnt_double[1]),
        .Q(Q[1]),
        .R(reset_sync5));
  FDRE \rxclkcorcnt_reg_reg[0] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxclkcorcnt_int[0]),
        .Q(rxclkcorcnt_reg[0]),
        .R(1'b0));
  FDRE \rxclkcorcnt_reg_reg[1] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxclkcorcnt_int[1]),
        .Q(rxclkcorcnt_reg[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[0]_i_1 
       (.I0(rxdata_double[8]),
        .I1(toggle),
        .I2(rxdata_double[0]),
        .O(\rxdata[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[1]_i_1 
       (.I0(rxdata_double[9]),
        .I1(toggle),
        .I2(rxdata_double[1]),
        .O(\rxdata[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[2]_i_1 
       (.I0(rxdata_double[10]),
        .I1(toggle),
        .I2(rxdata_double[2]),
        .O(\rxdata[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[3]_i_1 
       (.I0(rxdata_double[11]),
        .I1(toggle),
        .I2(rxdata_double[3]),
        .O(\rxdata[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[4]_i_1 
       (.I0(rxdata_double[12]),
        .I1(toggle),
        .I2(rxdata_double[4]),
        .O(\rxdata[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[5]_i_1 
       (.I0(rxdata_double[13]),
        .I1(toggle),
        .I2(rxdata_double[5]),
        .O(\rxdata[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[6]_i_1 
       (.I0(rxdata_double[14]),
        .I1(toggle),
        .I2(rxdata_double[6]),
        .O(\rxdata[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[7]_i_1 
       (.I0(rxdata_double[15]),
        .I1(toggle),
        .I2(rxdata_double[7]),
        .O(\rxdata[7]_i_1_n_0 ));
  FDRE \rxdata_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[0]),
        .Q(rxdata_double[0]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[10] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[10]),
        .Q(rxdata_double[10]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[11] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[11]),
        .Q(rxdata_double[11]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[12] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[12]),
        .Q(rxdata_double[12]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[13] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[13]),
        .Q(rxdata_double[13]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[14] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[14]),
        .Q(rxdata_double[14]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[15] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[15]),
        .Q(rxdata_double[15]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[1]),
        .Q(rxdata_double[1]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[2] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[2]),
        .Q(rxdata_double[2]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[3] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[3]),
        .Q(rxdata_double[3]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[4] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[4]),
        .Q(rxdata_double[4]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[5] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[5]),
        .Q(rxdata_double[5]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[6] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[6]),
        .Q(rxdata_double[6]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[7] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[7]),
        .Q(rxdata_double[7]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[8] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[8]),
        .Q(rxdata_double[8]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[9] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[9]),
        .Q(rxdata_double[9]),
        .R(reset_sync5));
  FDRE \rxdata_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[0]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [0]),
        .R(reset_sync5));
  FDRE \rxdata_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[1]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [1]),
        .R(reset_sync5));
  FDRE \rxdata_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[2]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [2]),
        .R(reset_sync5));
  FDRE \rxdata_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[3]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [3]),
        .R(reset_sync5));
  FDRE \rxdata_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[4]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [4]),
        .R(reset_sync5));
  FDRE \rxdata_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[5]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [5]),
        .R(reset_sync5));
  FDRE \rxdata_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[6]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [6]),
        .R(reset_sync5));
  FDRE \rxdata_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[7]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [7]),
        .R(reset_sync5));
  FDRE \rxdata_reg_reg[0] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdata_int[0]),
        .Q(rxdata_reg[0]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[10] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdata_int[10]),
        .Q(rxdata_reg[10]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[11] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdata_int[11]),
        .Q(rxdata_reg[11]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[12] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdata_int[12]),
        .Q(rxdata_reg[12]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[13] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdata_int[13]),
        .Q(rxdata_reg[13]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[14] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdata_int[14]),
        .Q(rxdata_reg[14]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[15] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdata_int[15]),
        .Q(rxdata_reg[15]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[1] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdata_int[1]),
        .Q(rxdata_reg[1]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[2] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdata_int[2]),
        .Q(rxdata_reg[2]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[3] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdata_int[3]),
        .Q(rxdata_reg[3]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[4] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdata_int[4]),
        .Q(rxdata_reg[4]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[5] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdata_int[5]),
        .Q(rxdata_reg[5]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[6] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdata_int[6]),
        .Q(rxdata_reg[6]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[7] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdata_int[7]),
        .Q(rxdata_reg[7]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[8] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdata_int[8]),
        .Q(rxdata_reg[8]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[9] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdata_int[9]),
        .Q(rxdata_reg[9]),
        .R(1'b0));
  FDRE \rxdisperr_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdisperr_reg__0[0]),
        .Q(rxdisperr_double[0]),
        .R(reset_sync5));
  FDRE \rxdisperr_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdisperr_reg__0[1]),
        .Q(rxdisperr_double[1]),
        .R(reset_sync5));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rxdisperr_i_1
       (.I0(rxdisperr_double[1]),
        .I1(toggle),
        .I2(rxdisperr_double[0]),
        .O(rxdisperr_i_1_n_0));
  FDRE rxdisperr_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(rxdisperr_i_1_n_0),
        .Q(rxdisperr),
        .R(reset_sync5));
  FDRE \rxdisperr_reg_reg[0] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdisperr_int[0]),
        .Q(rxdisperr_reg__0[0]),
        .R(1'b0));
  FDRE \rxdisperr_reg_reg[1] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxdisperr_int[1]),
        .Q(rxdisperr_reg__0[1]),
        .R(1'b0));
  FDRE \rxnotintable_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxnotintable_reg__0[0]),
        .Q(rxnotintable_double[0]),
        .R(reset_sync5));
  FDRE \rxnotintable_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxnotintable_reg__0[1]),
        .Q(rxnotintable_double[1]),
        .R(reset_sync5));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rxnotintable_i_1
       (.I0(rxnotintable_double[1]),
        .I1(toggle),
        .I2(rxnotintable_double[0]),
        .O(rxnotintable_i_1_n_0));
  FDRE rxnotintable_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(rxnotintable_i_1_n_0),
        .Q(rxnotintable),
        .R(reset_sync5));
  FDRE \rxnotintable_reg_reg[0] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxnotintable_int[0]),
        .Q(rxnotintable_reg__0[0]),
        .R(1'b0));
  FDRE \rxnotintable_reg_reg[1] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxnotintable_int[1]),
        .Q(rxnotintable_reg__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rxpowerdown_double_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(powerdown),
        .Q(rxpowerdown_double),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rxpowerdown_reg
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(rxpowerdown_reg__0),
        .Q(rxpowerdown),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rxpowerdown_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(rxpowerdown_double),
        .Q(rxpowerdown_reg__0),
        .R(reset_sync5));
  gig_ethernet_pcs_pma_sync_block_3 sync_block_data_valid
       (.data_out(data_valid_reg2),
        .independent_clock_bufg(independent_clock_bufg),
        .status_vector(status_vector));
  LUT1 #(
    .INIT(2'h1)) 
    toggle_i_1
       (.I0(toggle),
        .O(toggle_i_1_n_0));
  FDRE toggle_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(toggle_i_1_n_0),
        .Q(toggle),
        .R(SR));
  FDRE txbuferr_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(txbufstatus_reg),
        .Q(txbuferr),
        .R(1'b0));
  FDRE \txbufstatus_reg_reg[1] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(gtwizard_inst_n_6),
        .Q(txbufstatus_reg),
        .R(1'b0));
  FDRE \txchardispmode_double_reg[0] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txchardispmode_reg),
        .Q(txchardispmode_double[0]),
        .R(SR));
  FDRE \txchardispmode_double_reg[1] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(D),
        .Q(txchardispmode_double[1]),
        .R(SR));
  FDRE \txchardispmode_int_reg[0] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txchardispmode_double[0]),
        .Q(txchardispmode_int[0]),
        .R(1'b0));
  FDRE \txchardispmode_int_reg[1] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txchardispmode_double[1]),
        .Q(txchardispmode_int[1]),
        .R(1'b0));
  FDRE txchardispmode_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(D),
        .Q(txchardispmode_reg),
        .R(SR));
  FDRE \txchardispval_double_reg[0] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txchardispval_reg),
        .Q(txchardispval_double[0]),
        .R(SR));
  FDRE \txchardispval_double_reg[1] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txchardispval_reg_reg_0),
        .Q(txchardispval_double[1]),
        .R(SR));
  FDRE \txchardispval_int_reg[0] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txchardispval_double[0]),
        .Q(txchardispval_int[0]),
        .R(1'b0));
  FDRE \txchardispval_int_reg[1] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txchardispval_double[1]),
        .Q(txchardispval_int[1]),
        .R(1'b0));
  FDRE txchardispval_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(txchardispval_reg_reg_0),
        .Q(txchardispval_reg),
        .R(SR));
  FDRE \txcharisk_double_reg[0] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txcharisk_reg),
        .Q(txcharisk_double[0]),
        .R(SR));
  FDRE \txcharisk_double_reg[1] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txcharisk_reg_reg_0),
        .Q(txcharisk_double[1]),
        .R(SR));
  FDRE \txcharisk_int_reg[0] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txcharisk_double[0]),
        .Q(txcharisk_int[0]),
        .R(1'b0));
  FDRE \txcharisk_int_reg[1] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txcharisk_double[1]),
        .Q(txcharisk_int[1]),
        .R(1'b0));
  FDRE txcharisk_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(txcharisk_reg_reg_0),
        .Q(txcharisk_reg),
        .R(SR));
  FDRE \txdata_double_reg[0] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[0]),
        .Q(txdata_double[0]),
        .R(SR));
  FDRE \txdata_double_reg[10] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [2]),
        .Q(txdata_double[10]),
        .R(SR));
  FDRE \txdata_double_reg[11] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [3]),
        .Q(txdata_double[11]),
        .R(SR));
  FDRE \txdata_double_reg[12] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [4]),
        .Q(txdata_double[12]),
        .R(SR));
  FDRE \txdata_double_reg[13] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [5]),
        .Q(txdata_double[13]),
        .R(SR));
  FDRE \txdata_double_reg[14] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [6]),
        .Q(txdata_double[14]),
        .R(SR));
  FDRE \txdata_double_reg[15] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [7]),
        .Q(txdata_double[15]),
        .R(SR));
  FDRE \txdata_double_reg[1] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[1]),
        .Q(txdata_double[1]),
        .R(SR));
  FDRE \txdata_double_reg[2] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[2]),
        .Q(txdata_double[2]),
        .R(SR));
  FDRE \txdata_double_reg[3] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[3]),
        .Q(txdata_double[3]),
        .R(SR));
  FDRE \txdata_double_reg[4] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[4]),
        .Q(txdata_double[4]),
        .R(SR));
  FDRE \txdata_double_reg[5] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[5]),
        .Q(txdata_double[5]),
        .R(SR));
  FDRE \txdata_double_reg[6] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[6]),
        .Q(txdata_double[6]),
        .R(SR));
  FDRE \txdata_double_reg[7] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[7]),
        .Q(txdata_double[7]),
        .R(SR));
  FDRE \txdata_double_reg[8] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [0]),
        .Q(txdata_double[8]),
        .R(SR));
  FDRE \txdata_double_reg[9] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [1]),
        .Q(txdata_double[9]),
        .R(SR));
  FDRE \txdata_int_reg[0] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txdata_double[0]),
        .Q(txdata_int[0]),
        .R(1'b0));
  FDRE \txdata_int_reg[10] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txdata_double[10]),
        .Q(txdata_int[10]),
        .R(1'b0));
  FDRE \txdata_int_reg[11] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txdata_double[11]),
        .Q(txdata_int[11]),
        .R(1'b0));
  FDRE \txdata_int_reg[12] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txdata_double[12]),
        .Q(txdata_int[12]),
        .R(1'b0));
  FDRE \txdata_int_reg[13] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txdata_double[13]),
        .Q(txdata_int[13]),
        .R(1'b0));
  FDRE \txdata_int_reg[14] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txdata_double[14]),
        .Q(txdata_int[14]),
        .R(1'b0));
  FDRE \txdata_int_reg[15] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txdata_double[15]),
        .Q(txdata_int[15]),
        .R(1'b0));
  FDRE \txdata_int_reg[1] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txdata_double[1]),
        .Q(txdata_int[1]),
        .R(1'b0));
  FDRE \txdata_int_reg[2] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txdata_double[2]),
        .Q(txdata_int[2]),
        .R(1'b0));
  FDRE \txdata_int_reg[3] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txdata_double[3]),
        .Q(txdata_int[3]),
        .R(1'b0));
  FDRE \txdata_int_reg[4] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txdata_double[4]),
        .Q(txdata_int[4]),
        .R(1'b0));
  FDRE \txdata_int_reg[5] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txdata_double[5]),
        .Q(txdata_int[5]),
        .R(1'b0));
  FDRE \txdata_int_reg[6] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txdata_double[6]),
        .Q(txdata_int[6]),
        .R(1'b0));
  FDRE \txdata_int_reg[7] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txdata_double[7]),
        .Q(txdata_int[7]),
        .R(1'b0));
  FDRE \txdata_int_reg[8] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txdata_double[8]),
        .Q(txdata_int[8]),
        .R(1'b0));
  FDRE \txdata_int_reg[9] 
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txdata_double[9]),
        .Q(txdata_int[9]),
        .R(1'b0));
  FDRE \txdata_reg_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [0]),
        .Q(txdata_reg[0]),
        .R(SR));
  FDRE \txdata_reg_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [1]),
        .Q(txdata_reg[1]),
        .R(SR));
  FDRE \txdata_reg_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [2]),
        .Q(txdata_reg[2]),
        .R(SR));
  FDRE \txdata_reg_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [3]),
        .Q(txdata_reg[3]),
        .R(SR));
  FDRE \txdata_reg_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [4]),
        .Q(txdata_reg[4]),
        .R(SR));
  FDRE \txdata_reg_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [5]),
        .Q(txdata_reg[5]),
        .R(SR));
  FDRE \txdata_reg_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [6]),
        .Q(txdata_reg[6]),
        .R(SR));
  FDRE \txdata_reg_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [7]),
        .Q(txdata_reg[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    txpowerdown_double_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(txpowerdown_reg__0),
        .Q(txpowerdown_double),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    txpowerdown_reg
       (.C(gtpe2_i),
        .CE(1'b1),
        .D(txpowerdown_double),
        .Q(txpowerdown),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    txpowerdown_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(powerdown),
        .Q(txpowerdown_reg__0),
        .R(SR));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KYJWzR4vcKBSZu8Xwex/6tmg53LVElcHlSQriBXJNPcz87+7TONysl4izxwXP9yEvug1aeLMuJV9
QpCnAYHZHXfLsNRjUCmA+BPVRelbdqqB52e3uXeIusRdKf9bJK4vTbT3G0lEoFHH5X7C9bSLI4YT
sZUjuHirRGeJHd/b3e0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
yo2V0dC7eF/FmwCqmZxlpuXtmB0HywmWLHJT2jcPSMAC1OXxijmfEbvJ+5lPdLPxXgr9jwwXxwMr
v6iklkYNq+D0goSg8ugfBWwguc77JQVz+jMEKP5qhn7Ri+tKZ00wMjngOlr69eLBesdgH5S7cB58
MceEDf75gNDYQTVzBMlKHcS2mYGmDQkhlgD+FDqOy0bnjw5cKAR61rsdl0A5rMVryGdDWCMhdTU1
ZF8hcDIYUHZBc1Rt5KmxBFRnumpyZkvST8/JckJYBT4n5h8I+vWWI5/wUepjQAwCpQDRQx1ya6wF
c65P3BGTHHaZgJ18lQGc+LhcI9bXwV/MpMi4vw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FMyPG7pILxysnSMbT2vgWSttyZukEuB9wb0W6Enmto1g4p73zQOy/y6J4k8CeKOmBonMsMxgR96B
7ymzkfztYO6rjGzDtyLRZci3g/2lEhq7hFZJpTsqrjCfl6rJRxYEFWRru2wNunKSy8gmBjTS/oYO
W2Fyj3KEM9HxqjqZyog=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iv7mhm24oKZE/f/TTAt2P/10rXi8j8ceh05JuZQyLJt6z2wemUiiehGVSeIEc+J/5A8Ky+p5jZlR
zcDz/M6c20lBgNhKjU5Y5/MHKgHsXLEYT6mdLioI9YMqgbzgxL4Wl5NSDSxpPVJXa6dKPuX6edQ+
O9X4vUbFWfAhQRmpfaMfpkrepNBfrxu83VYFIDBh9Oojikqnqx0cHXIwFJoUpIHHG4CxxVcaEr6Z
ckCcd8GW/diuMXklBhICPDSmVB8npY6equ70WXNvlpGqCwoAjF+X+W+fUFLKSuFq9RhGZ5fZpSUd
SuqmoFu4K0kSHyOI0uGqPxSbF4IXp1jtRXncIw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
G1Dg5WUJaLlOLKvgoRqVkbfWuFm3+8fXpsCVayvBniajy/El8hUFZpcvlPgh+rWnnYMXGY1+dgcv
tDit+krZVNCgFHV62uCLpEWe2SLCJrR+6CKtb1o7z3H46ojm1rD3p8jitykUqmFj/lWwZwCa4lim
i6Pb1Xa2ZSoV3OD/bC+nQ5fvju/wDCxruGqzxHiUM2N1jb5uZk4YmAdOZyHHdgs0GdFQhuc7ZrW1
gZo5cJKb8Km1Wd8ARflhofc0R7eS2WmC87uF4r0un9/OaTBgYqsqLOpX5bnGEEge+qTEKWDyL4h8
Ume5IveElh7cPp3ShEIH/D4P5T//a6ibft2Ehw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
g5+VIKoLaErnfHgoHvjVbfqwQzBWMaP4R2LjkVr68qIXmeoeDhzRRLQ4wlH2S/rFzovDzSTBGdIH
oYYiMg609yl+k/B0IljBcarVRsDmlnXA7zxLHWEVsbDmINIsmSgfnKupCURx4WTMiTEEnzpFOgSG
FNO38PbbriYMLv1VGWMjraOnk5lpxKjghmEvEUYWdOVXtm35Hrwap5YAyCOqPfL4p2v1H2kOgkPc
Vzn++2QRO74wFlIWhRH7Sd/lyg0d/qv8cKPWbGlk4FtIBDWRpbH4IRSA97sUSTUS667ZXQ10dti3
LWf7wAVnNVkHNDGi5ztKc3PoV7Bz/abjdFbXkQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dqvjRf66eFgeN/Z8ybsPcYyyIE05+qB7A909cHStC2BZH94z9sKHr0fQY+x+VvxYGTniR1aGjPx0
53ONyQQVvubqZtHZYB2iWA6RzLHFnzu1fS2eVpSg3lf815QAPoyC1mqE9mV9uFW9XFNDA4sTGbsE
Mm0X/palJ2COd2driADaaF01JZ04gAffkGtpLrHWtH/LHgHRjXt6AyI5/CdmubuRcdM1FUvp/aec
tl/Keptqbs1dnnUMqMTDG7zPcKewV3+EukMtVuc2RguUzNM9zom97XVDLrwA52GD2wn6OgEjqW/v
WrDNmT+/pCGVhQbbEbc+krAFY12VnOMEQVU1SQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
vt6GqHaOeiXWiOhNHC/zgACS4w7PkN49ZzDNMk5JhLGd7+8h4IyHdcFgaF/HLlCR/eReBugWAosy
AaMap069hD7E94rLEU7fFxdbkZYD6qLfs9Gu+ij9YllluEaMg4o+AqGHNNeYYWvs2nl4L5laUAfa
rYPwqHTRWLtqj1pmCtIp/YNnRATHP7qibNftjKYmVOdFpGM9mVr48pZYhbHe9OJtqKtLbzRIJrIn
XvtuJdPHttlExSyMmORUbaLYh5oiwdUbKKxCiAfz1mHaxpbH7EQEjplH6DVHCR0wl4UUpLpS4XqY
m2xvNOHiblEfeMbqSa6geR72WnSxMQyg3r+EDmXpy6WQLES2V1n7H/8kkv6d64A3A6sCbo65No25
Wvo8CYTCnPsHPuPOj79pIFf7guIv0k5LashTfHLLIR5JkLQKHAYzeu7qwv4NIUhIsngmILHqlN57
g42UvS9VND0MpaQoTa73SKy0/uXKITax5YnsQT6gB9Zuh4v93mQiuwse

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OYMs23XUcbQ/M2VNEw2Xoqu7rprn0Zo52KrgROUZzOWxj2vqiE8/ZJRGyB640nrUUC48KRLpb0um
E7OYiTf+sF8tYI49vr5OGew9/TE/Sv8rMLuAP9LLfXxqGyylb9KuDHYuzHEHi31oLMR7ew+Ki243
py8iOp9Ucpu7AaeoqYLp4bTRee7GH4YKqWARaTtjbQtBGhsk8oL2ZfgW1eR6HGkMrRekYlvvymo6
tgV2IVO0xrmS/XBmTYaV4/LYaZVOn0Tydjcx+A1ERtrPrvPIn3HSuREXxKrg7P0B+4lmpJlTBOSW
Pgun3bqS7nhgp22NV4RNku457E5J0aTZylZ2wg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KnsZLKALDWqncIJgzAKfboAuo1VaWQUcXKcdRXyL4Ex6lEqsmmKTvxZ6EfVlq4HiuTHkw5MX+NK3
1g2d9wfipvhz8BH563axa8qzO9xe2utPb9F2ISfN1Ds/KOGS9CrQOp3fWf3Y+gk1h1XF/G+BeUAd
v+eyBhX4zlryy63IOrd6NXvYMXdZijqYhV0BlhV3rj6h7oLGezgoNXJZmXnX5xTnIKcQdZouA88t
q/0lfTuWkYlGmOlNEYGIHNrd8AGkElTrxjKoRYVp71MYrclJ7UA0LgOLL9ClcDM7WM6zrXFsmPdL
31jIWwy/HWrK4DuuyP/SScJg8qoy5TJLTbbvew==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
e6JH08Az14VwmgDMM6NOUSh9Oz7q+rduGKFU5Jb8XZOaLO8kMDmApqoiHHUZcoKttzzKMBTFVbns
ACZQBPxPvUO8eIA9UpHKrHjydiosMrG4UheuLv4ocQY+xjVga6bwymdKcX29JCXvl3Y0e66unMl2
m6p9QvQVNUvDPFde0n8uMKr7vTUEe30tITbHs9xHBQFlARKj7GCj5g7KKJHY64BjBjObX8NWO+we
GuhjRWN/wtE1u/CGXwx6E+J8USIu+2ydw3NCPMWN9r1XR6ivKEZJQX/qS1veF16Mpnl+VaU7q5R9
fAvl220pPNb9Li/+/Q9p1PLYcagpeKsg+lo36g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 320256)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
