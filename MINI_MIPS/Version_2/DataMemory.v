`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2025 13:39:01
// Design Name: 
// Module Name: DataMemory
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

module DataMemory(
    input wire clk,
    input wire [31:0] address,
    input wire [31:0] write_data,
    input wire mem_write,
    input wire mem_read,
    output wire [31:0] read_data
);
    reg [31:0] memory [0:1023];  // 4KB data memory
    
    // Initialize memory 
    integer i;
    initial begin
        for (i = 0; i < 1024; i = i + 1)
            memory[i] = 32'h00000000;
    end
    
    // Read logic word aligned
    assign read_data = mem_read ? memory[address[11:2]] : 32'h00000000;
    
    // Write logic word aligned
    always @(posedge clk) begin
        if (mem_write)
            memory[address[11:2]] <= write_data;
    end
endmodule

