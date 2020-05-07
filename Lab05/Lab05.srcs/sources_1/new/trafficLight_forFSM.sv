`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2020 12:47:00 AM
// Design Name: 
// Module Name: trafficLight_forFSM
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


module trafficLight_forFSM(input logic clk, reset, tA, tB, 
    output logic [2:0] lA, [2:0] lB);
    
logic clk2;
clockDivider cd(clk, clk2);
trafficLightFSM fsm(clk2, reset, tA, tB, lA, lB);

endmodule

