`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2025 13:40:56
// Design Name: 
// Module Name: InstructionMemory
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

module InstructionMemory(
    input wire [31:0] address,
    output wire [31:0] instruction
);
    reg [31:0] memory [0:1023];  // 4KB instruction memory
    
   // Initialize memory with instructions 
    initial begin
        memory[0] = 32'h20010006;  
    end
 
    // Word-aligned fetch 
    assign instruction = memory[address[11:2]]; // Ignore 2 LSBs for word alignment
endmodule



