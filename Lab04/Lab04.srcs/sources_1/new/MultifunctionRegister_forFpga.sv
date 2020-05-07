`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2020 03:58:49 PM
// Design Name: 
// Module Name: MultifunctionRegister_forFpga
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


module MultifunctionRegister_forFpga(input logic clk, reset, shr_in, shl_in,
                        input logic [1:0] select,
                        input logic [3:0] in,
                        output logic [3:0] q
    );
    logic slowerClk;
    clockDivider cD(clk, slowerClk);
    MultifunctionReg  mReg (slowerClk, reset, shr_in, shl_in,select,in,q);
endmodule
