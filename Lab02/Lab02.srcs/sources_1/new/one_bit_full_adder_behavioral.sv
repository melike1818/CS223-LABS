`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2020 08:51:26 AM
// Design Name: 
// Module Name: one_bit_full_adder_behavioral
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


//Behavioral System Verilog module for a 1-bit Full Adder
module one_bit_full_adder_behavioral (input logic a, b, cin, output logic s, cout);
    assign s = a ^ b ^ cin;
    assign cout = a & b | (a ^ b) & cin;
endmodule