`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2020 11:33:55 PM
// Design Name: 
// Module Name: clockDivider
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


module clockDivider(input logic clk,
output logic slowerClk);
logic [27:0] clk_counter;
always @(posedge clk)
    begin
        if(clk_counter >= 199999999)
        clk_counter <= 0;
    else
        clk_counter <= clk_counter + 1;
    end
assign slowerClk =(clk_counter == 199999999)? 1:0;
endmodule


