`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2025 13:21:04
// Design Name: 
// Module Name: ALU
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


module ALU(
    input wire [31:0] A,
    input wire [31:0] B,
    input wire [3:0] ALUOp,
    input wire [4:0] shamt,
    output reg [31:0] result
);
    // For madd operation
    reg [63:0] mul_result;
    reg [63:0] hi_lo_reg;
    
    parameter ALU_ADD   = 4'b0000;
    parameter ALU_SUB   = 4'b0001;
    parameter ALU_AND   = 4'b0010;
    parameter ALU_OR    = 4'b0011;
    parameter ALU_XOR   = 4'b0100;
    parameter ALU_SLL   = 4'b0101;
    parameter ALU_SRL   = 4'b0110;
    parameter ALU_SLA   = 4'b0111;
    parameter ALU_SRA   = 4'b1000;
    parameter ALU_MADD  = 4'b1001;
    parameter ALU_MADDU = 4'b1010;
    parameter ALU_MUL   = 4'b1011;
    parameter ALU_NOT   = 4'b1100;
    parameter ALU_SLT   = 4'b1101;
    
    always @(*) begin
        case(ALUOp)
            ALU_ADD: result = A + B;
            ALU_SUB: result = A - B;
            ALU_AND: result = A & B;
            ALU_OR:  result = A | B;
            ALU_XOR: result = A ^ B;
            ALU_SLL: result = B << shamt;
            ALU_SRL: result = B >> shamt;
            ALU_SLA: result = B << shamt; // Same as SLL in this implementation
            ALU_SRA: result = $signed(B) >>> shamt;
            ALU_NOT: result = ~A;
            ALU_SLT: result = ($signed(A) < $signed(B)) ? 32'h00000001 : 32'h00000000;
            ALU_MUL: result = A * B;
            ALU_MADD: begin
                mul_result = $signed(A) * $signed(B);
                hi_lo_reg = {32'b0, mul_result[31:0]} + hi_lo_reg;
                result = hi_lo_reg[31:0]; // Return lower 32 bits
            end
            ALU_MADDU: begin
                mul_result = A * B;
                hi_lo_reg = {32'b0, mul_result[31:0]} + hi_lo_reg;
                result = hi_lo_reg[31:0]; // Return lower 32 bits
            end
            default: result = 32'h00000000;
        endcase
    end
endmodule

