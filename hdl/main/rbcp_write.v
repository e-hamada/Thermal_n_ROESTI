`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:57:15 01/19/2015 
// Design Name: 
// Module Name:    rbcp_write 
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
module rbcp_write(
		CLK,
		RST,
		RBCP_ACT,
		RBCP_WE,
		RBCP_ADDR,
		RBCP_WD,
		TRIGGER_MODE,
		drs_mode,
		thre_value,
		adc_latency,
		RBCP_ACK_write,
		auto_reset,
		sync_start_clk133,
		drs_load_clk133,
		ADC2CH_clk_select,
        seu_monitor_rx,
        seu_monitor_send_command,
        seu_count_reset,
        monitor_rst,
        ASD_wait_width,
        ASD_check_start_time,
        ch_select_on,
        ADC_data_delay1,
        ADC_data_delay2,
        ADC_data_delay_2CH,
        data_fifo_reset,
        next_board_IP_addr,
        next_board_MAC_addr,
        TCP_OPEN_REQ2,
        BoardNumber,
        EventBuildNumber,
        SiTCP_RST_on,
        network_init,
        CRC_check_on,
        drs_speed,
        DecisonTrigger_On,
        TriggerOn,
        test_in_divide,
        TEST_IN_SIGNAL_LENGTH,
        ROFSSET0,
        ROFSSET1,
        ROFS_start,
        
        //sig for EROS
        dac_chip0_ch0,
        dac_chip0_ch1,
        dac_chip1_ch0,
        dac_chip1_ch1,
        dac_chip0_start_clk133,
        dac_chip1_start_clk133,
        inject_start,
        inject_strobe_sel,
        inject_addr        
	);

	input					CLK;
	input					RST;
	input           	RBCP_ACT  ;
   input   [31:0]  	RBCP_ADDR ;
   input   [7:0]   	RBCP_WD   ;
   input           	RBCP_WE   ;
   output     	     	RBCP_ACK_write  ;	
	output	[3:0]		TRIGGER_MODE;
	output				drs_mode;
	output 	[11:0]	thre_value;
	output  [7:0]		adc_latency;
	output				auto_reset;
	output				sync_start_clk133;
	output				drs_load_clk133;
	output  [2:0]       ADC2CH_clk_select;
    output  [7:0]       seu_monitor_rx;          
    output              seu_monitor_send_command;
    output              seu_count_reset;
    output              monitor_rst;
    output [7:0]        ADC_data_delay1;
    output [7:0]        ADC_data_delay2;
    output [1:0]        ADC_data_delay_2CH;
    output              data_fifo_reset;
    output [31:0]       next_board_IP_addr;
    output [47:0]       next_board_MAC_addr;
    output              TCP_OPEN_REQ2;    
    output [15:0]       BoardNumber;  
    output [7:0]        EventBuildNumber;
    output              SiTCP_RST_on;
    output              network_init;
    output              CRC_check_on;
    output [5:0]        drs_speed;
    output              DecisonTrigger_On;
    output              TriggerOn;
    output [2:0]        test_in_divide; 
    output [7:0]        TEST_IN_SIGNAL_LENGTH;     
	
    //zero suppress (ch select)
    output [7:0]        ASD_wait_width;
    output [7:0]        ASD_check_start_time;
    output              ch_select_on;      	
	
    output [7:0]    ROFSSET0;
    output [7:0]    ROFSSET1;
    output          ROFS_start;
    
    //sig for EROS
	output [7:0]   dac_chip0_ch0;
    output [7:0]   dac_chip0_ch1;
    output [7:0]   dac_chip1_ch0;
    output [7:0]   dac_chip1_ch1;
    output [1:0]        dac_chip0_start_clk133;
    output [1:0]        dac_chip1_start_clk133;    
	
    output               inject_start;
    output [2:0]         inject_strobe_sel;
    output [39:0]        inject_addr;	
	
	reg  [3:0] 	reg_trigger_mode;
	reg  			reg_drs_mode;
	reg  [11:0]	reg_thre_value;
	reg  [7:0]	reg_adc_latency;
	reg  [7:0]	reg_RBCP_WD;
	reg  [31:0]	reg_RBCP_ADDR;
	//wire [3:0] 	trigger_mode;
	reg			reg_RBCP_ACK_write1;
	reg			reg_RBCP_ACK_write2;
	reg			write_on;
	reg 			reg_sync_start;
	reg			reg_auto_reset;
	reg			reg_drs_load;
	reg [2:0]   reg_ADC2CH_clk_select;
    reg [7:0]   reg_seu_monitor_rx;          
    reg         reg_seu_monitor_send_command;
    reg         reg_seu_count_reset;
    reg         reg_monitor_rst;
    reg [7:0]   reg_ASD_wait_width;
    reg [7:0]   reg_ASD_check_start_time;
    reg         reg_ch_select_on; 
    reg [7:0]   reg_ADC_data_delay1;
    reg [7:0]   reg_ADC_data_delay2;
    reg [1:0]   reg_ADC_data_delay_2CH;  
    reg         reg_data_fifo_reset;    
    reg [31:0]  reg_next_board_IP_addr;
    reg [47:0]  reg_next_board_MAC_addr;
    reg         reg_TCP_OPEN_REQ2;  
    reg [15:0]  reg_BoardNumber;    
    reg [7:0]   reg_EventBuildNumber;
    reg         reg_SiTCP_RST_on;
    reg         reg_network_init;
    reg         reg_CRC_check_on;
    reg [5:0]   reg_drs_speed;
    reg         reg_DecisonTrigger_On;
    reg         reg_TriggerOn;
    reg [2:0]   reg_test_in_divide;
    reg [7:0]   reg_TEST_IN_SIGNAL_LENGTH;   
    
    reg [7:0]   reg_ROFSSET0;
    reg [7:0]   reg_ROFSSET1;
    reg         reg_ROFS_start;
    
	reg [7:0]   reg_dac_chip0_ch0;
    reg [7:0]   reg_dac_chip0_ch1;
    reg [7:0]   reg_dac_chip1_ch0;
    reg [7:0]   reg_dac_chip1_ch1;
    reg [1:0]   reg_dac_chip0_start_clk133;
    reg [1:0]   reg_dac_chip1_start_clk133;        

    reg               reg_inject_start;
    reg [2:0]         reg_inject_strobe_sel;
    reg [39:0]        reg_inject_addr;	

	always@(posedge CLK or posedge RST)begin
		if(RST == 1'b1)begin
			reg_RBCP_WD <= 8'h0;
			reg_RBCP_ADDR <= 32'h0;
			write_on <= 1'b0;
		end
		else if(RBCP_ACT == 1'b1 && RBCP_WE == 1'b1)begin
			reg_RBCP_WD <= RBCP_WD;
			reg_RBCP_ADDR <= RBCP_ADDR;
			write_on <= 1'b1;
		end
		else begin
			reg_RBCP_WD <= 8'h0;
			reg_RBCP_ADDR <= 32'h0;
			write_on <= 1'b0;
		end
	end

	always@(posedge CLK or posedge RST)begin
		if(RST == 1'b1)begin
			reg_trigger_mode <= 2'b00;
			reg_thre_value <= 12'hDAC;	//ASD threshold default
			reg_RBCP_ACK_write1 <= 1'b0;
			reg_drs_mode <= 1'b0;
			reg_adc_latency  <= 1'b0;
			reg_ADC2CH_clk_select <= 1'b0;
			reg_seu_monitor_rx <= 8'h0;
			reg_ASD_wait_width <= 8'h0;
            reg_ASD_check_start_time <= 8'h0;
            reg_ch_select_on <= 1'b0;
            reg_next_board_IP_addr <= 32'h0;
            reg_next_board_MAC_addr <= 48'h0;
            reg_TCP_OPEN_REQ2 <= 1'b0;
            reg_BoardNumber <= 16'h0;
            reg_EventBuildNumber <= 8'h0;
            reg_network_init <= 1'b0;
            reg_CRC_check_on <= 1'b0;
            reg_drs_speed <= 6'd31;
            reg_DecisonTrigger_On <= 1'b0;
            reg_test_in_divide <= 3'h0;
            reg_TEST_IN_SIGNAL_LENGTH <= 8'h0;  
            reg_TriggerOn <= 1'b1;
            reg_ROFSSET0 <= 8'h0;
            reg_ROFSSET1 <= 8'h0;
            reg_dac_chip0_ch0[7:0] <= 8'h0;
            reg_dac_chip0_ch1[7:0] <= 8'h0;
            reg_dac_chip1_ch0[7:0] <= 8'h0;
            reg_dac_chip1_ch1[7:0] <= 8'h0;
            reg_inject_start <= 1'b0;
            reg_inject_strobe_sel <= 3'h0;
            reg_inject_addr <= 40'h0;
		end
		else if(write_on == 1'b1)begin
			
			//modify register
			case (reg_RBCP_ADDR)
				32'h10 : 
					begin
						reg_inject_start <= reg_RBCP_WD[0];
						reg_RBCP_ACK_write1 <= 1'b1;
					end			
				32'h11 : 
					begin
						reg_inject_strobe_sel[2:0] <= reg_RBCP_WD[2:0];
						reg_RBCP_ACK_write1 <= 1'b1;
					end				
				32'h12 : 
					begin
						reg_inject_addr[39:32] <= reg_RBCP_WD[7:0];
						reg_RBCP_ACK_write1 <= 1'b1;
					end		
				32'h13 : 
					begin
						reg_inject_addr[31:24] <= reg_RBCP_WD[7:0];
						reg_RBCP_ACK_write1 <= 1'b1;
					end		
				32'h14 : 
					begin
						reg_inject_addr[23:16] <= reg_RBCP_WD[7:0];
						reg_RBCP_ACK_write1 <= 1'b1;
					end		
				32'h15 : 
					begin
						reg_inject_addr[15:8] <= reg_RBCP_WD[7:0];
						reg_RBCP_ACK_write1 <= 1'b1;
					end		
				32'h16 : 
					begin
						reg_inject_addr[7:0] <= reg_RBCP_WD[7:0];
						reg_RBCP_ACK_write1 <= 1'b1;
					end																										
				32'h11d : //trigger mode & DRS4 mode
					begin
						//trigger mode
						if(   reg_RBCP_WD[3:0] == 4'b0000 ||
						      reg_RBCP_WD[3:0] == 4'b0100 || 
						      reg_RBCP_WD[3:0] == 4'b1000 || 
						      reg_RBCP_WD[3:0] == 4'b0010 ||
                              reg_RBCP_WD[3:0] == 4'b0001						      
						      )begin
							reg_trigger_mode	<= reg_RBCP_WD;
						end
						else begin
							reg_trigger_mode <= reg_trigger_mode;
						end
						
						//DRS4 mode
						if(reg_RBCP_WD[4] == 1'b1)begin
							reg_drs_mode	<= 1'b1;
						end
						else begin
							reg_drs_mode <= 1'b0;
						end
						
						reg_RBCP_ACK_write1 <= 1'b1;
					end
				32'h115 : //ASD threshold (high order 4bits)
					begin
						reg_thre_value[11:8] <= reg_RBCP_WD[3:0];
						reg_RBCP_ACK_write1 <= 1'b1;
					end
				32'h116 : //ASD threshold (low order 8bits)
					begin
						reg_thre_value[7:0] <= reg_RBCP_WD[7:0];
						reg_RBCP_ACK_write1 <= 1'b1;
					end
				32'h117 : //board number(high order 8bits)
                        begin
                            reg_BoardNumber[15:8] <= reg_RBCP_WD[7:0];
                            reg_RBCP_ACK_write1 <= 1'b1;
                        end
                32'h118 : //board number(low order 8bits)
                    begin
                        reg_BoardNumber[7:0] <= reg_RBCP_WD[7:0];
                        reg_RBCP_ACK_write1 <= 1'b1;
                    end                					
				32'h11A : //ADC data read latency
					begin
						reg_adc_latency [7:0] <= reg_RBCP_WD[7:0];
						reg_RBCP_ACK_write1 <= 1'b1;
					end
				32'h11B : 
				    begin
				        reg_ADC2CH_clk_select <= reg_RBCP_WD[2:0];
                        reg_RBCP_ACK_write1 <= 1'b1;
				    end
                32'h11C : 
                    begin
                        reg_test_in_divide[2:0] <= reg_RBCP_WD[2:0];
                        reg_RBCP_ACK_write1 <= 1'b1;
                    end
                32'h11E : 
                    begin
                        reg_TEST_IN_SIGNAL_LENGTH[7:0] <= reg_RBCP_WD[7:0];
                        reg_RBCP_ACK_write1 <= 1'b1;
                    end  
				32'h125 : 
                    begin
                        reg_seu_monitor_rx <= reg_RBCP_WD[7:0];
                        reg_RBCP_ACK_write1 <= 1'b1;
                    end
				32'h140 : 
                    begin
                        reg_ch_select_on <= reg_RBCP_WD[7:0];
                        reg_RBCP_ACK_write1 <= 1'b1;
                    end
				32'h141 : 
                    begin
                        reg_ASD_check_start_time <= reg_RBCP_WD[7:0];
                        reg_RBCP_ACK_write1 <= 1'b1;
                    end
				32'h142 : 
                    begin
                        reg_ASD_wait_width <= reg_RBCP_WD[7:0];
                        reg_RBCP_ACK_write1 <= 1'b1;
                    end
                32'h153 : //EventBuildnumber
                    begin
                        reg_EventBuildNumber[7:0] <= reg_RBCP_WD[7:0];
                        reg_RBCP_ACK_write1 <= 1'b1;
                    end                                
				32'h160 : 
                    begin
                        reg_next_board_IP_addr[7:0] <= reg_RBCP_WD[7:0];
                        reg_RBCP_ACK_write1 <= 1'b1;
                    end
				32'h161 : 
                    begin
                        reg_next_board_IP_addr[15:8] <= reg_RBCP_WD[7:0];
                        reg_RBCP_ACK_write1 <= 1'b1;
                    end 
				32'h162 : 
                    begin
                        reg_next_board_IP_addr[23:16] <= reg_RBCP_WD[7:0];
                        reg_RBCP_ACK_write1 <= 1'b1;
                    end 
				32'h163 : 
                    begin
                        reg_next_board_IP_addr[31:24] <= reg_RBCP_WD[7:0];
                        reg_RBCP_ACK_write1 <= 1'b1;
                    end 
				32'h164 : 
                    begin
                        reg_next_board_MAC_addr[7:0] <= reg_RBCP_WD[7:0];
                        reg_RBCP_ACK_write1 <= 1'b1;
                    end
                32'h165 : 
                    begin
                        reg_next_board_MAC_addr[15:8] <= reg_RBCP_WD[7:0];
                        reg_RBCP_ACK_write1 <= 1'b1;
                    end 
                32'h166 : 
                    begin
                        reg_next_board_MAC_addr[23:16] <= reg_RBCP_WD[7:0];
                        reg_RBCP_ACK_write1 <= 1'b1;
                    end 
                32'h167 : 
                    begin
                        reg_next_board_MAC_addr[31:24] <= reg_RBCP_WD[7:0];
                        reg_RBCP_ACK_write1 <= 1'b1;
                    end
                32'h168 : 
                    begin
                        reg_next_board_MAC_addr[39:32] <= reg_RBCP_WD[7:0];
                        reg_RBCP_ACK_write1 <= 1'b1;
                    end 
                32'h169 : 
                    begin
                        reg_next_board_MAC_addr[47:40] <= reg_RBCP_WD[7:0];
                        reg_RBCP_ACK_write1 <= 1'b1;
                    end                     
                    
                32'h16A : 
                    begin
                        reg_TCP_OPEN_REQ2 <= reg_RBCP_WD[0];
                        reg_RBCP_ACK_write1 <= 1'b1;
                    end
                32'h16C : 
                    begin
                        reg_network_init <= reg_RBCP_WD[0];
                        reg_RBCP_ACK_write1 <= 1'b1;
                    end    
                32'h16E : 
                    begin
                        reg_CRC_check_on <= reg_RBCP_WD[0];
                        reg_RBCP_ACK_write1 <= 1'b1;
                    end  
                32'h170 : 
                    begin
                        reg_drs_speed[5:0] <= reg_RBCP_WD[5:0];                    
                        reg_RBCP_ACK_write1 <= 1'b1;
                    end
                32'h171 : 
                    begin
                        reg_DecisonTrigger_On <= reg_RBCP_WD[0];                    
                        reg_RBCP_ACK_write1 <= 1'b1;
                    end
                32'h172 : 
                    begin
                        reg_TriggerOn <= reg_RBCP_WD[0];                    
                        reg_RBCP_ACK_write1 <= 1'b1;
                    end  
                32'h200 : 
                    begin
                        reg_ROFSSET0[7:0] <= reg_RBCP_WD[7:0];                    
                        reg_RBCP_ACK_write1 <= 1'b1;
                    end  
                32'h201 : 
                    begin
                        reg_ROFSSET1[7:0] <= reg_RBCP_WD[7:0];                    
                        reg_RBCP_ACK_write1 <= 1'b1;
                    end  
                32'h210 : 
                    begin
                        reg_dac_chip0_ch0[7:0] <= reg_RBCP_WD[7:0];                    
                        reg_RBCP_ACK_write1 <= 1'b1;
                    end  
                32'h211 : 
                    begin
                        reg_dac_chip0_ch1[7:0] <= reg_RBCP_WD[7:0];                    
                        reg_RBCP_ACK_write1 <= 1'b1;
                    end  
                32'h212 : 
                    begin
                        reg_dac_chip1_ch0[7:0] <= reg_RBCP_WD[7:0];                    
                        reg_RBCP_ACK_write1 <= 1'b1;
                    end  
                32'h213 : 
                    begin
                        reg_dac_chip1_ch1[7:0] <= reg_RBCP_WD[7:0];                    
                        reg_RBCP_ACK_write1 <= 1'b1;
                    end  

				default :
					begin
						reg_RBCP_ACK_write1 <= 1'b0;
					end
			endcase		
		end
		else begin
			reg_RBCP_ACK_write1 <= 1'b0;
		end
	end


	//sync start + auto_reset + drs load
	always@(posedge CLK or posedge RST)begin
		if(RST == 1'b1)begin
			reg_sync_start <= 1'b0;
			reg_drs_load <= 1'b0;
			reg_RBCP_ACK_write2 <= 1'b0;
			reg_auto_reset <= 1'b0;
			reg_seu_monitor_send_command <= 1'b0;
			reg_seu_count_reset <= 1'b0;
			reg_monitor_rst <= 1'b0;
			reg_data_fifo_reset <= 1'b0;   
			reg_SiTCP_RST_on <= 1'b0;
            reg_ROFS_start <= 1'b0;
            reg_dac_chip0_start_clk133[1:0] <= 2'b00;
            reg_dac_chip1_start_clk133[1:0] <= 2'b00;
		end
		else if(write_on == 1'b1)begin
			
			//modify register
			case (reg_RBCP_ADDR)
				32'h119 :
					begin
						if(reg_RBCP_WD == 1'b1)begin
							reg_sync_start <= 1'b1;
						end
						else begin
							reg_sync_start <= 1'b0;
						end
						
						reg_RBCP_ACK_write2 <= 1'b1;
					end
				32'h110 :
					begin
						if(reg_RBCP_WD == 8'hf0)begin
							reg_auto_reset <= 1'b1;
						end
						else begin
							reg_auto_reset <= 1'b0;
						end
						
						reg_RBCP_ACK_write2 <= 1'b1;
					end
				32'h111 :
					begin
						if(reg_RBCP_WD == 8'hf0)begin
							reg_drs_load <= 1'b1;
						end
						else begin
							reg_drs_load <= 1'b0;
						end
						
						reg_RBCP_ACK_write2 <= 1'b1;
					end
				32'h112 :
                    begin
                        if(reg_RBCP_WD == 8'h01)begin
                            reg_data_fifo_reset <= 1'b1;
                        end
                        else begin
                            reg_data_fifo_reset <= 1'b0;
                        end
                            
                        reg_RBCP_ACK_write2 <= 1'b1;
                    end				
				32'h124 :
                       begin
                           if(reg_RBCP_WD == 8'h1)begin
                               reg_seu_count_reset <= 1'b1;
                           end
                           else begin
                               reg_seu_count_reset <= 1'b0;
                           end
                           
                           reg_RBCP_ACK_write2 <= 1'b1;
                       end                               
				32'h126 :
                        begin
                            if(reg_RBCP_WD == 8'h1)begin
                                reg_seu_monitor_send_command <= 1'b1;
                            end
                            else begin
                                reg_seu_monitor_send_command <= 1'b0;
                            end
            
                            reg_RBCP_ACK_write2 <= 1'b1;
                        end
				32'h130 :
                        begin
                            if(reg_RBCP_WD == 8'h1)begin
                                reg_monitor_rst <= 1'b1;
                            end
                            else begin
                                reg_monitor_rst <= 1'b0;
                            end
                          
                            reg_RBCP_ACK_write2 <= 1'b1;
                        end        
				32'h150 :
                       begin
                           if(reg_RBCP_WD != 8'h0)begin
                               reg_ADC_data_delay1[7:0] <= reg_RBCP_WD[7:0];
                           end
                           else begin
                               reg_ADC_data_delay1[7:0] <= 8'b0;
                           end
                         
                           reg_RBCP_ACK_write2 <= 1'b1;
                       end     
				32'h151 :
                       begin
                           if(reg_RBCP_WD != 8'h0)begin
                               reg_ADC_data_delay2[7:0] <= reg_RBCP_WD[7:0];
                           end
                           else begin
                               reg_ADC_data_delay2[7:0] <= 8'b0;
                           end
                         
                           reg_RBCP_ACK_write2 <= 1'b1;
                       end    
				32'h152 :
                       begin
                           if(reg_RBCP_WD != 8'h0)begin
                               reg_ADC_data_delay_2CH[1:0] <= reg_RBCP_WD[1:0];
                           end
                           else begin
                               reg_ADC_data_delay_2CH[1:0] <= 2'b0;
                           end
                         
                           reg_RBCP_ACK_write2 <= 1'b1;
                       end       
				32'h16B :
                       begin
                           if(reg_RBCP_WD != 8'h0)begin
                               reg_SiTCP_RST_on <= reg_RBCP_WD[1:0];
                           end
                           else begin
                               reg_SiTCP_RST_on <= 2'b0;
                           end
                         
                           reg_RBCP_ACK_write2 <= 1'b1;
                       end   
                32'h202 :
                        begin
                            if(reg_RBCP_WD == 1'b1)begin
                                reg_ROFS_start <= 1'b1;
                            end
                            else begin
                                reg_ROFS_start <= 1'b0;
                            end

                            reg_RBCP_ACK_write2 <= 1'b1;
                        end
                32'h214 :
                        begin
                            if(reg_RBCP_WD == 8'h1)begin
                                reg_dac_chip0_start_clk133[1:0] <= 2'b01;
                            end
                            else if(reg_RBCP_WD == 8'h2)begin
                                reg_dac_chip0_start_clk133[1:0] <= 2'b10;
                            end
                            else begin
                                reg_dac_chip0_start_clk133[1:0] <= 2'b00;
                            end

                            reg_RBCP_ACK_write2 <= 1'b1;
                        end
                32'h215 :
                        begin
                            if(reg_RBCP_WD == 8'h1)begin
                                reg_dac_chip1_start_clk133[1:0] <= 2'b01;
                            end
                            else if(reg_RBCP_WD == 8'h2)begin
                                reg_dac_chip1_start_clk133[1:0] <= 2'b10;
                            end
                            else begin
                                reg_dac_chip1_start_clk133[1:0] <= 2'b00;
                            end

                            reg_RBCP_ACK_write2 <= 1'b1;
                        end
				default :
					begin
						reg_sync_start <= 1'b0;
						reg_drs_load <= 0;
						reg_RBCP_ACK_write2 <= 1'b0;
						reg_auto_reset <= 1'b0;
						reg_seu_monitor_send_command <= 1'b0;
						reg_seu_count_reset <= 1'b0;
						reg_monitor_rst <= 1'b0;
						reg_ADC_data_delay1 <= 8'h0;
						reg_ADC_data_delay2 <= 8'h0;
						reg_ADC_data_delay_2CH <= 2'h0;
						reg_data_fifo_reset <= 1'b0;   
						reg_SiTCP_RST_on <= 1'b0;
                        reg_ROFS_start <= 1'b0;
                        reg_dac_chip0_start_clk133[1:0] <= 2'b00;
                        reg_dac_chip1_start_clk133[1:0] <= 2'b00;
					end
			endcase
			
		end
		else begin
			reg_sync_start <= 1'b0;
			reg_drs_load <= 1'b0;
			reg_RBCP_ACK_write2 <= 1'b0;
			reg_auto_reset <= 1'b0;
			reg_seu_monitor_send_command <= 1'b0;
			reg_seu_count_reset <= 1'b0;
			reg_monitor_rst <= 1'b0;
			reg_ADC_data_delay1 <= 8'h0;
            reg_ADC_data_delay2 <= 8'h0;
            reg_ADC_data_delay_2CH <= 2'h0;		
            reg_data_fifo_reset <= 1'b0; 
            reg_SiTCP_RST_on <= 1'b0;
            reg_ROFS_start <= 1'b0;	
            reg_dac_chip0_start_clk133[1:0] <= 2'b00;
            reg_dac_chip1_start_clk133[1:0] <= 2'b00;            
		end
	end

	//for difference of freq
	reg old_reg_auto_reset;
	always@(posedge CLK)begin
		old_reg_auto_reset <= reg_auto_reset;
	end
	assign auto_reset = reg_auto_reset;
	
	assign TRIGGER_MODE = reg_trigger_mode;
	assign drs_mode = reg_drs_mode;
	assign thre_value = reg_thre_value;	
	assign adc_latency = reg_adc_latency;
	assign RBCP_ACK_write = reg_RBCP_ACK_write1 | reg_RBCP_ACK_write2;
	assign sync_start_clk133 = reg_sync_start;
	assign drs_load_clk133 = reg_drs_load;
	assign ADC2CH_clk_select = reg_ADC2CH_clk_select;
	assign seu_monitor_rx = reg_seu_monitor_rx;          
    assign seu_monitor_send_command = reg_seu_monitor_send_command;
    assign seu_count_reset = reg_seu_count_reset;
    assign monitor_rst = reg_monitor_rst;
    assign ASD_wait_width = reg_ASD_wait_width;
    assign ASD_check_start_time = reg_ASD_check_start_time;
    assign ch_select_on = reg_ch_select_on;
	assign ADC_data_delay1 = reg_ADC_data_delay1;
    assign ADC_data_delay2 = reg_ADC_data_delay2;
    assign ADC_data_delay_2CH = reg_ADC_data_delay_2CH;
    assign data_fifo_reset = reg_data_fifo_reset;  
    assign next_board_IP_addr = reg_next_board_IP_addr;        
    assign next_board_MAC_addr = reg_next_board_MAC_addr;
    assign TCP_OPEN_REQ2 = reg_TCP_OPEN_REQ2;
    assign BoardNumber[15:0] = reg_BoardNumber[15:0];
    assign EventBuildNumber[7:0] = reg_EventBuildNumber[7:0];
    assign network_init = reg_network_init;
    assign CRC_check_on = reg_CRC_check_on;
    assign SiTCP_RST_on = reg_SiTCP_RST_on;
    assign drs_speed[5:0] = reg_drs_speed[5:0];
    assign DecisonTrigger_On = reg_DecisonTrigger_On;
    assign TriggerOn = reg_TriggerOn;
    assign test_in_divide[2:0] = reg_test_in_divide[2:0];
    assign TEST_IN_SIGNAL_LENGTH[7:0] = reg_TEST_IN_SIGNAL_LENGTH[7:0];    

    assign ROFSSET0 = reg_ROFSSET0;
    assign ROFSSET1 = reg_ROFSSET1;
    assign ROFS_start = reg_ROFS_start;

    assign dac_chip0_ch0[7:0] = reg_dac_chip0_ch0[7:0];
    assign dac_chip0_ch1[7:0] = reg_dac_chip0_ch1[7:0];
    assign dac_chip1_ch0[7:0] = reg_dac_chip1_ch0[7:0];
    assign dac_chip1_ch1[7:0] = reg_dac_chip1_ch1[7:0];
    assign dac_chip0_start_clk133[1:0] = reg_dac_chip0_start_clk133[1:0];
    assign dac_chip1_start_clk133[1:0] = reg_dac_chip1_start_clk133[1:0];

    assign inject_start = reg_inject_start;
    assign inject_strobe_sel = reg_inject_strobe_sel;
    assign inject_addr = reg_inject_addr;



endmodule
