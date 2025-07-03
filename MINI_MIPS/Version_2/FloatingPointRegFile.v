`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2025 13:29:21
// Design Name: 
// Module Name: FloatingPointRegFile
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

module FloatingPointRegFile(
    input wire clk,
    input wire reset,
    input wire reg_write,
    input wire [4:0] read_reg1,
    input wire [4:0] read_reg2,
    input wire [4:0] write_reg,
    input wire [31:0] write_data,
    output wire [31:0] read_data1,
    output wire [31:0] read_data2,
    output wire [31:0] move_data
);
    reg [31:0] registers [0:31];
    integer i;
    
    // Initialize registers
    initial begin
        for (i = 0; i < 32; i = i + 1)
            registers[i] = 32'h00000000;
    end
    
    // Read logic
    assign read_data1 = registers[read_reg1];
    assign read_data2 = registers[read_reg2];
    assign move_data = registers[read_reg1]; // For mfc1/mtc1
    
    // Write logic
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            for (i = 0; i < 32; i = i + 1)
                registers[i] <= 32'h00000000;
        end 
        else if (reg_write) begin
            registers[write_reg] <= write_data;
        end
    end
endmodule

