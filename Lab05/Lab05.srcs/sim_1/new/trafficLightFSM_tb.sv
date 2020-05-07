`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2020 11:06:02 PM
// Design Name: 
// Module Name: trafficLightFSM_tb
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

module trafficLightFSM_tb();
    logic clk, reset, tA, tB;
    logic [2:0] lA, lB;

    trafficLightFSM dut(clk, reset, tA, tB, lA, lB);
    initial
        begin
            reset = 1;            #100
            reset = 0;
            tA = 0; tB = 0;       #80;
            tA = 0; tB = 1;       #80;
            tA = 0; tB = 0;       #100;
            tA = 1; tB = 0;       #80;
            tA = 0; tB = 0;       #100;
            tA = 1; tB = 1;       #80;

            reset = 1;
            tA = 0; tB = 0;       #80;
            tA = 0; tB = 1;       #80;
            tA = 0; tB = 0;       #100;
            tA = 1; tB = 0;       #80;
            tA = 0; tB = 0;       #100;
            tA = 1; tB = 1;       #80;

        end

    always
        begin
            clk <= 1;             #5;
            clk <= 0;             #5;
        end
endmodule