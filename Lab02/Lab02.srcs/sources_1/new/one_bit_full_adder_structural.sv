`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2020 08:52:40 AM
// Design Name: 
// Module Name: one_bit_full_adder_structural
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


//Structural System Verilog module for a 1-bit Full Adder
module one_bit_full_adder_structural (input logic a, b, cin, output logic s, cout);
    logic n1, n2, n3;
    xor xor_1(n1, a, b);
    xor xor_2(s, n1, cin);
    and and_1(n2, a, b);
    and and_2(n3, n1, cin);
    or or_1(cout, n3, n2);
endmodule
