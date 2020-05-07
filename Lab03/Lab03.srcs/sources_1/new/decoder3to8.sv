`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2020 09:02:36 AM
// Design Name: 
// Module Name: decoder3to8
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


module decoder3to8 ( input logic in2, in1, in0,
                     output logic y7, y6, y5, y4, y3, y2, y1, y0) ;
    assign y7 = in2 & in1 & in0 ;
    assign y6 = in2 & in1 & ~in0;
    assign y5 = in2 & ~in1 & in0;
    assign y4 = in2 & ~in1 & ~in0;
    assign y3 = ~in2 & in1 & in0;
    assign y2 = ~in2 & in1 & ~in0;
    assign y1 = ~in2 & ~in1 & in0;
    assign y0 = ~in2 & ~in1 & ~in0;
endmodule

