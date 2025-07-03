`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/20/2025 04:23:44 PM
// Design Name: 
// Module Name: test_add
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


module test_add();

parameter N = 512;

reg [N-1:0] a, b;
reg cin;
wire s, cout;
NBitAdder X(a, b, cin, s, cout);

initial
begin
cin = 1;
a = 1024'b10;
b = 1024'b110;
#200 $finish;
end





endmodule
