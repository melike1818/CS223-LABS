`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2020 09:12:53 AM
// Design Name: 
// Module Name: booleanFunc_tb
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


module booleanFunc_tb();
logic A, B, C, D;
logic Y;
booleanFunc f(A, B, C, D, Y); // instantiate dut
initial begin
A = 0; B = 0; C = 0; D = 0; #100;
A = 0; B = 0; C = 0; D = 1; #100;
A = 0; B = 0; C = 1; D = 0; #100;
A = 0; B = 0; C = 1; D = 1; #100;
A = 0; B = 1; C = 0; D = 0; #100;
A = 0; B = 1; C = 0; D = 1; #100;
A = 0; B = 1; C = 1; D = 0; #100;
A = 0; B = 1; C = 1; D = 1; #100;
A = 1; B = 0; C = 0; D = 0; #100;
A = 1; B = 0; C = 0; D = 1; #100;
A = 1; B = 0; C = 1; D = 0; #100;
A = 1; B = 0; C = 1; D = 1; #100;
A = 1; B = 1; C = 0; D = 0; #100;
A = 1; B = 1; C = 0; D = 1; #100;
A = 1; B = 1; C = 1; D = 0; #100;
A = 1; B = 1; C = 1; D = 1; #100;
end
endmodule
