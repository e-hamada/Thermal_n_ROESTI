module TOP #(
        parameter   ARRAY_SIZE    = 40,
        parameter   ERRSIG_ID_num = 7 
      
)(
    SFP_REFCLK_P ,
    SFP_REFCLK_N ,
    SFP_TX_P     ,
    SFP_TX_N     ,
    SFP_RX_P     ,
    SFP_RX_N     ,
    //TRIGGER_IN   ,
    TRIG_BUSY    ,
    TRIG_CLK     ,
    TRIG_OUT     ,
    TRIG_IN      ,
    TRIGGER      ,

    DIP_SW,
    TEST_IN_SIGNAL 
);

    input           SFP_REFCLK_P    ;
    input           SFP_REFCLK_N    ;
    output [0:0]    SFP_TX_P        ;
    output [0:0]    SFP_TX_N        ;
    input [0:0]     SFP_RX_P        ;
    input [0:0]     SFP_RX_N        ;
    input [7:0]     DIP_SW          ;

    
    //Trigger
    output          TRIG_BUSY    ;
    input           TRIG_CLK     ;
    output          TRIG_OUT     ;
    input           TRIG_IN      ;
    input           TRIGGER      ;
       


    //DRS
    output          TEST_IN_SIGNAL;

    assign TEST_IN_SIGNAL = 0;

//*******************************************************************************
//                  Network
//*******************************************************************************
    wire           tcp_tx_full    ;
    wire           tcp_tx_wr      ;
    wire   [7:0]   tcp_tx_data    ;
    wire   [7:0]   tcp_rx_data    ;
    wire           tcp_rx_wr      ;
    wire           sitcp_rst      ;
    wire           tcp_close_req  ;
    wire           tcp_open_ack   ;
    wire   [31:0]  rbcp_addr      ;
    wire   [7:0]   rbcp_wd        ;
    wire           rbcp_we        ;
    wire   [7:0]   rbcp_rd        ;
    wire           rbcp_re        ;
    wire           rbcp_ack       ;
    wire           rbcp_act       ;

    wire           pll_reset      ;
    wire           pllLocked      ;    

	//Network
    wire [31:0]     next_board_IP_addr;
    wire [47:0]     next_board_MAC_addr;
    wire            TCP_OPEN_REQ2;
    wire            event_finish;
	wire [7:0]      EventBuildNumber;
	wire            data_fifo_reset;
	wire            SiTCP_RST_on;
    wire            network_init;
    wire            OwnADC_FIFO_empty;
    wire [31:0]     EventNumber3;
    wire            OwnADC_data_FIFO_empty;
    wire            CRC_check_on;
    wire            seu_count_reset;
    wire [31:0]     SiTCP_IP_ADDR_OUT;
	
	assign tcp_tx_wr = 0;
	assign tcp_tx_data = 0;


    Network Network(
        .RST(data_fifo_reset),
        .SFP_REFCLK_P(SFP_REFCLK_P),
        .SFP_REFCLK_N(SFP_REFCLK_N),
        .SFP_TX_P(SFP_TX_P[0:0]),    
        .SFP_TX_N(SFP_TX_N[0:0]),    
        .SFP_RX_P(SFP_RX_P[0:0]),    
        .SFP_RX_N(SFP_RX_N[0:0]),
        .clk125m(clk125m),
        .clk200m(clk200m),
        .clk133m(clk133m),
        .tcp_tx_full(tcp_tx_full), 
        .tcp_tx_wr_myboard(tcp_tx_wr),    
        .tcp_tx_data_myboard(tcp_tx_data[7:0]),  
        .tcp_rx_data(tcp_rx_data[7:0]),  
        .tcp_rx_wr(tcp_rx_wr),    
        .sitcp_rst(sitcp_rst),    
        .tcp_close_req(tcp_close_req),
        .tcp_open_ack(tcp_open_ack), 
        .rbcp_addr(rbcp_addr[31:0]),    
        .rbcp_wd(rbcp_wd[7:0]),      
        .rbcp_we(rbcp_we),      
        .rbcp_rd(rbcp_rd[7:0]),      
        .rbcp_re(rbcp_re),      
        .rbcp_ack(rbcp_ack),
        .rbcp_act(rbcp_act),      
        .pll_reset(pll_reset),
        .pllLocked(pllLocked),
        .DIP_SW(DIP_SW),
        .next_board_IP_addr(next_board_IP_addr),
        .next_board_MAC_addr(next_board_MAC_addr),
        .TCP_OPEN_REQ2(TCP_OPEN_REQ2),
        .event_finish(event_finish),
        .EventBuildNumber(EventBuildNumber[7:0]),
        .SiTCP_RST_on(SiTCP_RST_on),
        .network_init(network_init),
        .OwnADC_FIFO_empty(OwnADC_FIFO_empty),
        .EventNumber3(EventNumber3[31:0]),
        .OwnADC_data_FIFO_empty(OwnADC_data_FIFO_empty),
        .seu_count_reset(seu_count_reset),
        .SiTCP_IP_ADDR_OUT(SiTCP_IP_ADDR_OUT[31:0])
    );
    

