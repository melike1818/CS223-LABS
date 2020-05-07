`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2020 09:03:31 AM
// Design Name: 
// Module Name: mux8to1
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


module mux8to1( input logic in0, in1, in2, in3, in4, in5, in6, in7, s2, s1, s0,
                output logic y);
    logic y1, y0, c, e, d;
    mux4to1 mux1(in3, in2, in1, in0, s1, s0, y1);
    mux4to1 mux0(in7, in6, in5, in4, s1, s0, y0);
    not notg(c, s2);
    and and1(d, y1, c);
    and and2(e, y0, s2);
    or org(y, e, d);
endmodule
