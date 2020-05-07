`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2020 09:04:38 AM
// Design Name: 
// Module Name: booleanFunc
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
 
module booleanFunc(input logic A, B, C, D,
                   output Y);
    logic c;
    not notgate(c, C);
    mux8to1 mux(C,c,A,C,A,c,c,c, A, B, D, Y);
endmodule
