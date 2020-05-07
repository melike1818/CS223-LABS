`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2020 08:55:13 AM
// Design Name: 
// Module Name: two_bit_adder
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

module two_bit_adder (input logic a0, a1, b0, b1, cin0, output logic s0, s1, cout1);
    logic cout;
    one_bit_full_adder_structural full_adder(a0, b0, cin0, s0, cout);
    one_bit_full_adder_structural full_adder2(a1, b1, cout, s1, cout1);
endmodule
