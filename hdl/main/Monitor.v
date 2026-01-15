`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2015/06/30 20:37:57
// Design Name: 
// Module Name: Monitor
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


module Monitor(
    clk66m,
    clk133m,
    rst,        // <-- this rst is made by clk133m
    seu_enable_count,        
    seu_disable_count,       
    seu_monitor_rx,          
    seu_monitor_send_command,
    seu_count_reset,
    seu_monitor_rd_en,
    seu_monitor_dout,
    seu_monitor_rd_data_count,
    temperature,
    vccint,
    vccaux,
    vccbram,
    vpvn,
    vrefp,
    vrefn,
    status_observation,
    status_correction,
    status_uncorrectable
    
);
    
    input               clk66m;
    input               clk133m;
    input               rst;
    output [15:0]       seu_enable_count;
    output [15:0]       seu_disable_count;  
    input [7:0]         seu_monitor_rx;
    input               seu_monitor_send_command;        
    input               seu_count_reset;
    input               seu_monitor_rd_en;
    output [7:0]        seu_monitor_dout;
    output [12:0]       seu_monitor_rd_data_count;
    output [11:0]       temperature;
    output [11:0]       vccint;
    output [11:0]       vccaux;
    output [11:0]       vccbram;
    output [11:0]       vpvn;
    output [11:0]       vrefp;
    output [11:0]       vrefn;
    output              status_observation;
    output              status_correction;
    output              status_uncorrectable;

    //reset 133m --> 66m
    reg reg_rst1;
    reg reg_rst2;
    always@(posedge clk133m)begin
        reg_rst1 <= rst;
        reg_rst2 <= reg_rst1;
    end
    wire rst_66m;
    wire rst_66m_level1;
    assign rst_66m_level1 = reg_rst1 | reg_rst2;

    //prevent timing err
    reg reg_rst_66m;
    always@(posedge clk66m)begin
        reg_rst_66m <= rst_66m_level1;
    end
    assign rst_66m = reg_rst_66m;
    
//*******************************************************************************
//                                 SEU
//*******************************************************************************    
    //clock
    //seu_monitor_send_command --> 133MHz 
    reg reg_seu_monitor_send_command1;
    reg reg_seu_monitor_send_command2;
    reg reg_seu_monitor_send_command3;
    reg reg_seu_monitor_send_command4;
    always@(posedge clk133m)begin
        reg_seu_monitor_send_command1 <= seu_monitor_send_command;
        reg_seu_monitor_send_command2 <= reg_seu_monitor_send_command1;
        reg_seu_monitor_send_command3 <= reg_seu_monitor_send_command2;
        reg_seu_monitor_send_command4 <= reg_seu_monitor_send_command3;
    end
    wire seu_monitor_send_command3;
    assign seu_monitor_send_command3 =  reg_seu_monitor_send_command1 | 
                                        reg_seu_monitor_send_command2 |
                                        reg_seu_monitor_send_command3 |
                                        reg_seu_monitor_send_command4;
    
    
    //control SEM
    wire monitor_rx;
    monitor_control monitor_control(
        .clk(clk66m),
        .rst(rst_66m),
        .send_monitor_value(seu_monitor_rx),
        .send_monitor_start(seu_monitor_send_command3),
        .monitor_rx(monitor_rx)
    );

    wire status_heartbeat;     
    wire status_initialization; 
    wire status_observation;
    wire status_correction;    
    wire status_classification;
    wire status_injection;     
    wire status_essential;     
    wire status_uncorrectable; 
    wire monitor_tx;
    
    wire        inject_strobe;
    wire [39:0] inject_address;

            wire        vio_1_strobe1;
            wire        vio_1_strobe2;
            wire        vio_1_strobe3;
            wire [39:0] vio_1_address1;
            wire [39:0] vio_1_address2;
            wire [39:0] vio_1_address3;
            wire        inject_start;

            vio_0 vio_0 (
                .clk(clk66m),
                .probe_out0(vio_1_strobe1),
                .probe_out1(vio_1_strobe2),
                .probe_out2(vio_1_strobe3),
                .probe_out3(vio_1_address1[39:0]),
                .probe_out4(vio_1_address2[39:0]),
                .probe_out5(vio_1_address3[39:0]),
                .probe_out6(inject_start)
            );

            wire    inject_start2;
            reg     inject_start_old;

            always@(posedge clk66m)begin
                inject_start_old <= inject_start;
            end

            assign inject_start2 = inject_start & ~inject_start_old;

            reg [18:0]   inject_shift_register;
            always@(posedge clk66m or posedge rst)begin
                if(rst)begin
                    inject_shift_register[18:0] <= 19'h0;
                end
                else begin
                    inject_shift_register[0] <= inject_start2;
                    inject_shift_register[18:1] <= inject_shift_register[17:0];
                end
            end

            assign inject_strobe =  (|inject_shift_register[4:1]) ? 1'b0 :
                                    (|inject_shift_register[6:5]) ? vio_1_strobe1 :
                                    (|inject_shift_register[10:7]) ? 1'b0 :
                                    (|inject_shift_register[12:11]) ? vio_1_strobe2 :
                                    (|inject_shift_register[16:13]) ? 1'b0 :
                                    (|inject_shift_register[18:17]) ? vio_1_strobe3 : 1'b0;

            assign inject_address[39:0] =   (|inject_shift_register[6:1]) ? vio_1_address1[39:0] :
                                            (|inject_shift_register[12:7]) ? vio_1_address2[39:0] :
                                            (|inject_shift_register[18:13]) ? vio_1_address3[39:0] : 40'h0;    
    
    
    //SEM IP
    sem_0_sem_example sem_0_sem_example(
        .clk                    (clk66m                    ),  
        .status_heartbeat       (status_heartbeat           ),
        .status_initialization  (status_initialization      ),
        .status_observation     (status_observation         ),
        .status_correction      (status_correction          ),
        .status_classification  (status_classification      ),
        .status_injection       (status_injection           ),
        .status_essential       (status_essential           ),
        .status_uncorrectable   (status_uncorrectable       ),
        .inject_strobe          (inject_strobe                      ),
        .inject_address         (inject_address                     ),  
        .monitor_rx             (monitor_rx                 ),
        .monitor_tx             (monitor_tx                 ) 
    );    
    
    ila_0 your_instance_name (
        .clk(clk66m), // input wire clk
    
        .probe0(status_heartbeat), // input wire [0:0]  probe0  
        .probe1(status_initialization), // input wire [0:0]  probe1 
        .probe2(status_observation), // input wire [0:0]  probe2 
        .probe3(status_correction), // input wire [0:0]  probe3 
        .probe4(status_classification), // input wire [0:0]  probe4 
        .probe5(status_injection), // input wire [0:0]  probe5 
        .probe6(status_essential), // input wire [0:0]  probe6 
        .probe7(inject_address), // input wire [39:0]  probe7 
        .probe8(status_uncorrectable), // input wire [0:0]  probe8 
        .probe9(inject_strobe) // input wire [0:0]  probe9
    );

    //SEM output 
    wire [7:0]  read_monitor_tx;
    wire        get_data_en;
    monitor_decode monitor_decode(
        .clk(clk66m),
        .rst(rst_66m),
        .monitor_tx(monitor_tx),
        .read_monitor_tx(read_monitor_tx),
        .get_data_en(get_data_en)
    );    
    

    
    assign seu_monitor_dout = 0;
    assign seu_monitor_rd_data_count = 0;
        
    //status counter
    reg reg_status_correction1;
    reg reg_status_correction2;
    reg reg_status_uncorrectable1;
    reg reg_status_uncorrectable2;
        
    always@(posedge clk66m)begin
        reg_status_correction1 <= status_correction;
        reg_status_correction2 <= reg_status_correction1;
        reg_status_uncorrectable1 <= status_uncorrectable;
        reg_status_uncorrectable2 <= reg_status_uncorrectable1;
    end
    wire count_status_correction;
    wire count_status_uncorrectable;
    assign count_status_correction = reg_status_correction1 & ~reg_status_correction2;
    assign count_status_uncorrectable = reg_status_uncorrectable1 & ~reg_status_uncorrectable2;
    
    
    //because seu_count_reset --> 133MHz and clk66m --> 66MHz
    reg reg_seu_count_reset1;
    reg reg_seu_count_reset2;
    always@(posedge clk133m)begin
        reg_seu_count_reset1 <= seu_count_reset;
        reg_seu_count_reset2 <= reg_seu_count_reset1;
    end
    wire seu_count_reset2;
    assign seu_count_reset2 = reg_seu_count_reset1 | reg_seu_count_reset2;
    
    //counter
    reg [15:0]  reg_seu_error_count;
    always@(posedge clk66m)begin
        if(seu_count_reset2)begin
            reg_seu_error_count <= 16'h0;
        end
        else if(count_status_correction)begin
            reg_seu_error_count <= reg_seu_error_count + 1'b1;
        end
    end

        reg [15:0]  reg_seu_disable_count;
    always@(posedge clk66m)begin
        if(seu_count_reset2)begin
            reg_seu_disable_count <= 16'h0;
        end
        else if(count_status_uncorrectable)begin
            reg_seu_disable_count <= reg_seu_disable_count + 1'b1;
        end
    end    
    
    reg [15:0] reg_seu_error_count2;
    reg [15:0] reg_seu_disable_count2;
    always@(posedge clk66m)begin 
        reg_seu_error_count2 <= reg_seu_error_count;
        reg_seu_disable_count2 <= reg_seu_disable_count;
    end
    assign seu_enable_count = reg_seu_error_count2;
    assign seu_disable_count = reg_seu_disable_count2;



//*******************************************************************************
//                     Temperature & Voltage Monitor
//*******************************************************************************    
    wire [6:0]      daddr_in;            // Address bus for the dynamic reconfiguration port
    wire            dclk_in;             // Clock input for the dynamic reconfiguration port
    wire            den_in;              // Enable Signal for the dynamic reconfiguration port
    wire [15:0]     di_in;               // Input data bus for the dynamic reconfiguration port
    wire            dwe_in;              // Write Enable for the dynamic reconfiguration port
    wire            reset_in;            // Reset signal for the System Monitor control logic
    wire            busy_out;            // ADC Busy signal
    wire [4:0]      channel_out;         // Channel Selection Outputs
    wire [15:0]     do_out;              // Output data bus for dynamic reconfiguration port
    wire            drdy_out;            // Data ready signal for the dynamic reconfiguration port
    wire            eoc_out;             // End of Conversion Signal
    wire            eos_out;             // End of Sequence Signal
    wire            ot_out;              // Over-Temperature alarm output
    wire            vccaux_alarm_out;    // VCCAUX-sensor alarm output
    wire            vccint_alarm_out;    //  VCCINT-sensor alarm output
    wire            user_temp_alarm_out; // Temperature-sensor alarm output
    wire            alarm_out;   


    //clock divider
    reg [15:0]  clock_divider_counter;
    always@(posedge clk66m or posedge rst_66m)begin
        if(rst_66m)begin
            clock_divider_counter <= 16'h0;
        end
        else begin
            clock_divider_counter <= clock_divider_counter + 1'b1;
        end
    end
    
    reg [2:0] xadc_addr;
    always@(posedge clk66m or posedge rst_66m)begin
        if(rst_66m)begin
            xadc_addr <= 3'b000;
        end
        else if(clock_divider_counter[15:0] == 16'h0)begin
            xadc_addr <= xadc_addr + 1'b1;
        end
    end
    assign daddr_in =   (xadc_addr == 3'b000) ? 6'h0 :
                        (xadc_addr == 3'b001) ? 6'h1 :
                        (xadc_addr == 3'b010) ? 6'h2 :
                        (xadc_addr == 3'b011) ? 6'h6 :
                        (xadc_addr == 3'b100) ? 6'h3 :
                        (xadc_addr == 3'b101) ? 6'h4 :
                        (xadc_addr == 3'b110) ? 6'h5 :6'h0;
    assign den_in = (clock_divider_counter[15:0] == 16'h00ff) ? 1'b1 : 1'b0;
     
    assign di_in = 16'h0;
    assign dwe_in = 1'b0;
    //assign reset_in = 1'b0;
    

        
    xadc_wiz_0_exdes xadc_wiz_0_exdes
        (
        .daddr_in              (daddr_in           ),            // Address bus for the dynamic reconfiguration port
        .dclk_in               (clk66m            ),             // Clock input for the dynamic reconfiguration port
        .den_in                (den_in             ),              // Enable Signal for the dynamic reconfiguration port
        .di_in                 (di_in              ),               // Input data bus for the dynamic reconfiguration port
        .dwe_in                (dwe_in             ),              // Write Enable for the dynamic reconfiguration port
        .reset_in              (rst_66m           ),            // Reset signal for the System Monitor control logic
        .busy_out              (busy_out           ),            // ADC Busy signal
        .channel_out           (channel_out        ),            // Channel Selection Outputs
        .do_out                (do_out             ),              // Output data bus for dynamic reconfiguration port
        .drdy_out              (drdy_out           ),            // Data ready signal for the dynamic reconfiguration port
        .eoc_out               (eoc_out            ),             // End of Conversion Signal
        .eos_out               (eos_out            ),             // End of Sequence Signal
        .ot_out                (ot_out             ),              // Over-Temperature alarm output
        .vccaux_alarm_out      (vccaux_alarm_out   ),    // VCCAUX-sensor alarm output
        .vccint_alarm_out      (vccint_alarm_out   ),    //  VCCINT-sensor alarm output
        .user_temp_alarm_out   (user_temp_alarm_out), // Temperature-sensor alarm output
        .alarm_out             (alarm_out          ),           
        .vp_in                 (1'b0               ),               // Dedicated Analog Input Pair
        .vn_in                 (1'b0               )
        );

    reg [11:0]     reg_temperature;
    reg [11:0]     reg_vccint;
    reg [11:0]     reg_vccaux;
    reg [11:0]     reg_vccbram;
    reg [11:0]     reg_vpvn;
    reg [11:0]     reg_vrefp;
    reg [11:0]     reg_vrefn;
    
    always@(posedge clk66m or posedge rst_66m)begin
        if(rst_66m)begin
            reg_temperature[11:0] <= 12'h0;
            reg_vccint[11:0] <= 12'h0;
            reg_vccaux[11:0] <= 12'h0;
            reg_vccbram[11:0] <= 12'h0;
        end
        else if(drdy_out && xadc_addr == 3'b000)begin
            reg_temperature[11:0] <= do_out[15:4];
        end
        else if(drdy_out && xadc_addr == 3'b001)begin
            reg_vccint[11:0] <= do_out[15:4];
        end
        else if(drdy_out && xadc_addr == 3'b010)begin
            reg_vccaux[11:0] <= do_out[15:4];
        end
        else if(drdy_out && xadc_addr == 3'b011)begin
            reg_vccbram[11:0] <= do_out[15:4];
        end
        else if(drdy_out && xadc_addr == 3'b100)begin
            reg_vpvn[11:0] <= do_out[15:4];
        end
        else if(drdy_out && xadc_addr == 3'b101)begin
            reg_vrefp[11:0] <= do_out[15:4];
        end
        else if(drdy_out && xadc_addr == 3'b110)begin
            reg_vrefn[11:0] <= do_out[15:4];
        end
    end

    assign temperature = reg_temperature;
    assign vccint = reg_vccint;
    assign vccaux = reg_vccaux;
    assign vccbram = reg_vccbram;
    assign vpvn = reg_vpvn;
    assign vrefp = reg_vrefp;
    assign vrefn = reg_vrefn;

/*
    ila_2 ila_2 (
        .clk(clk66m),
        .probe0(temperature),
        .probe1(vccint),
        .probe2(vccaux),
        .probe3(vccbram),
        .probe4(vpvn),
        .probe5(vrefp),
        .probe6(vrefn),
        .probe7(seu_count_reset2),
        .probe8(count_status_correction),
        .probe9(status_correction),
        .probe10(reg_status_correction1),
        .probe11(reg_status_correction2),
        .probe12(status_uncorrectable),
        .probe13(reg_status_uncorrectable1),
        .probe14(reg_status_uncorrectable2)
        
    );   
*/   
   
    
    
endmodule
