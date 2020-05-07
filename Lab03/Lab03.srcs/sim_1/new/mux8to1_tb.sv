`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2020 09:20:16 AM
// Design Name: 
// Module Name: mux8to1_tb
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


module mux8to1_tb();
    logic in0, in1, in2, in3, in4, in5, in6, in7, s0, s1, s2;
    logic y;
    mux8to1 mux(in0, in1, in2, in3, in4, in5, in6, in7, s0, s1, s2, y); // instantiate dut
    initial begin // apply inputs, check results one at a time
        in0 = 1; in1 = 0; in2 = 1; in3 = 0; in4 = 0; in5 = 1; in6 = 1; in7 = 1; s0 = 0; s1 = 0; s2 = 0; #100;
        s0 = 0; s1 = 0; s2 = 1; #100;
        s0 = 0; s1 = 1; s2 = 0; #100;
        s0 = 0; s1 = 1; s2 = 1; #100;
        s0 = 1; s1 = 0; s2 = 0; #100;
        s0 = 1; s1 = 0; s2 = 1; #100;
        s0 = 1; s1 = 1; s2 = 0; #100;
        s0 = 1; s1 = 1; s2 = 1; #100;
    end
endmodule
