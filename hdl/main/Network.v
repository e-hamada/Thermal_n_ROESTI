`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/02/01 14:07:48
// Design Name: 
// Module Name: Network
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Network(
    RST,
    SFP_REFCLK_P,
    SFP_REFCLK_N,
    SFP_TX_P,    
    SFP_TX_N,    
    SFP_RX_P,    
    SFP_RX_N,
    clk125m,
    clk200m,
    clk133m,
    tcp_tx_full, 
    tcp_tx_wr_myboard,    
    tcp_tx_data_myboard,  
    tcp_rx_data,  
    tcp_rx_wr,    
    sitcp_rst,    
    tcp_close_req,
    tcp_open_ack, 
    rbcp_addr,    
    rbcp_wd,      
    rbcp_we,      
    rbcp_rd,      
    rbcp_re,      
    rbcp_ack,
    rbcp_act, 
    pll_reset,
    pllLocked,
    DIP_SW,
    next_board_IP_addr,
    next_board_MAC_addr,
    TCP_OPEN_REQ2,
    event_finish,
    EventBuildNumber,
    SiTCP_RST_on,
    network_init,
    OwnADC_FIFO_empty,
    EventNumber3,
    OwnADC_data_FIFO_empty,
    seu_count_reset,
    CRC32err_count,
    SiTCP_IP_ADDR_OUT
    );

    input RST;
    
    //SFP
    input           SFP_REFCLK_P;
    input           SFP_REFCLK_N;
    output [1:0]    SFP_TX_P;
    output [1:0]    SFP_TX_N;
    input [1:0]     SFP_RX_P;
    input [1:0]     SFP_RX_N;
    
    //CLOCK    
    output          clk125m;
    input           clk200m;
    input           clk133m;
    
    //SiTCP1
    output          tcp_tx_full;
    input           tcp_tx_wr_myboard;    
    input  [7:0]    tcp_tx_data_myboard;  
    output [7:0]    tcp_rx_data;  
    output          tcp_rx_wr;    
    output          sitcp_rst;    
    output          tcp_close_req;
    output          tcp_open_ack; 
    output [31:0]   rbcp_addr;    
    output [7:0]    rbcp_wd;      
    output          rbcp_we;      
    input  [7:0]    rbcp_rd;      
    output          rbcp_re;      
    input           rbcp_ack;
    output          rbcp_act;
    input           OwnADC_FIFO_empty;
    input [31:0]    EventNumber3;
    input           OwnADC_data_FIFO_empty;
    output [31:0]   SiTCP_IP_ADDR_OUT;
    

    input [31:0]    next_board_IP_addr;
    input [47:0]    next_board_MAC_addr;
    input           TCP_OPEN_REQ2;  
    input           event_finish;
    input [7:0]     EventBuildNumber;
    input           SiTCP_RST_on;
    input           network_init;
    input           seu_count_reset;
    output [15:0]   CRC32err_count;
    
    //another
    output          pll_reset;
    input           pllLocked;
    input [7:0]     DIP_SW;       
    
//*******************************************************************************
//                  SFP Interface
//*******************************************************************************
    wire           clk125m         ;
    wire           clk200m         ;
    wire           resetdone       ;
    reg            sfp_reset_pulse ;
    wire   [7:0]   gmii_txd        ;
    wire           gmii_tx_en      ;
    wire           gmii_tx_er      ;
    wire   [7:0]   gmii_rxd        ;
    wire           gmii_rx_dv      ;
    wire           gmii_rx_er      ;
    wire   [7:0]   gmii_txd2        ;
    wire           gmii_tx_en2      ;
    wire           gmii_tx_er2      ;
    wire   [7:0]   gmii_rxd2        ;
    wire           gmii_rx_dv2      ;
    wire           gmii_rx_er2      ;    
    wire           gtxUsrClk;
    wire           gtrefclk_bufg_out;
    wire           userclk_out;
    wire           rxuserclk_out;
    wire           rxuserclk2_out;
    wire           pma_reset_out;
    wire           mmcm_locked_out;
    wire           pll0outclk_out          ;
    wire           pll0outrefclk_out       ;
    wire           pll1outclk_out          ;
    wire           pll1outrefclk_out       ;
    wire           pll0lock_out            ;
    wire           pll0refclklost_out      ;
    
    wire [1:0]      sfp_mdc;
    wire [1:0]      sfp_mdio_i;
    

    wire [7:0]  SiTCP_gmii_txd; 
    wire        SiTCP_gmii_tx_en;
    wire        SiTCP_gmii_tx_er;            

    wire [7:0]  SiTCP_gmii_rxd;
    wire        SiTCP_gmii_rx_dv;
    wire        SiTCP_gmii_rx_er;


    gig_ethernet_pcs_pma gig_ethernet_pcs_pma (
        .gtrefclk_p(SFP_REFCLK_P),                        // input wire gtrefclk_p
        .gtrefclk_n(SFP_REFCLK_N),                        // input wire gtrefclk_n
        .gtrefclk_out(clk125m),                           // output wire gtrefclk_out
        .gtrefclk_bufg_out(gtrefclk_bufg_out),
        .txn(SFP_TX_N[0]),                                   // output wire txn
        .txp(SFP_TX_P[0]),                                   // output wire txp
        .rxn(SFP_RX_N[0]),                                   // input wire rxn
        .rxp(SFP_RX_P[0]),                                   // input wire rxp
        .independent_clock_bufg(clk200m),                 // input wire independent_clock_bufg
        .userclk_out(userclk_out),                                   // output wire userclk_out
        .userclk2_out(gtxUsrClk),                                  // output wire userclk2_out
        .rxuserclk_out(rxuserclk_out),                                 // output wire rxuserclk_out
        .rxuserclk2_out(rxuserclk2_out),                                // output wire rxuserclk2_out
        .resetdone(resetdone),                            // output wire resetdone
        .pma_reset_out(pma_reset_out),                                 // output wire pma_reset_out
        .mmcm_locked_out(mmcm_locked_out),                               // output wire mmcm_locked_out
        .gmii_txd(gmii_txd[7:0]),                         // input wire [7 : 0] gmii_txd
        .gmii_tx_en(gmii_tx_en),                          // input wire gmii_tx_en
        .gmii_tx_er(gmii_tx_er),                          // input wire gmii_tx_er
        .gmii_rxd(gmii_rxd[7:0]),                         // output wire [7 : 0] gmii_rxd
        .gmii_rx_dv(gmii_rx_dv),                          // output wire gmii_rx_dv
        .gmii_rx_er(gmii_rx_er),                          // output wire gmii_rx_er
        .gmii_isolate(),                                  // output wire gmii_isolate
        .mdc(sfp_mdc[0]),                                    // input wire mdc
        .mdio_i(sfp_mdio_i[0]),                              // input wire mdio_i
        .mdio_o(),                                        // output wire mdio_o
        .mdio_t(),                                        // output wire mdio_t
        .phyaddr(5'h1),
        .configuration_vector(5'b00000),                  // input wire [4 : 0] configuration_vector
        .configuration_valid(1'b0),                       // input wire configuration_valid
        .an_interrupt(),                                  // Interrupt to processor to signal that Auto-Negotiation has completed
        .an_adv_config_vector(16'b0000_0000_0010_0001),   // Alternate interface to program REG4 (AN ADV)
        .an_adv_config_val(1'b0),                         // Validation signal for AN ADV
        .an_restart_config(1'b0),                         // Alternate signal to modify AN restart bit in REG0
        .status_vector(),                                 // output wire [15 : 0] status_vector
        .reset(sfp_reset_pulse),                          // input wire reset
        .signal_detect(1'b1),                             // input wire signal_detect
        .gt0_pll0outclk_out(pll0outclk_out),                            // output wire gt0_pll0outclk_out
        .gt0_pll0outrefclk_out(pll0outrefclk_out),                         // output wire gt0_pll0outrefclk_out
        .gt0_pll1outclk_out(pll1outclk_out),                            // output wire gt0_pll1outclk_out
        .gt0_pll1outrefclk_out(pll1outrefclk_out),                         // output wire gt0_pll1outrefclk_out
        .gt0_pll0lock_out(pll0lock_out),                              // output wire gt0_pll0lock_out
        .gt0_pll0refclklost_out(pll0refclklost_out)                         // output wire gt0_pll0refclklost_out
    );

       wire           sfpFds      ;
       wire   [3:0]   sfpFd       ;
       reg            reset_pulse ;
    
       FDS SFP_FDS(.Q(sfpFds),   .C(clk125m), .D(1'b0), .S(1'b0));
       FD  SFP_FD0(.Q(sfpFd[0]), .C(clk125m), .D(sfpFds));
       FD  SFP_FD1(.Q(sfpFd[1]), .C(clk125m), .D(sfpFd[0]));
       FD  SFP_FD2(.Q(sfpFd[2]), .C(clk125m), .D(sfpFd[1]));
       FD  SFP_FD3(.Q(sfpFd[3]), .C(clk125m), .D(sfpFd[2]));
    
       always@(posedge clk125m) begin
          reset_pulse <= (|sfpFd[3:0]) ;
       end
    
       reg            sfp_reset_enable       ;
       reg    [4:0]   shift_sfp_reset_enable ;
       reg            resetdone_pos          ;
    
       always@(posedge clk125m) begin
          if (reset_pulse) begin
             sfp_reset_enable <= 1'b0 ;
          end else if (resetdone_pos) begin
             sfp_reset_enable <= 1'b1 ;
          end
       end
    
       always@(posedge clk125m) begin
          shift_sfp_reset_enable[4:0] <= {shift_sfp_reset_enable[3:0],sfp_reset_enable} ;
       end
    
       always@(posedge clk125m) begin
          sfp_reset_pulse <= (~shift_sfp_reset_enable[4]) & shift_sfp_reset_enable[0] ;
       end
    
       reg    [2:0]   dly_resetdone ;
    
       always@(posedge clk125m) begin
          dly_resetdone[0] <= resetdone        ;
          dly_resetdone[1] <= dly_resetdone[0] ;
          dly_resetdone[2] <= dly_resetdone[1] ;
       end
    
       always@(posedge clk125m) begin
          resetdone_pos <= (~dly_resetdone[2]) & dly_resetdone[1] ;
       end
    
       mii_initializer mii_initializer(
          .CLK      (clk125m           ),  // in : system clock (125M)
          .RST      (sfp_reset_pulse   ),  // in : system reset
          .PHYAD    (5'b00001          ),  // in : [4:0] PHY address
          .MDC      (sfp_mdc[0]        ),  // out: clock (1/128 system clock)
          .MDIO_OUT (sfp_mdio_i[0]     ),  // out: connect this to "PCS/PMA + RocketIO" module .mdio?_i()
          .COMPLETE (                  )   // out: initializing sequence has completed (active H)
       );
       
    
       reg            reg_pll_reset ;
       wire           pll_reset;
       assign pll_reset = reg_pll_reset;
    
       always@(posedge clk125m) begin
          reg_pll_reset <= reset_pulse ;
       end

       reg            sitcp_reset ;
    
       always@(posedge clk125m) begin
          sitcp_reset <= (~pllLocked) ;
       end
           
//*******************************************************************************
//                                   SiTCP
//*******************************************************************************
 
  
    wire [31:0]     SiTCP_IP_ADDR;
    wire [15:0]     SiTCP_TCP_PORT;
    wire [15:0]     SiTCP_RBCP_PORT;
    
    assign SiTCP_IP_ADDR[31:0] = 32'hc0_a8_0a_10 + DIP_SW[5:0];
    assign SiTCP_IP_ADDR_OUT[31:0] = SiTCP_IP_ADDR[31:0];
    assign SiTCP_TCP_PORT[15:0] = 16'd24;
    assign SiTCP_RBCP_PORT[15:0] = 16'd4660;
    
    wire        tcp_open_ack_level1;

    
    wire tcp_tx_wr_SiTCP;
    wire [7:0] tcp_tx_data_SiTCP;
    assign tcp_tx_wr_SiTCP = tcp_tx_wr_myboard;
    assign tcp_tx_data_SiTCP[7:0] = tcp_tx_data_myboard[7:0];
    
    wire TCP_ERROR;
    wire TCP_ERROR2;
   
   
    wire debug_RST;
    wire debug_RST2;

    wire        tcp_tx_wr_SiTCP_final;
    wire [7:0]  tcp_tx_data_SiTCP_final;
    wire        preSiTCP_FIFO_empty;
    wire        tcp_tx_full_final;
    wire [5:0]  data_count_preSiTCP_FIFO;
    wire tcp_tx_wr_SiTCP_preFIFO;
    assign tcp_tx_wr_SiTCP_preFIFO = ~preSiTCP_FIFO_empty & ~tcp_tx_full_final;
    
    preSiTCP_FIFO preSiTCP_FIFO(
        .clk(clk133m),
        .rst(RST),
        .din(tcp_tx_data_SiTCP[7:0]),
        .wr_en(tcp_tx_wr_SiTCP),
        .rd_en(tcp_tx_wr_SiTCP_preFIFO),
        .dout(tcp_tx_data_SiTCP_final[7:0]), 
        .full(), 
        .empty(preSiTCP_FIFO_empty),
        .valid(),
        .data_count(data_count_preSiTCP_FIFO[5:0])
    );
    assign tcp_tx_full = (data_count_preSiTCP_FIFO[5] == 1) ? 1'b1 : 1'b0;
    
    reg tcp_tx_wr_SiTCP_preFIFO_old1;
    always@(posedge clk133m)begin
        tcp_tx_wr_SiTCP_preFIFO_old1 <= tcp_tx_wr_SiTCP_preFIFO;
    end
    assign tcp_tx_wr_SiTCP_final = tcp_tx_wr_SiTCP_preFIFO_old1;



    assign gmii_txd = SiTCP_gmii_txd;
    assign gmii_tx_en = SiTCP_gmii_tx_en;
    assign gmii_tx_er = SiTCP_gmii_tx_er;    
    assign SiTCP_gmii_rxd = gmii_rxd;
    assign SiTCP_gmii_rx_dv = gmii_rx_dv;
    assign SiTCP_gmii_rx_er = gmii_rx_er;
         
    WRAP_SiTCP_GMII_XC7A_32K
       #(133) // = System clock frequency(MHz), integer only
    SiTCP(
       .CLK            (clk133m              ),  // in  : System Clock >129MHz
       .RST            (SiTCP_RST_on          ),  // in  : System reset (Asynchronous)
       .MAC_SELECT     (DIP_SW[5:0]          ),
       // Configuration parameters
       //.FORCE_DEFAULTn (1'b0                 ),  // in  : Load default parameters
       .EXT_IP_ADDR    (SiTCP_IP_ADDR[31:0]  ),
       .EXT_TCP_PORT   (SiTCP_TCP_PORT[15:0] ),  // in  : TCP port[15:0]
       .EXT_RBCP_PORT  (SiTCP_RBCP_PORT[15:0]),  // in  : RBCP port[15:0]
       .PHY_ADDR       (5'b00001             ),  // in  : PHY-device MIF address[4:0]
       .MY_MAC_ADDR    (), 
       // EEPROM
       //.EEPROM_CS      (                     ),  // out : Chip select
       //.EEPROM_SK      (                     ),  // out : Serial data clock
       //.EEPROM_DI      (                     ),  // out : Serial write data
       //.EEPROM_DO      (                     ),  // in  : Serial read data
       // user data, intialial values are stored in the EEPROM, 0xFFFF_FC3C-3F
       //.USR_REG_X3C    (                     ),  // out : Stored at 0xFFFF_FF3C
       //.USR_REG_X3D    (                     ),  // out : Stored at 0xFFFF_FF3D
       //.USR_REG_X3E    (                     ),  // out : Stored at 0xFFFF_FF3E
       //.USR_REG_X3F    (                     ),  // out : Stored at 0xFFFF_FF3F
       // MII interface
       .GMII_RSTn      (                     ),  // out : PHY reset
       .GMII_1000M     (1'b1                 ),  // in  : GMII mode (0:MII, 1:GMII)
       // TX
       .GMII_TX_CLK    (gtxUsrClk              ),  // in  : Tx clock
       .GMII_TX_EN     (SiTCP_gmii_tx_en           ),  // out : Tx enable
       .GMII_TXD       (SiTCP_gmii_txd[7:0]        ),  // out : Tx data[7:0]
       .GMII_TX_ER     (SiTCP_gmii_tx_er           ),  // out : TX error       
       // RX
       .GMII_RX_CLK    (gtxUsrClk              ),  // in  : Rx clock
       .GMII_RX_DV     (SiTCP_gmii_rx_dv           ),  // in  : Rx data valid
       .GMII_RXD       (SiTCP_gmii_rxd[7:0]        ),  // in  : Rx data[7:0]
       .GMII_RX_ER     (SiTCP_gmii_rx_er           ),  // in  : Rx error   
       .GMII_CRS       (1'b0                 ),  // in  : Carrier sense
       .GMII_COL       (1'b0                 ),  // in  : Collision detected
       // Management IF
       .GMII_MDC       (                     ),  // out : Clock for MDIO
       .GMII_MDIO_IN   (1'b1                 ),  // in  : Data
       .GMII_MDIO_OUT  (                     ),  // out : Data
       .GMII_MDIO_OE   (                     ),  // out : MDIO output enable
    // User I/F
       .SiTCP_RST      (sitcp_rst           ),  // out : Reset for SiTCP and related circuits
       // TCP connection control
       .TCP_OPEN_REQ   (1'b0                 ),  // in  : Reserved input, shoud be 0
       .TCP_OPEN_ACK   (tcp_open_ack_level1  ),  // out : Acknowledge for open (=Socket busy)
       .TCP_ERROR      ( TCP_ERROR                    ),  // out : TCP error, its active period is equal to MSL
       .TCP_CLOSE_REQ  (tcp_close_req        ),  // out : Connection close request
       .TCP_CLOSE_ACK  (tcp_close_req        ),  // in  : Acknowledge for closing
       // FIFO I/F
       .TCP_RX_WC      (1'b1                 ),  // in  : Rx FIFO write count[15:0] (Unused bits should be set 1)
       .TCP_RX_WR      (tcp_rx_wr            ),  // out : Write enable
       .TCP_RX_DATA    (tcp_rx_data[7:0]     ),  // out : Write data[7:0]
       .TCP_TX_FULL    (tcp_tx_full_final    ),  // out : Almost full flag
       .TCP_TX_WR      (tcp_tx_wr_SiTCP_final      ),  // in  : Write enable
       .TCP_TX_DATA    (tcp_tx_data_SiTCP_final[7:0]     ),  // in  : Write data[7:0]
       // RBCP
       .RBCP_ACT       (rbcp_act             ),  // out : RBCP active
       .RBCP_ADDR      (rbcp_addr[31:0]      ),  // out : Address[31:0]
       .RBCP_WD        (rbcp_wd[7:0]         ),  // out : Data[7:0]
       .RBCP_WE        (rbcp_we              ),  // out : Write enable
       .RBCP_RE        (rbcp_re              ),  // out : Read enable
       .RBCP_ACK       (rbcp_ack             ),  // in  : Access acknowledge
       .RBCP_RD        (rbcp_rd[7:0]         ),   // in  : Read data[7:0]
       .next_board_IP_addr (32'h0),
       .next_board_MAC_addr(47'h0)       
    );

endmodule
