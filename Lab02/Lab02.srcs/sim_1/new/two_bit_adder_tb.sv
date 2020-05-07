`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2020 09:12:40 AM
// Design Name: 
// Module Name: two_bit_adder_tb
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

module two_bit_adder_tb();
    logic a0, a1, b0, b1, cin0;
    logic s0, s1, cout1;
    two_bit_adder tba(a0, a1, b0, b1, cin0, s0, s1, cout1);
    initial begin
    a0= 0; a1=0; b0=0; b1=0; cin0=0; #10; //00000 failed
    a0= 0; a1=0; b0=0; b1=0; cin0=1; #10; //00001 failed
    a0= 0; a1=0; b0=0; b1=1; cin0=0; #10; //00010 failed
    a0= 0; a1=0; b0=0; b1=1; cin0=1; #10; //00011 failed
    a0= 0; a1=0; b0=1; b1=0; cin0=0; #10; //00100 failed
    a0= 0; a1=0; b0=1; b1=0; cin0=1; #10; //00101 failed
    a0= 0; a1=0; b0=1; b1=1; cin0=0; #10; //00110 failed
    a0= 0; a1=0; b0=1; b1=1; cin0=1; #10; //00111 failed
    a0= 0; a1=1; b0=0; b1=0; cin0=0; #10; //01000 failed
    a0= 0; a1=1; b0=0; b1=0; cin0=1; #10; //01001 failed
    a0= 0; a1=1; b0=0; b1=1; cin0=0; #10; //01010 failed
    a0= 0; a1=1; b0=0; b1=1; cin0=1; #10; //01011 failed
    a0= 0; a1=1; b0=1; b1=0; cin0=0; #10; //01100 failed
    a0= 0; a1=1; b0=1; b1=0; cin0=1; #10; //01101 failed
    a0= 0; a1=1; b0=1; b1=1; cin0=0; #10; //01110 failed
    a0= 0; a1=1; b0=1; b1=1; cin0=1; #10; //01111 failed
    a0= 1; a1=0; b0=0; b1=0; cin0=0; #10; //10000 failed
    a0= 1; a1=0; b0=0; b1=0; cin0=1; #10; //10001 failed
    a0= 1; a1=0; b0=0; b1=1; cin0=0; #10; //10010 failed
    a0= 1; a1=0; b0=0; b1=1; cin0=1; #10; //10011 failed
    a0= 1; a1=0; b0=1; b1=0; cin0=0; #10; //10100 failed
    a0= 1; a1=0; b0=1; b1=0; cin0=1; #10; //10101 failed
    a0= 1; a1=0; b0=1; b1=1; cin0=0; #10; //10110 failed
    a0= 1; a1=0; b0=1; b1=1; cin0=1; #10; //10111 failed
    a0= 1; a1=1; b0=0; b1=0; cin0=0; #10; //11000 failed
    a0= 1; a1=1; b0=0; b1=0; cin0=1; #10; //11001 failed
    a0= 1; a1=1; b0=0; b1=1; cin0=0; #10; //11010 failed
    a0= 1; a1=1; b0=0; b1=1; cin0=1; #10; //11011 failed
    a0= 1; a1=1; b0=1; b1=0; cin0=0; #10; //11100 failed
    a0= 1; a1=1; b0=1; b1=0; cin0=1; #10; //11101 failed
    a0= 1; a1=1; b0=1; b1=1; cin0=0; #10; //11110 failed
    a0= 1; a1=1; b0=1; b1=1; cin0=1; #10; //11111 failed
    end
endmodule
