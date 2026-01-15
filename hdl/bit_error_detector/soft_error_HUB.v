`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2025 05:18:22 PM
// Design Name: 
// Module Name: soft_error_HUB
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


module soft_error_HUB(
    i_clk,      // System clock
    i_rst,      // System reset
    error_A,  // 
    error_B       // Error signal
    );
    
    parameter ERRSIG_ID_num = 7; 
    parameter ARRAY_SIZE = 40;
    parameter X_ARRAY_interval = 4;
    
    //parameter FIRST_X_MAX = 8;
 
    input   i_clk;      // System clock
    input   i_rst;      // System reset
    output  [ERRSIG_ID_num-1:0] error_A;  // 
    output  [ERRSIG_ID_num-1:0] error_B;       // Error signal
 
 
 //---------------------------------------------------------------------   
 //BANK12 (X0Y0)
 //---------------------------------------------------------------------   

    parameter BANK12_ID = 0;
    parameter X_MAX_BANK12 = 52;

    parameter FIRST_X_ORIGIN_BANK12 = 0;
    parameter FIRST_Y_ORIGIN_BANK12 = 0;

    wire [X_MAX_BANK12/X_ARRAY_interval-1:0] error_A_BANK12;
    wire [X_MAX_BANK12/X_ARRAY_interval-1:0] error_B_BANK12;
    
    reg [X_MAX_BANK12/X_ARRAY_interval-1:0] error_A_BANK12_old;
    reg [X_MAX_BANK12/X_ARRAY_interval-1:0] error_B_BANK12_old;

    genvar i_BANK12;
    generate
        for (i_BANK12 = 0; i_BANK12 < (X_MAX_BANK12/X_ARRAY_interval) ; i_BANK12 = i_BANK12 + 1) begin : X_BANK12_for
                
            soft_error_detector_top_V2 #(
                .ARRAY_SIZE (ARRAY_SIZE),
                .ORIGIN_POSITION_X(i_BANK12*X_ARRAY_interval + FIRST_X_ORIGIN_BANK12),
                .FIRST_Y_ORIGIN(FIRST_Y_ORIGIN_BANK12)
            ) soft_error_detector_top(
                .i_clk      (i_clk              ),
                .i_rst      (i_rst                ),
                .o_err_A  (error_A_BANK12[i_BANK12] ),
                .o_err_B  (error_B_BANK12[i_BANK12] )
            );            
        end
    endgenerate    
    
    always@(posedge i_clk)begin
        error_A_BANK12_old <= error_A_BANK12;
        error_B_BANK12_old <= error_B_BANK12;
    end
    
    assign error_A[BANK12_ID] = |error_A_BANK12_old;
    assign error_B[BANK12_ID] = |error_B_BANK12_old;
    
    
    
 //---------------------------------------------------------------------   
 //BANK13 (X0Y1)
 //---------------------------------------------------------------------   
    parameter BANK13_ID = 1;
    parameter X_MAX_BANK13 = 84;
 
    parameter FIRST_X_ORIGIN_BANK13 = 0;
    parameter FIRST_Y_ORIGIN_BANK13 = 50;
 
    wire [X_MAX_BANK13/X_ARRAY_interval-1:0] error_A_BANK13;
    wire [X_MAX_BANK13/X_ARRAY_interval-1:0] error_B_BANK13;
    
    reg [X_MAX_BANK13/X_ARRAY_interval-1:0] error_A_BANK13_old;
    reg [X_MAX_BANK13/X_ARRAY_interval-1:0] error_B_BANK13_old;
 
    genvar i_BANK13;
    generate
        for (i_BANK13 = 0; i_BANK13 < (X_MAX_BANK13/X_ARRAY_interval) ; i_BANK13 = i_BANK13 + 1) begin : X_BANK13_for
                
            soft_error_detector_top_V2 #(
                .ARRAY_SIZE (ARRAY_SIZE),
                .ORIGIN_POSITION_X(i_BANK13*X_ARRAY_interval + FIRST_X_ORIGIN_BANK13),
                .FIRST_Y_ORIGIN(FIRST_Y_ORIGIN_BANK13)
            ) soft_error_detector_top(
                .i_clk      (i_clk              ),
                .i_rst      (i_rst                ),
                .o_err_A  (error_A_BANK13[i_BANK13] ),
                .o_err_B  (error_B_BANK13[i_BANK13] )
            );            
        end
    endgenerate    
    
    always@(posedge i_clk)begin
        error_A_BANK13_old <= error_A_BANK13;
        error_B_BANK13_old <= error_B_BANK13;
    end
    
    assign error_A[BANK13_ID] = |error_A_BANK13_old;
    assign error_B[BANK13_ID] = |error_B_BANK13_old;    
    
    
 //---------------------------------------------------------------------   
 //BANK32 (X1Y0)
 //---------------------------------------------------------------------   
    parameter BANK32_ID = 2;
    parameter X_MAX_BANK32 = 164;
 
    parameter FIRST_X_ORIGIN_BANK32 = 114;
    parameter FIRST_Y_ORIGIN_BANK32 = 0;
 
    wire [(X_MAX_BANK32-FIRST_X_ORIGIN_BANK32)/X_ARRAY_interval-1:0] error_A_BANK32;
    wire [(X_MAX_BANK32-FIRST_X_ORIGIN_BANK32)/X_ARRAY_interval-1:0] error_B_BANK32;
    
    reg [(X_MAX_BANK32-FIRST_X_ORIGIN_BANK32)/X_ARRAY_interval-1:0] error_A_BANK32_old;
    reg [(X_MAX_BANK32-FIRST_X_ORIGIN_BANK32)/X_ARRAY_interval-1:0] error_B_BANK32_old;

 
    genvar i_BANK32;
    generate
        for (i_BANK32 = 0; i_BANK32 < ((X_MAX_BANK32-FIRST_X_ORIGIN_BANK32)/X_ARRAY_interval) ; i_BANK32 = i_BANK32 + 1) begin : X_BANK32_for
                
            soft_error_detector_top_V2 #(
                .ARRAY_SIZE (ARRAY_SIZE),
                .ORIGIN_POSITION_X(i_BANK32*X_ARRAY_interval + FIRST_X_ORIGIN_BANK32),
                .FIRST_Y_ORIGIN(FIRST_Y_ORIGIN_BANK32)
            ) soft_error_detector_top(
                .i_clk      (i_clk              ),
                .i_rst      (i_rst                ),
                .o_err_A  (error_A_BANK32[i_BANK32] ),
                .o_err_B  (error_B_BANK32[i_BANK32] )
            );            
        end
    endgenerate    
    
    always@(posedge i_clk)begin
        error_A_BANK32_old <= error_A_BANK32;
        error_B_BANK32_old <= error_B_BANK32;
    end
    
    assign error_A[BANK32_ID] = |error_A_BANK32_old;
    assign error_B[BANK32_ID] = |error_B_BANK32_old;        
    
 //---------------------------------------------------------------------   
 //BANK33 (X1Y1)
 //---------------------------------------------------------------------   
    parameter BANK33_ID = 3;
    parameter X_MAX_BANK33 = 164;

    parameter FIRST_X_ORIGIN_BANK33 = 84;
    parameter FIRST_Y_ORIGIN_BANK33 = 50;

    wire [(X_MAX_BANK33-FIRST_X_ORIGIN_BANK33)/X_ARRAY_interval-1:0] error_A_BANK33;
    wire [(X_MAX_BANK33-FIRST_X_ORIGIN_BANK33)/X_ARRAY_interval-1:0] error_B_BANK33;

    reg [(X_MAX_BANK33-FIRST_X_ORIGIN_BANK33)/X_ARRAY_interval-1:0] error_A_BANK33_old;
    reg [(X_MAX_BANK33-FIRST_X_ORIGIN_BANK33)/X_ARRAY_interval-1:0] error_B_BANK33_old;


    genvar i_BANK33;
    generate
        for (i_BANK33 = 0; i_BANK33 < ((X_MAX_BANK33-FIRST_X_ORIGIN_BANK33)/X_ARRAY_interval) ; i_BANK33 = i_BANK33 + 1) begin : X_BANK33_for

            soft_error_detector_top_V2 #(
                .ARRAY_SIZE (ARRAY_SIZE),
                .ORIGIN_POSITION_X(i_BANK33*X_ARRAY_interval + FIRST_X_ORIGIN_BANK33),
                .FIRST_Y_ORIGIN(FIRST_Y_ORIGIN_BANK33)
            ) soft_error_detector_top(
                .i_clk      (i_clk              ),
                .i_rst      (i_rst                ),
                .o_err_A  (error_A_BANK33[i_BANK33] ),
                .o_err_B  (error_B_BANK33[i_BANK33] )
            );
        end
    endgenerate

    always@(posedge i_clk)begin
        error_A_BANK33_old <= error_A_BANK33;
        error_B_BANK33_old <= error_B_BANK33;
    end

    assign error_A[BANK33_ID] = |error_A_BANK33_old;
    assign error_B[BANK33_ID] = |error_B_BANK33_old;

 //---------------------------------------------------------------------   
 //BANK34 (X1Y2)
 //---------------------------------------------------------------------   
    parameter BANK34_ID = 4;
    parameter X_MAX_BANK34 = 164;

    parameter FIRST_X_ORIGIN_BANK34 = 84;
    parameter FIRST_Y_ORIGIN_BANK34 = 100;

    wire [(X_MAX_BANK34-FIRST_X_ORIGIN_BANK34)/X_ARRAY_interval-1:0] error_A_BANK34;
    wire [(X_MAX_BANK34-FIRST_X_ORIGIN_BANK34)/X_ARRAY_interval-1:0] error_B_BANK34;

    reg [(X_MAX_BANK34-FIRST_X_ORIGIN_BANK34)/X_ARRAY_interval-1:0] error_A_BANK34_old;
    reg [(X_MAX_BANK34-FIRST_X_ORIGIN_BANK34)/X_ARRAY_interval-1:0] error_B_BANK34_old;


    genvar i_BANK34;
    generate
        for (i_BANK34 = 0; i_BANK34 < ((X_MAX_BANK34-FIRST_X_ORIGIN_BANK34)/X_ARRAY_interval) ; i_BANK34 = i_BANK34 + 1) begin : X_BANK34_for

            soft_error_detector_top_V2 #(
                .ARRAY_SIZE (ARRAY_SIZE),
                .ORIGIN_POSITION_X(i_BANK34*X_ARRAY_interval + FIRST_X_ORIGIN_BANK34),
                .FIRST_Y_ORIGIN(FIRST_Y_ORIGIN_BANK34)
            ) soft_error_detector_top(
                .i_clk      (i_clk              ),
                .i_rst      (i_rst                ),
                .o_err_A  (error_A_BANK34[i_BANK34] ),
                .o_err_B  (error_B_BANK34[i_BANK34] )
            );
        end
    endgenerate

    always@(posedge i_clk)begin
        error_A_BANK34_old <= error_A_BANK34;
        error_B_BANK34_old <= error_B_BANK34;
    end

    assign error_A[BANK34_ID] = |error_A_BANK34_old;
    assign error_B[BANK34_ID] = |error_B_BANK34_old;


 //---------------------------------------------------------------------   
 //BANK35 (X1Y3)
 //---------------------------------------------------------------------   
    parameter BANK35_ID = 5;
    parameter X_MAX_BANK35 = 164;

    parameter FIRST_X_ORIGIN_BANK35 = 84;
    parameter FIRST_Y_ORIGIN_BANK35 = 150;

    wire [(X_MAX_BANK35-FIRST_X_ORIGIN_BANK35)/X_ARRAY_interval-1:0] error_A_BANK35;
    wire [(X_MAX_BANK35-FIRST_X_ORIGIN_BANK35)/X_ARRAY_interval-1:0] error_B_BANK35;

    reg [(X_MAX_BANK35-FIRST_X_ORIGIN_BANK35)/X_ARRAY_interval-1:0] error_A_BANK35_old;
    reg [(X_MAX_BANK35-FIRST_X_ORIGIN_BANK35)/X_ARRAY_interval-1:0] error_B_BANK35_old;


    genvar i_BANK35;
    generate
        for (i_BANK35 = 0; i_BANK35 < ((X_MAX_BANK35-FIRST_X_ORIGIN_BANK35)/X_ARRAY_interval) ; i_BANK35 = i_BANK35 + 1) begin : X_BANK35_for

            soft_error_detector_top_V2 #(
                .ARRAY_SIZE (ARRAY_SIZE),
                .ORIGIN_POSITION_X(i_BANK35*X_ARRAY_interval + FIRST_X_ORIGIN_BANK35),
                .FIRST_Y_ORIGIN(FIRST_Y_ORIGIN_BANK35)
            ) soft_error_detector_top(
                .i_clk      (i_clk              ),
                .i_rst      (i_rst                ),
                .o_err_A  (error_A_BANK35[i_BANK35] ),
                .o_err_B  (error_B_BANK35[i_BANK35] )
            );
        end
    endgenerate

    always@(posedge i_clk)begin
        error_A_BANK35_old <= error_A_BANK35;
        error_B_BANK35_old <= error_B_BANK35;
    end

    assign error_A[BANK35_ID] = |error_A_BANK35_old;
    assign error_B[BANK35_ID] = |error_B_BANK35_old;

 //---------------------------------------------------------------------   
 //BANK36 (X1Y4)
 //---------------------------------------------------------------------   
    parameter BANK36_ID = 6;
    parameter X_MAX_BANK36 = 164;

    parameter FIRST_X_ORIGIN_BANK36 = 114;
    parameter FIRST_Y_ORIGIN_BANK36 = 200;

    wire [(X_MAX_BANK36-FIRST_X_ORIGIN_BANK36)/X_ARRAY_interval-1:0] error_A_BANK36;
    wire [(X_MAX_BANK36-FIRST_X_ORIGIN_BANK36)/X_ARRAY_interval-1:0] error_B_BANK36;

    reg [(X_MAX_BANK36-FIRST_X_ORIGIN_BANK36)/X_ARRAY_interval-1:0] error_A_BANK36_old;
    reg [(X_MAX_BANK36-FIRST_X_ORIGIN_BANK36)/X_ARRAY_interval-1:0] error_B_BANK36_old;


    genvar i_BANK36;
    generate
        for (i_BANK36 = 0; i_BANK36 < ((X_MAX_BANK36-FIRST_X_ORIGIN_BANK36)/X_ARRAY_interval) ; i_BANK36 = i_BANK36 + 1) begin : X_BANK36_for

            soft_error_detector_top_V2 #(
                .ARRAY_SIZE (ARRAY_SIZE),
                .ORIGIN_POSITION_X(i_BANK36*X_ARRAY_interval + FIRST_X_ORIGIN_BANK36),
                .FIRST_Y_ORIGIN(FIRST_Y_ORIGIN_BANK36)
            ) soft_error_detector_top(
                .i_clk      (i_clk              ),
                .i_rst      (i_rst                ),
                .o_err_A  (error_A_BANK36[i_BANK36] ),
                .o_err_B  (error_B_BANK36[i_BANK36] )
            );
        end
    endgenerate

    always@(posedge i_clk)begin
        error_A_BANK36_old <= error_A_BANK36;
        error_B_BANK36_old <= error_B_BANK36;
    end

    assign error_A[BANK36_ID] = |error_A_BANK36_old;
    assign error_B[BANK36_ID] = |error_B_BANK36_old;

      
      
endmodule
