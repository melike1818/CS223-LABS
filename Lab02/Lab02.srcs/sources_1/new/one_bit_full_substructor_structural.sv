`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2020 08:54:11 AM
// Design Name: 
// Module Name: one_bit_full_substructor_structural
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


module one_bit_full_substructor_structural (input logic a, b, bin, output logic d, bout);
    logic n1, n2, n3;
    xor xor_1(n1, a, b);
    xor xor_2(d, n1, bin);
    and and_1(n2, ~a, b);
    and and_2(n3, ~n1, bin);
    or or_1(bout, n3, n2);
endmodule
