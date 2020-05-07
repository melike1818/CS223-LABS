`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2020 05:49:31 AM
// Design Name: 
// Module Name: MultiReg_Sim
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


module MultiReg_Sim();
logic clk, reset, shr_in, shl_in;
logic [1:0] select;
logic [3:0] in;
logic [3:0] q;
MultifunctionReg  mReg (clk, reset, shr_in, shl_in,select,in,q); // instantiate dut
always 
    begin 
        clk = 1; #10; clk = 0; #10;
    end
    
initial begin
    in = 4'b1010;
    shr_in = 1;
    shl_in = 1;
    reset = 1; select[1] = 0; select[0] = 0; #100;
    select[1] = 0; select[0] = 1; #100;
    select[1] = 1; select[0] = 0; #100;
    select[1] = 1; select[0] = 1; reset = 0 ; #100;
    select[1] = 0; select[0] = 0; #100;
    select[1] = 0; select[0] = 1; #100;
    select[1] = 1; select[0] = 0; #100;
    select[1] = 1; select[0] = 1; #100;
end
endmodule

