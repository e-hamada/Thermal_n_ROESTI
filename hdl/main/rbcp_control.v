`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:21:33 01/13/2015 
// Design Name: 
// Module Name:    slowcontrol 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module rbcp_control(
		CLK,           // in  : System Clock >129MHz
		RST,          // in  : System reset (Asynchronous)
		RBCP_ACT,      // in : RBCP active
		RBCP_ADDR,     // in : Address[31:0]
		RBCP_WD,       // in : Data[7:0]
		RBCP_WE,       // in : Write enable
		RBCP_RE,       // in : Read enable
		RBCP_ACK,      // out  : Access acknowledge
		RBCP_RD,       // out  : Read data[7:0]
		TRIGGER_MODE,
		CLK66m,
		clk_en,
		auto_reset,
		stop_ch_number1,
		stop_ch_number2,
		Second_Trigger,
		drs_busy,
        seu_enable_count   , 
        seu_disable_count    ,
        seu_monitor_rx          ,
        seu_monitor_send_command,
        seu_count_reset,
        temperature,
        vccint,
        vccaux,
        vccbram,
        vpvn,
        vrefp,
        vrefn,
        monitor_rst,
        ASD_wait_width,
        ASD_check_start_time,
        ch_select_on,
        counter_fifo_sbiterr_out,
        counter_fifo_dbiterr_out,
        data_fifo_reset,
        next_board_IP_addr,
        next_board_MAC_addr,
        TCP_OPEN_REQ2,
        EventBuildNumber,
        SiTCP_RST_on,
        network_init, 
        ack_check,  
        CRC_check_on, 
        counter_CRC32_err,   
        CRC32err_count,
        DecisonTrigger_On,
        TriggerOn,
        test_in_divide,
        TEST_IN_SIGNAL_LENGTH,
        DecisionTriggerCatch,
        DecisionTriggerGate_stop2,
        err_flag_count,
        inject_start,
        inject_strobe_sel,
        inject_addr      
    );

    input				CLK;
	input				RST;
	input           	RBCP_ACT  ;
    input   [31:0]  	RBCP_ADDR ;
    input   [7:0]   	RBCP_WD   ;
    input           	RBCP_WE   ;
    output  [7:0]   	RBCP_RD   ;
    input         		RBCP_RE   ;
    output     	     	RBCP_ACK  ;	
	output	[3:0]		TRIGGER_MODE;
	input				CLK66m;
	input				clk_en;
    output				auto_reset;
    output [31:0]       next_board_IP_addr;
    output [47:0]       next_board_MAC_addr;
    output              TCP_OPEN_REQ2;
    output [7:0]        EventBuildNumber;
    output              SiTCP_RST_on;
    output              network_init;   
    input [1:0]         ack_check;
    output              CRC_check_on;
    input [15:0]        counter_CRC32_err;
    input [15:0]        CRC32err_count;


    
    //zero suppress (ch select)
    output [7:0]        ASD_wait_width;
    output [7:0]        ASD_check_start_time;
    output              ch_select_on;        

	output				drs_busy;
	output [9:0]        stop_ch_number1;
    output [9:0]        stop_ch_number2;
    output [2:0]        test_in_divide; 
    output [7:0]        TEST_IN_SIGNAL_LENGTH;          	
    	
	//Trigger
	input 				Second_Trigger;
	output              DecisonTrigger_On;
	output              TriggerOn;
	input               DecisionTriggerCatch;
	input               DecisionTriggerGate_stop2;
	

    input [15:0]        counter_fifo_sbiterr_out;
    input [15:0]        counter_fifo_dbiterr_out;  
    output              data_fifo_reset;

	
	//Monitor
	input [15:0]        seu_enable_count;   
    input [15:0]        seu_disable_count;    
    output [7:0]        seu_monitor_rx;          
    output              seu_monitor_send_command;
    output              seu_count_reset;
    input [11:0]        temperature;
    input [11:0]        vccint;
    input [11:0]        vccaux;
    input [11:0]        vccbram;
    input [11:0]        vpvn;
    input [11:0]        vrefp;
    input [11:0]        vrefn;
    output              monitor_rst;    

    input [15:0]        err_flag_count;
    output               inject_start;
    output [2:0]         inject_strobe_sel;
    output [39:0]        inject_addr;

//*******************************************************************
//                  register read & write 
//*******************************************************************

	wire sync_start_clk133;
	wire drs_load_clk133;
	wire [11:0]	thre_value;
	wire drs_mode;
	wire RBCP_ACK_write;
	wire RBCP_ACK_read;
	wire [7:0] RBCP_RD_read;
	wire auto_reset_level1;
	wire ch_select_on_level1;
	wire [2:0] ADC2CH_clk_select;
	wire [7:0] adc_latency_level1;
	wire [7:0] ASD_wait_width_level1;
	wire [7:0] ASD_check_start_time_level1;
	wire data_fifo_reset_level1;
	wire [5:0] drs_speed;
	wire [15:0]    BoardNumber;
	
	
    wire [7:0]   ROFSSET0;
    wire [7:0]   ROFSSET1;
	wire         ROFS_start;
	wire         ROFS_start_clk133;
	
	//signal for EROS---------------------------------------
	wire [7:0]   dac_chip0_ch0;
	wire [7:0]   dac_chip0_ch1;
	wire [7:0]   dac_chip1_ch0;
    wire [7:0]   dac_chip1_ch1;
    wire [1:0]        dac_chip0_start_clk133;
    wire [1:0]        dac_chip1_start_clk133;
    //end   signal for EROS---------------------------------
    

	//assign RBCP_ACK = RBCP_ACK_read | RBCP_ACK_write;
	
	rbcp_read rbcp_read(
		.CLK(CLK),
		//.RST(RST),
		.RBCP_ACT(RBCP_ACT),
		.RBCP_RE(RBCP_RE),
		.RBCP_ADDR(RBCP_ADDR),
		.RBCP_RD(RBCP_RD_read),
		.TRIGGER_MODE(TRIGGER_MODE),
		.drs_mode(drs_mode),
		.thre_value(thre_value),
		.adc_latency(adc_latency),
		.RBCP_ACK_read(RBCP_ACK_read),
		.auto_reset(auto_reset_level1),
		.sync_start_clk133(sync_start_clk133),
		.drs_load_clk133(drs_load_clk133),
		.ADC2CH_clk_select(ADC2CH_clk_select),
        .seu_enable_count     (seu_enable_count   ),  
        .seu_disable_count      (seu_disable_count    ),  
        .seu_monitor_rx            (seu_monitor_rx          ),  
        .seu_monitor_send_command  (seu_monitor_send_command),
        .seu_count_reset    (seu_count_reset),
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
        .counter_fifo_sbiterr_out(counter_fifo_sbiterr_out),
        .counter_fifo_dbiterr_out(counter_fifo_dbiterr_out),             
        .ch_select_on(ch_select_on),
        .next_board_IP_addr(next_board_IP_addr),
        .next_board_MAC_addr(next_board_MAC_addr),
        .TCP_OPEN_REQ2(TCP_OPEN_REQ2),
        .BoardNumber(BoardNumber),
        .EventBuildNumber(EventBuildNumber),
        .SiTCP_RST_on(SiTCP_RST_on),
        .network_init(network_init),
        .ack_check(ack_check),
        .CRC_check_on(CRC_check_on),
        .counter_CRC32_err(counter_CRC32_err[15:0]),
        .CRC32err_count(CRC32err_count[15:0]),
        .drs_speed(drs_speed[5:0]),
        .DecisonTrigger_On(DecisonTrigger_On),
        .TriggerOn(TriggerOn),
        .test_in_divide(test_in_divide[2:0]),
        .TEST_IN_SIGNAL_LENGTH(TEST_IN_SIGNAL_LENGTH[7:0]),
        .ROFSSET0 (ROFSSET0 ),
        .ROFSSET1 (ROFSSET1 ),
        .ROFS_start(ROFS_start_clk133),
        .dac_chip0_ch0(dac_chip0_ch0[7:0]),
        .dac_chip0_ch1(dac_chip0_ch1[7:0]),
        .dac_chip1_ch0(dac_chip1_ch0[7:0]),
        .dac_chip1_ch1(dac_chip1_ch1[7:0]),
        .dac_chip0_start_clk133(dac_chip0_start_clk133[1:0]),
        .dac_chip1_start_clk133(dac_chip1_start_clk133[1:0]),
        .err_flag_count(err_flag_count[15:0]),
        .inject_start(inject_start),
        .inject_strobe_sel(inject_strobe_sel),
        .inject_addr(inject_addr)         
    );
    
	
	rbcp_write rbcp_write(
		.CLK(CLK),
		.RST(RST),
		.RBCP_ACT(RBCP_ACT),
		.RBCP_WE(RBCP_WE),
		.RBCP_ADDR(RBCP_ADDR),
		.RBCP_WD(RBCP_WD),
		.TRIGGER_MODE(TRIGGER_MODE),
		.drs_mode(drs_mode),
		.thre_value(thre_value),
		.adc_latency(adc_latency_level1),
		.RBCP_ACK_write(RBCP_ACK_write),
		.auto_reset(auto_reset_level1),
		.sync_start_clk133(sync_start_clk133),
		.drs_load_clk133(drs_load_clk133),
		.ADC2CH_clk_select(ADC2CH_clk_select),
        .seu_monitor_rx            (seu_monitor_rx          ),  
        .seu_monitor_send_command  (seu_monitor_send_command),
        .seu_count_reset    (seu_count_reset),
        .monitor_rst(monitor_rst),
        .ASD_wait_width(ASD_wait_width_level1),
        .ASD_check_start_time(ASD_check_start_time_level1),
        .ch_select_on(ch_select_on_level1),
        .ADC_data_delay1(ADC_data_delay1),
        .ADC_data_delay2(ADC_data_delay2),
        .ADC_data_delay_2CH(ADC_data_delay_2CH),
        .data_fifo_reset(data_fifo_reset_level1),
        .next_board_IP_addr(next_board_IP_addr),
        .next_board_MAC_addr(next_board_MAC_addr),
        .TCP_OPEN_REQ2(TCP_OPEN_REQ2),
        .BoardNumber(BoardNumber),
        .EventBuildNumber(EventBuildNumber),
        .SiTCP_RST_on(SiTCP_RST_on),
        .network_init(network_init),
        .CRC_check_on(CRC_check_on),
        .drs_speed(drs_speed[5:0]),
        .DecisonTrigger_On(DecisonTrigger_On),
        .TriggerOn(TriggerOn),
        .test_in_divide(test_in_divide[2:0]),
        .TEST_IN_SIGNAL_LENGTH(TEST_IN_SIGNAL_LENGTH[7:0])  ,
        .ROFSSET0 (ROFSSET0 ),
        .ROFSSET1 (ROFSSET1 ),
        .ROFS_start(ROFS_start_clk133),
        .dac_chip0_ch0(dac_chip0_ch0[7:0]),
        .dac_chip0_ch1(dac_chip0_ch1[7:0]),
        .dac_chip1_ch0(dac_chip1_ch0[7:0]),
        .dac_chip1_ch1(dac_chip1_ch1[7:0]),
        .dac_chip0_start_clk133(dac_chip0_start_clk133[1:0]),
        .dac_chip1_start_clk133(dac_chip1_start_clk133[1:0]),
        .inject_start(inject_start),
        .inject_strobe_sel(inject_strobe_sel),
        .inject_addr(inject_addr)                 
	);



//*******************************************************************
//                auto reset
//*******************************************************************
    reg reg_auto_reset;
    reg reg_auto_reset_old1;
    reg reg_auto_reset_old2;
    reg reg_auto_reset_old3;
    reg reg_auto_reset_old4;
    reg reg_auto_reset_old5;
    
    always@(posedge CLK)begin
        reg_auto_reset <= auto_reset_level1;
        reg_auto_reset_old1 <= reg_auto_reset;
        reg_auto_reset_old2 <= reg_auto_reset_old1;
        reg_auto_reset_old3 <= reg_auto_reset_old2;
        reg_auto_reset_old4 <= reg_auto_reset_old3;
        reg_auto_reset_old5 <= reg_auto_reset_old4;
    end

    //make counter    
    reg reg_clk_en_old;
    always@(posedge CLK)begin
        reg_clk_en_old <= clk_en;
    end
    wire clk_en_start;
    assign clk_en_start = reg_clk_en_old & ~clk_en;
    
    reg [2:0] clk_en_counter;
    always@(posedge CLK)begin
        if(clk_en_start)begin
            clk_en_counter <= 4'h0;
        end
        else begin
            clk_en_counter <= clk_en_counter + 1'b1;
        end
    end
    
    wire auto_reset_level2;
    assign auto_reset_level2 = reg_auto_reset |
                                reg_auto_reset_old1 |
                                reg_auto_reset_old2 |
                                reg_auto_reset_old3;
            
    reg reg_auto_reset2;                    
    always@(posedge CLK66m)begin
        if(auto_reset_level2 && (clk_en_counter[2:0] == 3'd1))begin
            reg_auto_reset2 <= 1'b1;
        end
        else begin
            reg_auto_reset2 <= 1'b0;
        end
    end
    assign auto_reset = reg_auto_reset2;


//*******************************************************************
//                   prevent timing err
//*******************************************************************
    
    reg reg_ch_select_on;
    always@(posedge CLK66m)begin
        reg_ch_select_on <= ch_select_on_level1;
    end
    assign ch_select_on = reg_ch_select_on;  
    
    reg [7:0] reg_adc_latency;
    always@(posedge CLK66m)begin
        reg_adc_latency[7:0] <= adc_latency_level1[7:0];
    end
    
    reg [7:0] reg_ASD_wait_width;
    always@(posedge CLK66m)begin
        reg_ASD_wait_width[7:0] <= ASD_wait_width_level1[7:0];
    end
    assign ASD_wait_width[7:0] = reg_ASD_wait_width[7:0];  
    
    reg [7:0] reg_ASD_check_start_time;
    always@(posedge CLK66m)begin
        reg_ASD_check_start_time[7:0] <= ASD_check_start_time_level1[7:0];
    end
    assign ASD_check_start_time[7:0] = reg_ASD_check_start_time[7:0];
    
    
    reg reg_data_fifo_reset;
    reg reg_data_fifo_reset_old;
    always@(posedge CLK)begin
        reg_data_fifo_reset <= data_fifo_reset_level1;
        reg_data_fifo_reset_old <= reg_data_fifo_reset;
    end
    
    wire data_fifo_reset_level2;
    reg reg_data_fifo_reset_level2;
    assign data_fifo_reset_level2 = reg_data_fifo_reset | reg_data_fifo_reset_old;
    
    always@(posedge CLK66m)begin
        reg_data_fifo_reset_level2 <= data_fifo_reset_level2;
    end
    assign data_fifo_reset = reg_data_fifo_reset_level2;
    


//*******************************************************************
//						Set
//*******************************************************************
	assign RBCP_RD = 	(RBCP_ACK_read == 1'b1)? RBCP_RD_read : 8'h0;

	assign RBCP_ACK = RBCP_ACK_read | RBCP_ACK_write;
	



endmodule
