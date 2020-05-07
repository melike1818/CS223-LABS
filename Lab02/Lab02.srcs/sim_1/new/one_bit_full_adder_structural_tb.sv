`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2020 09:02:49 AM
// Design Name: 
// Module Name: one_bit_full_adder_structural_tb
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

module one_bit_full_adder_structural_tb();
    logic a, b, cin, s, cout;
    one_bit_full_adder_structural fas(a, b, cin, s, cout);
    initial begin
    a = 0; b = 0; cin = 0; #10
    cin = 1; #10
    b = 1; cin = 0; #10
    cin = 1; #10
    a = 1; b = 0; cin = 0; #10
    cin = 1; #10
    b = 1; cin = 0; #10
    cin = 1; #10;
    end
endmodule