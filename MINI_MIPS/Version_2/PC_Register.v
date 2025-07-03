`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2025 13:26:00
// Design Name: 
// Module Name: PC_Register
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


module PC_Register(
    input wire clk,
    input wire reset,
    input wire [31:0] next_PC,
    output reg [31:0] PC
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            PC <= 32'h00000000;  // Reset to beginning of instruction memory
        else
            PC <= next_PC;
    end
endmodule

