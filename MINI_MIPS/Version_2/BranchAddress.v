`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2025 13:32:51
// Design Name: 
// Module Name: BranchAddress
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

module BranchAddress(
    input wire [31:0] PC_plus_4,
    input wire [31:0] immediate_extended,
    output wire [31:0] branch_address
);
    assign branch_address = PC_plus_4 + (immediate_extended << 2);
endmodule


