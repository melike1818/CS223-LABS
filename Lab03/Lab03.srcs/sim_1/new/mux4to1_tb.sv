`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2020 09:58:14 AM
// Design Name: 
// Module Name: mux4to1_tb
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

module mux4to1_tb();
    logic in0, in1, in2, in3, s0, s1;
    logic y;
    mux4to1 mux(in0, in1, in2, in3, s0, s1, y); // instantiate dut
    initial begin // apply inputs, check results one at a time
        in0 = 1; in1 = 0; in2 = 1; in3 = 0; 
        s0 = 0; s1 = 0; #100;
        s0 = 0; s1 = 0; #100;
        s0 = 0; s1 = 1; #100;
        s0 = 0; s1 = 1; #100;
        s0 = 1; s1 = 0; #100;
        s0 = 1; s1 = 0; #100;
        s0 = 1; s1 = 1; #100;
        s0 = 1; s1 = 1; #100;
    end
endmodule

