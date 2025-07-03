`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/20/2025 04:09:30 PM
// Design Name: 
// Module Name: lut_add
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
module single_LUT_sum_gen(a,b,c_in,s);

input [1:0] a,b;
input c_in;
output [1:0] s;


LUT6_2 #(
.INIT(64'hC936936CA5A55A5A) // Specify LUT Contents
) LUT6_inst_1 (
.O6(s[1]), // LUT general output
.O5(s[0]),
.I0(b[0]), // LUT input
.I1(b[1]), // LUT input
.I2(a[0]), // LUT input
.I3(a[1]), // LUT input
.I4(c_in), // LUT input
.I5(1'd1) // LUT input
);






endmodule