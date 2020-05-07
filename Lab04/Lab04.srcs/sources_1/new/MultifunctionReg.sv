`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2020 05:23:47 AM
// Design Name: 
// Module Name: MultifunctionReg
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


module MultifunctionReg(input logic clk, reset, shr_in, shl_in,
                        input logic [1:0] select,
                        input logic [3:0] in,
                        output logic [3:0] q
    );
    
    logic [3:0] y;
    mux4to1 mux1(q[2], shr_in , in[3], q[3], select[1], select[0],y[3]);
    mux4to1 mux2(q[1], q[3], in[2], q[2],select[1], select[0],y[2]);
    mux4to1 mux3(q[0], q[2], in[1], q[1],select[1], select[0],y[1]);
    mux4to1 mux4(shl_in, q[1], in[0], q[0],select[1], select[0],y[0]);
    dFlipFlop dFF(clk, reset, y ,q);

endmodule
