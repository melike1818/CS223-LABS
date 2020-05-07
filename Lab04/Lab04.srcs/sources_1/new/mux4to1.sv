`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2020 12:55:13 PM
// Design Name: 
// Module Name: mux4to1
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


module mux4to1( input logic in3, in2, in1, in0, s1, s0,
                output logic y);
    assign y = s1 ? (s0 ? in3 : in2) : (s0 ? in1 : in0);
endmodule

