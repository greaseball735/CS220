`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/20/2025 02:02:46 PM
// Design Name: 
// Module Name: tff
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
module tff (
    input in,      // T input
    input rst,     // Asynchronous reset
    input clk,     // Clock
    output reg out // Output
);

always @(posedge clk or posedge rst) begin
    if (rst)
        out <= 0;  // Asynchronous reset
    else if (in)
        out <= ~out; // Toggle output on T = 1
    // Else retain the current state
end

endmodule