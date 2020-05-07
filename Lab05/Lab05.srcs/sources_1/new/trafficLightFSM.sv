`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2020 10:51:52 PM
// Design Name: 
// Module Name: trafficLightFSM
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


module trafficLightFSM(input logic clk, reset, tA, tB, 
    output logic [2:0] lA, [2:0] lB);
    typedef enum logic [2:0] {S0, S1, S2, S3, S4, S5, S6, S7} statetype;
    statetype [2:0] state, nextstate;
    parameter red = 3'b100;
    parameter yellow = 3'b110;
    parameter green = 3'b111;
    
    // State Register
    always_ff @(posedge clk, posedge reset)
    if (reset) 
        state <= S0;
    else 
        state <= nextstate;
    
    
    // Next State Logic
    always_comb
    case (state)
        S0: 
            if (tA) 
                nextstate = S0;
            else 
                nextstate = S1;
        S1: nextstate = S2;
        S2: nextstate = S3;
        S3: nextstate = S4;
        S4: 
            if (tB) 
                nextstate = S4;
            else 
                nextstate = S5;
        S5: nextstate = S6;
        S6: nextstate = S7;
        S7: nextstate = S0;
    endcase
    
    // Output Logic
    always_comb
    case (state)
        S0: 
            begin
            lA= green;
            lB= red;
            end
        S1: 
            begin
            lA= yellow;
            lB= red;
            end
        S2: 
            begin
            lA= red;
            lB= red;
            end
        S3: 
            begin
            lA= red;
            lB= yellow;
            end
        S4: 
            begin
            lA= red;
            lB= green;
            end
        S5: 
            begin
            lA= red;
            lB= yellow;
            end
        S6: 
            begin
            lA= red;
            lB= red;
            end
        S7: 
            begin
            lA= yellow;
            lB= red;
            end
    endcase
endmodule