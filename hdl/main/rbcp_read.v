`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:27:32 01/19/2015 
// Design Name: 
// Module Name:    rbcp_read 
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
module rbcp_read(
		CLK,
		//RST,
		RBCP_ACT,
		RBCP_RE,
		RBCP_ADDR,
		RBCP_RD,
		TRIGGER_MODE,
		drs_mode,
		thre_value,
		adc_latency,
		RBCP_ACK_read,
		auto_reset,
		sync_start_clk133,
		drs_load_clk133,
		ADC2CH_clk_select,
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
        ch_select_on ,
        counter_fifo_sbiterr_out,
        counter_fifo_dbiterr_out,
        next_board_IP_addr,
        next_board_MAC_addr,
        TCP_OPEN_REQ2,
        BoardNumber,
        EventBuildNumber,
        SiTCP_RST_on,
        network_init,
        ack_check,
        CRC_check_on,
        counter_CRC32_err,
        CRC32err_count,
        drs_speed,
        DecisonTrigger_On,
        test_in_divide,
        TEST_IN_SIGNAL_LENGTH,
        TriggerOn,
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
        err_flag_count        
    );

	input					CLK;
	//input					RST;
	input           	    RBCP_ACT  ;
    input   [31:0]  	    RBCP_ADDR ;
    output   [7:0]   	    RBCP_RD   ;
    input           	    RBCP_RE   ;
    output     	     	    RBCP_ACK_read  ;	
	input		[3:0]		TRIGGER_MODE;
	input					drs_mode;
	input 	[11:0]	        thre_value;
	input		[7:0]		adc_latency;
	input					auto_reset;
	input					sync_start_clk133;
	input					drs_load_clk133;
	input   [2:0]           ADC2CH_clk_select;
    input   [15:0]          counter_fifo_sbiterr_out;
    input   [15:0]          counter_fifo_dbiterr_out;
    input [31:0]            next_board_IP_addr;
    input [47:0]            next_board_MAC_addr;
    input                   TCP_OPEN_REQ2;
    input [15:0]            BoardNumber; 
    input [7:0]             EventBuildNumber; 
    input                   SiTCP_RST_on;
    input                   network_init;    
    input [1:0]             ack_check;      
    input                   CRC_check_on;
    input [15:0]            counter_CRC32_err;
    input [15:0]            CRC32err_count;
    input [5:0]             drs_speed;
    input                   DecisonTrigger_On;
    input   [2:0]           test_in_divide;
    input [7:0]             TEST_IN_SIGNAL_LENGTH;      
    input                   TriggerOn;   
                  	
	//Monitor
    input [15:0]            seu_enable_count;   
    input [15:0]            seu_disable_count;    
    input [7:0]             seu_monitor_rx;          
    input                   seu_monitor_send_command;
    input                   seu_count_reset;
    input [11:0]            temperature;
    input [11:0]            vccint;
    input [11:0]            vccaux;
    input [11:0]            vccbram;
    input [11:0]            vpvn;
    input [11:0]            vrefp;
    input [11:0]            vrefn;
    input                   monitor_rst;    

    //zero suppress (ch select)
    input [7:0]        ASD_wait_width;
    input [7:0]        ASD_check_start_time;
    input              ch_select_on;      	

    input [7:0]   ROFSSET0;
    input [7:0]   ROFSSET1;
    input         ROFS_start;
    
    //sig for EROS
    input [7:0]   dac_chip0_ch0;
    input [7:0]   dac_chip0_ch1;
    input [7:0]   dac_chip1_ch0;
    input [7:0]   dac_chip1_ch1;
    input [1:0]        dac_chip0_start_clk133;
    input [1:0]        dac_chip1_start_clk133;        

    input [15:0] err_flag_count;

	reg [7:0] 	reg_read_value;
	reg 			read_on;
	reg  [31:0]	reg_RBCP_ADDR;
	reg reg_RBCP_ACK_read1;
	
	
	
	always@(posedge CLK)begin
		if(RBCP_ACT == 1'b1 && RBCP_RE == 1'b1)begin
			reg_RBCP_ADDR <= RBCP_ADDR;
			read_on <= 1'b1;
		end
		else begin
			reg_RBCP_ADDR <= 32'h0;
			read_on <= 1'b0;
		end
	end

	
	always@(posedge CLK)begin
		if(read_on == 1'b1)begin			
			//read register
			case (reg_RBCP_ADDR)
				32'h11d : //trigger mode & drs mode
					begin
						reg_read_value <= {drs_mode, TRIGGER_MODE};
						reg_RBCP_ACK_read1 <= 1'b1;
					end
				32'h110 : //reset
					begin
						reg_read_value <= auto_reset;
						reg_RBCP_ACK_read1 <= 1'b1;
					end
				32'h111 : //drs_load
					begin
						reg_read_value <= drs_load_clk133;
						reg_RBCP_ACK_read1 <= 1'b1;
					end
				32'h115 : //ASD threshold (high order 4bits)
					begin
						reg_read_value <= thre_value[11:8];
						reg_RBCP_ACK_read1 <= 1'b1;
					end
				32'h116 : //ASD threshold (low order 8bits)
					begin
						reg_read_value <= thre_value[7:0];
						reg_RBCP_ACK_read1 <= 1'b1;
					end
			    32'h117 :
                        begin
                            reg_read_value <= BoardNumber[15:8];
                            reg_RBCP_ACK_read1 <= 1'b1;
                        end
                32'h118 :
                    begin
                        reg_read_value <= BoardNumber[7:0];
                        reg_RBCP_ACK_read1 <= 1'b1;
                    end     					
				32'h119 :
					begin
						reg_read_value <= sync_start_clk133;
						reg_RBCP_ACK_read1 <= 1'b1;
					end
				32'h11A :
					begin
						reg_read_value <= adc_latency;
						reg_RBCP_ACK_read1 <= 1'b1;
					end
			    32'h11B :
			        begin
			            reg_read_value <= ADC2CH_clk_select;
			            reg_RBCP_ACK_read1 <= 1'b1;
			        end
                32'h11C :
                    begin
                        reg_read_value <= {5'h0, test_in_divide[2:0]};
                        reg_RBCP_ACK_read1 <= 1'b1;
                    end    
                32'h11E :
                    begin
                        reg_read_value <= TEST_IN_SIGNAL_LENGTH[7:0];
                        reg_RBCP_ACK_read1 <= 1'b1;
                    end     
			    32'h120 :
			        begin
			            reg_read_value <= seu_enable_count[15:8];
			            reg_RBCP_ACK_read1 <= 1'b1;
			        end
			    32'h121 :
                        begin
                            reg_read_value <= seu_enable_count[7:0];
                            reg_RBCP_ACK_read1 <= 1'b1;
                        end
			    32'h122 :
                        begin
                            reg_read_value <= seu_disable_count[15:8];
                            reg_RBCP_ACK_read1 <= 1'b1;
                        end
                32'h123 :
                        begin
                            reg_read_value <= seu_disable_count[7:0];
                            reg_RBCP_ACK_read1 <= 1'b1;
                        end
			    32'h124 :
                        begin
                            reg_read_value <= seu_count_reset;
                            reg_RBCP_ACK_read1 <= 1'b1;
                        end
			    32'h125 :
                        begin
                            reg_read_value <= seu_monitor_rx[7:0];
                            reg_RBCP_ACK_read1 <= 1'b1;
                        end
                32'h126 :
                        begin
                            reg_read_value <= seu_monitor_send_command;
                            reg_RBCP_ACK_read1 <= 1'b1;
                        end
			    32'h127 :
                        begin
                            reg_read_value <= counter_fifo_sbiterr_out[15:8];
                            reg_RBCP_ACK_read1 <= 1'b1;
                        end
			    32'h128 :
                        begin
                            reg_read_value <= counter_fifo_sbiterr_out[7:0];
                            reg_RBCP_ACK_read1 <= 1'b1;
                        end 
			    32'h129 :
                        begin
                            reg_read_value <= counter_fifo_dbiterr_out[15:8];
                            reg_RBCP_ACK_read1 <= 1'b1;
                        end
                32'h12a :
                        begin
                            reg_read_value <= counter_fifo_dbiterr_out[7:0];
                            reg_RBCP_ACK_read1 <= 1'b1;
                        end        
                32'h12b :
                        begin
                            reg_read_value <= counter_CRC32_err[15:8];
                            reg_RBCP_ACK_read1 <= 1'b1;
                        end    
                32'h12c :
                        begin
                            reg_read_value <= counter_CRC32_err[7:0];
                            reg_RBCP_ACK_read1 <= 1'b1;
                        end    
                32'h12d :
                        begin
                            reg_read_value <= CRC32err_count[15:8];
                            reg_RBCP_ACK_read1 <= 1'b1;
                        end                         
                32'h12e :
                        begin
                            reg_read_value <= CRC32err_count[7:0];
                            reg_RBCP_ACK_read1 <= 1'b1;
                        end                                                                                                                                          
                32'h130 :
                        begin
                            reg_read_value <= monitor_rst;
                            reg_RBCP_ACK_read1 <= 1'b1;
                        end  
                32'h131 :                                               
                        begin                                          
                            reg_read_value <= {4'h0, temperature[11:8]};
                            reg_RBCP_ACK_read1 <= 1'b1;                
                        end                                                                    
                32'h132 :                                               
                        begin                                          
                            reg_read_value <= temperature[7:0];
                            reg_RBCP_ACK_read1 <= 1'b1;                
                        end    
                32'h133 :                                               
                        begin                                          
                            reg_read_value <= {4'h0, vccint[11:8]};
                            reg_RBCP_ACK_read1 <= 1'b1;                
                        end                                                            
                32'h134 :                                                                         
                        begin                                                                    
                            reg_read_value <= vccint[7:0];                          
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end    
                32'h135 :                                               
                        begin                                          
                            reg_read_value <= {4'h0, vccaux[11:8]};
                            reg_RBCP_ACK_read1 <= 1'b1;                
                        end                                                            
                32'h136 :                                                                         
                        begin                                                                    
                             reg_read_value <= vccaux[7:0];                          
                             reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end   
                32'h137 :                                               
                        begin                                          
                            reg_read_value <= {4'h0, vccbram[11:8]};
                            reg_RBCP_ACK_read1 <= 1'b1;                
                        end                                                            
                32'h138 :                                                                         
                        begin                                                                    
                            reg_read_value <= vccbram[7:0];                          
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end
                32'h139 :                                               
                        begin                                          
                            reg_read_value <= {4'h0, vpvn[11:8]};
                            reg_RBCP_ACK_read1 <= 1'b1;                
                        end                                                            
                32'h13A :                                                                         
                        begin                                                                    
                             reg_read_value <= vpvn[7:0];                          
                             reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end
                32'h13B :                                               
                        begin                                          
                            reg_read_value <= {4'h0, vrefp[11:8]};
                            reg_RBCP_ACK_read1 <= 1'b1;                
                        end                                                            
                32'h13C :                                                                         
                        begin                                                                    
                            reg_read_value <= vrefp[7:0];                          
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end
                32'h13D :                                               
                        begin                                          
                            reg_read_value <= {4'h0, vrefn[11:8]};
                            reg_RBCP_ACK_read1 <= 1'b1;                
                        end                                                            
                32'h13E :                                                                         
                        begin                                                                    
                            reg_read_value <= vrefn[7:0];                          
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end 
                32'h140 :                                                                         
                        begin                                                                    
                            reg_read_value <= ch_select_on;                          
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end       
                32'h141 :                                                                         
                        begin                                                                    
                            reg_read_value <= ASD_check_start_time[7:0];                          
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end                               
                32'h142 :                                                                         
                        begin                                                                    
                            reg_read_value <= ASD_wait_width[7:0];                          
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end
                32'h153 :                                                                         
                        begin                                                                    
                            reg_read_value <= EventBuildNumber[7:0];                          
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end                        
                32'h160 :                                                                         
                        begin                                                                    
                            reg_read_value <= next_board_IP_addr[7:0];                          
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end
                32'h161 :                                                                         
                        begin                                                                    
                            reg_read_value <= next_board_IP_addr[15:8];                          
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end     
                32'h162 :                                                                         
                        begin                                                                    
                            reg_read_value <= next_board_IP_addr[23:16];                          
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end     
                32'h163 :                                                                         
                        begin                                                                    
                            reg_read_value <= next_board_IP_addr[31:24];                          
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end 
                32'h164 :                                                                         
                        begin                                                                    
                            reg_read_value <= next_board_MAC_addr[7:0];                          
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end
                32'h165 :                                                                         
                        begin                                                                    
                            reg_read_value <= next_board_MAC_addr[15:8];                          
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end     
                32'h166 :                                                                         
                        begin                                                                    
                            reg_read_value <= next_board_MAC_addr[23:16];                          
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end     
                32'h167 :                                                                         
                        begin                                                                    
                            reg_read_value <= next_board_MAC_addr[31:24];                          
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end            
                32'h168 :                                                                         
                        begin                                                                    
                            reg_read_value <= next_board_MAC_addr[39:32];                          
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end
                32'h169 :                                                                         
                        begin                                                                    
                            reg_read_value <= next_board_MAC_addr[47:40];                          
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end  
                32'h16A :                                                                         
                        begin                                                                    
                            reg_read_value <= {7'h0, TCP_OPEN_REQ2};                          
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end
                32'h16C :                                                                         
                        begin                                                                    
                            reg_read_value <= network_init;                          
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end  
                32'h16D :                                                                         
                        begin                                                                    
                            reg_read_value <= {6'h0, ack_check[1:0]};                          
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end  
                32'h16E :                                                                         
                        begin                                                                    
                            reg_read_value <= {7'h0, CRC_check_on};                          
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end
                32'h170 :                                                                         
                        begin                                                                    
                            reg_read_value <= {2'h0, drs_speed[5:0]};                          
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end
                32'h171 :                                                                         
                        begin                                                                    
                            reg_read_value <= {7'h0, DecisonTrigger_On};                          
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end     
                32'h172 :                                                                         
                        begin                                                                    
                            reg_read_value <= {7'h0, TriggerOn};                          
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end   
                        
                32'h200 :                                                                         
                        begin                                                                    
                            reg_read_value <= ROFSSET0[7:0];                          
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end   
                32'h201 :                                                                         
                        begin                                                                    
                            reg_read_value <= ROFSSET1[7:0];                          
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end   
                32'h202 :                                                                         
                        begin                                                                    
                            reg_read_value <= {6'h0, ROFS_start};  
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end   
                32'h210 :                                                                         
                        begin                                                                    
                            reg_read_value <= dac_chip0_ch0[7:0];  
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end   
                32'h211 :                                                                         
                        begin                                                                    
                            reg_read_value <= dac_chip0_ch1[7:0];  
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end   
                32'h212 :                                                                         
                        begin                                                                    
                            reg_read_value <= dac_chip1_ch0[7:0];  
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end   
                32'h213 :                                                                         
                        begin                                                                    
                            reg_read_value <= dac_chip1_ch1[7:0];  
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end   
                32'h214 :                                                                         
                        begin                                                                    
                            reg_read_value <= {6'h0, dac_chip0_start_clk133[1:0]};  
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end   
                32'h215 :                                                                         
                        begin                                                                    
                            reg_read_value <= {6'h0, dac_chip1_start_clk133[1:0]};  
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end   
                32'h300 :                                                                         
                        begin                                                                    
                            reg_read_value <= err_flag_count[15:8];  
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                         end      
                32'h301 :                                                                         
                        begin                                                                    
                            reg_read_value <= err_flag_count[7:0];  
                            reg_RBCP_ACK_read1 <= 1'b1;                                          
                        end                                                  
				default :
					begin
						reg_read_value <= 8'h0;
						reg_RBCP_ACK_read1 <= 1'b0;
					end
			endcase
		end
		else begin
			reg_read_value <= 8'h0;
			reg_RBCP_ACK_read1 <= 1'b0;
		end
	end


	assign RBCP_ACK_read = reg_RBCP_ACK_read1;
	assign RBCP_RD = reg_read_value;



endmodule
