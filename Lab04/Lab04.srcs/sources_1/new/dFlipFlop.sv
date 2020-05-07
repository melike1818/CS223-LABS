`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2020 11:54:54 AM
// Design Name: 
// Module Name: dFlipFlop
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


module dFlipFlop( input logic clk, reset,
                  input logic [3:0] D,
                  output logic [3:0] Q
    );

always_ff @(posedge clk)
    begin
        if(reset)
        Q <=4'b0;
        else
        Q<= D;
    end
endmodule