//*******************************************************************************
//                  make clock
//*******************************************************************************

    
    sys_mmcm2 sys_mmcm2(
        .clk_in1  (clk125m   ),
        .clk_out1 (clk66m    ),
        .clk_out2 (clk133m   ),
        .clk_out3 (clk200m   ),
        .reset    (pll_reset ),
        .locked   (pllLocked )
    );
    
    

    

//*******************************************************************************
//                  clk_en
//*******************************************************************************
    reg            clk_en ;
	wire			auto_reset      ;

   always@(posedge clk66m) begin
      if (auto_reset) begin
         clk_en <= 1'b0 ;
      end else begin
         clk_en <= ~clk_en ;
      end
   end





//*******************************************************************************
//                              slowcontrol && control for modules
//*******************************************************************************
    
	wire            Second_Trigger   ;
	wire [3:0]      TRIGGER_MODE     ;
	wire			drs_busy        ;
	wire [9:0]      stop_ch_number1 ;
    wire [9:0]      stop_ch_number2 ;
	wire [15:0]     counter_fifo_sbiterr_out;
	wire [15:0]     counter_fifo_dbiterr_out;
    wire            DecisonTrigger_On;
    wire            TriggerOn;
	wire [2:0]      test_in_divide;
    wire [7:0]      TEST_IN_SIGNAL_LENGTH;  
    wire            DecisionTriggerCatch;
    wire            DecisionTriggerGate_stop2;

	
	//monitor
	wire            monitor_rst;   
    wire [15:0]     seu_enable_count;
    wire [15:0]     seu_disable_count;  
    wire [7:0]      seu_monitor_rx;
    wire            seu_monitor_send_command;
    wire [11:0]     temperature;
    wire [11:0]     vccint;
    wire [11:0]     vccaux;
    wire [11:0]     vccbram;
    wire [11:0]     vpvn;
    wire [11:0]     vrefp;
    wire [11:0]     vrefn;
    wire [1:0]    ADCstart_timing;
    
	//data suppress
    wire [7:0]    ASD_wait_width;
    wire [7:0]    ASD_check_start_time;
    wire          ch_select_on;
	
	reg [15:0]    err_flag_count;
	
	
	rbcp_control rbcp_control(
        .CLK                (clk133m                  ),  // in  : System Clock >129MHz
        .RST                (1'b0                     ),  // in  : System reset (Asynchronous)
        .RBCP_ACT           (rbcp_act                 ),  // in : RBCP active
        .RBCP_ADDR          (rbcp_addr[31:0]          ),  // in : Address[31:0]
        .RBCP_WD            (rbcp_wd[7:0]             ),  // in : Data[7:0]
        .RBCP_WE            (rbcp_we                  ),  // in : Write enable
        .RBCP_RE            (rbcp_re                  ),  // in : Read enable
        .RBCP_ACK           (rbcp_ack                 ),  // out  : Access acknowledge
        .RBCP_RD            (rbcp_rd[7:0]             ),  // out  : Read data[7:0]
        .TRIGGER_MODE       (TRIGGER_MODE             ),
        .CLK66m             (clk66m                   ),
        .clk_en             (clk_en                   ),
        .auto_reset         (auto_reset               ),
        .Second_Trigger     (Second_Trigger           ),
        .drs_busy           (drs_busy                 ),
        .stop_ch_number1    (stop_ch_number1          ),
        .stop_ch_number2    (stop_ch_number2          ),
        .seu_enable_count   (seu_enable_count         ), 
        .seu_disable_count  (seu_disable_count        ),
        .seu_monitor_rx     (seu_monitor_rx           ),
        .seu_monitor_send_command  (seu_monitor_send_command),
        .seu_count_reset (seu_count_reset),
        .temperature(temperature),
        .vccint(vccint),
        .vccaux(vccaux),
        .vccbram(vccbram),
        .vpvn(vpvn),
        .vrefp(vrefp),
        .vrefn(vrefn),
        .monitor_rst(monitor_rst),
        .ASD_wait_width(ASD_wait_width),
        .ASD_check_start_time(ASD_check_start_time),
        .ch_select_on(ch_select_on),
        .counter_fifo_sbiterr_out(counter_fifo_sbiterr_out),
        .counter_fifo_dbiterr_out(counter_fifo_dbiterr_out),
        .data_fifo_reset(data_fifo_reset), 
        .next_board_IP_addr(next_board_IP_addr),
        .next_board_MAC_addr(next_board_MAC_addr),  
        .TCP_OPEN_REQ2(TCP_OPEN_REQ2),     
        .EventBuildNumber(EventBuildNumber[7:0]),
        .SiTCP_RST_on(SiTCP_RST_on),
        .network_init(network_init),
        .ack_check(2'b0),
        .CRC_check_on(CRC_check_on),
        .counter_CRC32_err(0),
        .CRC32err_count(0),
        .DecisonTrigger_On(DecisonTrigger_On),
        .TriggerOn(TriggerOn),
        .test_in_divide(test_in_divide[2:0]),
        .TEST_IN_SIGNAL_LENGTH(TEST_IN_SIGNAL_LENGTH[7:0]),
        .DecisionTriggerCatch(DecisionTriggerCatch),
        .DecisionTriggerGate_stop2(DecisionTriggerGate_stop2),
        .err_flag_count(err_flag_count[15:0])                 
    );
    



	 
	 
//*******************************************************************************
//                                 Monitor
//*******************************************************************************      
    wire status_observation;
    wire status_correction;
    wire status_uncorrectable;

    Monitor Monitor(
        .clk66m(clk66m),
        .clk133m(clk133m),
        .rst(monitor_rst),
        .seu_enable_count(seu_enable_count),        
        .seu_disable_count(seu_disable_count),       
        .seu_monitor_rx(seu_monitor_rx),          
        .seu_monitor_send_command(seu_monitor_send_command),
        .seu_count_reset (seu_count_reset),
        .seu_monitor_rd_en(seu_monitor_rd_en),
        .seu_monitor_dout(seu_monitor_dout),
        .seu_monitor_rd_data_count(seu_monitor_rd_data_count),
        .temperature(temperature),
        .vccint(vccint),
        .vccaux(vccaux),
        .vccbram(vccbram),
        .vpvn(vpvn),
        .vrefp(vrefp),
        .vrefn(vrefn),
        .status_observation(status_observation),
        .status_correction(status_correction),
        .status_uncorrectable(status_uncorrectable)
    );


//------------------------------------------------------------------------------
//    Soft-error detection
//------------------------------------------------------------------------------



    wire  [ARRAY_SIZE-1:0]  det_error;
    wire  [ARRAY_SIZE-1:0]  error;
    //wire  [ARRAY_SIZE-1:0]  flicker;
    
    wire [ERRSIG_ID_num-1:0] error_A;
    wire [ERRSIG_ID_num-1:0] error_B;
    
    
    soft_error_HUB 
        #(.ARRAY_SIZE(ARRAY_SIZE),
            .ERRSIG_ID_num(ERRSIG_ID_num)
        )
    soft_error_HUB(
        .i_clk(clk133m),
        .i_rst(sitcp_rst),
        .error_A(error_A[ERRSIG_ID_num-1:0]),
        .error_B(error_B[ERRSIG_ID_num-1:0])
    );
    
    
    //assign error_A = 0;
    //assign error_B = 0;

    wire output_err_sig;
    wire debug_sig;

    error_sig_tx_V2 
        #(.ARRAY_SIZE(ARRAY_SIZE),
        .ERRSIG_ID_num(ERRSIG_ID_num)
    )    
    error_sig_tx(
        .i_clk(clk133m),      // System clock
        .i_rst(sitcp_rst),      // System reset
        .error_A(error_A),  // 
        .error_B(error_B),       // Error signal
        .output_err_sig(output_err_sig),
        .debug_sig(debug_sig)
    );

    assign TRIG_OUT = output_err_sig;
    
    reg [2:0] error_flag_out_DEBUG_old;
    always@(posedge clk133m)begin
        error_flag_out_DEBUG_old[0] <= debug_sig;
        error_flag_out_DEBUG_old[1] <= error_flag_out_DEBUG_old[0];
        error_flag_out_DEBUG_old[2] <= error_flag_out_DEBUG_old[1];
    end
    
    wire err_flag_out_countup;
    assign err_flag_out_countup = error_flag_out_DEBUG_old[1] & ~error_flag_out_DEBUG_old[2];

    always@(posedge clk133m)begin 
        if(sitcp_rst)begin
            err_flag_count[15:0] <= 16'h0;
        end 
        else if(err_flag_out_countup)begin
            err_flag_count[15:0] <= err_flag_count[15:0] + 1'b1;
        end
    end     
    

//------------------------------------------------------------------
//DEBUG
//------------------------------------------------------------------

    reg [15:0]     seu_enable_count_old;
    reg [15:0]     seu_disable_count_old;  

    always@(posedge clk133m)begin
        seu_enable_count_old[15:0] <= seu_enable_count[15:0];
        seu_disable_count_old[15:0] <= seu_disable_count[15:0];
    end
    
    wire SBU;
    assign SBU = (seu_enable_count_old[15:0] != seu_enable_count[15:0]) ? 1'b1 : 1'b0;
    wire MBU;
    assign MBU = (seu_disable_count_old[15:0] != seu_disable_count[15:0]) ? 1'b1 : 1'b0;

ila_1 ila_1(
    .clk(clk133m),
    .probe0(error_A[ERRSIG_ID_num-1:0]),
    .probe1(error_B[ERRSIG_ID_num-1:0]),
    .probe2(debug_sig),
    .probe3(status_observation),
    .probe4(status_correction),
    .probe5(status_uncorrectable),
    .probe6(SBU),
    .probe7(MBU),
    .probe8(seu_enable_count[15:0])
);



//----------------------------------------------------------
    assign TRIG_BUSY = 1'b0;
 

endmodule