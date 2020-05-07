`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2020 09:09:02 AM
// Design Name: 
// Module Name: decoder3to8_tb
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


module decoder3to8_tb();
logic in2, in1, in0;
logic y7, y6, y5, y4, y3, y2, y1, y0;
decoder3to8 decoder(in2, in1, in0, y7, y6, y5, y4, y3, y2, y1, y0); // instantiate dut
initial begin
    in2 = 0; in1 = 0; in0 = 0; #100;
    in2 = 1; in1 = 0; in0 = 0; #100;
    in2 = 0; in1 = 1; in0 = 0; #100;
    in2 = 1; in1 = 1; in0 = 0; #100;
    in2 = 0; in1 = 0; in0 = 1; #100;
    in2 = 1; in1 = 0; in0 = 1; #100;
    in2 = 0; in1 = 1; in0 = 1; #100;
    in2 = 1; in1 = 1; in0 = 1; #100;
end
endmodule
