`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2020 09:04:48 AM
// Design Name: 
// Module Name: one_bit_full_subtructor_structural_tb
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


module one_bit_full_subtructor_structural_tb();
    logic a, b, bin, d, bout;
    one_bit_full_substructor_structural fss(a, b, bin, d, bout);
    initial begin
    a = 0; b = 0; bin = 0; #10
    bin = 1; #10
    b = 1; bin = 0; #10
    bin = 1; #10
    a = 1; b = 0; bin = 0; #10
    bin = 1; #10
    b = 1; bin = 0; #10
    bin = 1; #10;
    end
endmodule
