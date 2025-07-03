`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2025 13:27:46
// Design Name: 
// Module Name: Control
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


module Control(
    input wire [5:0] opcode,
    input wire [5:0] funct,
    output reg reg_dst,
    output reg alu_src,
    output reg mem_to_reg,
    output reg reg_write,
    output reg mem_read,
    output reg mem_write,
    output reg branch,
    output reg jump,
    output reg [3:0] alu_op,
    output reg [2:0] branch_type,
    output reg float_reg_write
);
    // Opcodes based on MIPS standard
    parameter R_TYPE    = 6'b000000;
    parameter LW        = 6'b100011;
    parameter SW        = 6'b101011;
    parameter BEQ       = 6'b000100;
    parameter BNE       = 6'b000101;
    parameter J         = 6'b000010;
    parameter JAL       = 6'b000011;
    parameter ADDI      = 6'b001000;
    parameter ADDIU     = 6'b001001;
    parameter ANDI      = 6'b001100;
    parameter ORI       = 6'b001101;
    parameter XORI      = 6'b001110;
    parameter LUI       = 6'b001111;
    parameter SLTI      = 6'b001010;
    parameter BGT       = 6'b000111; 
    parameter BGTE      = 6'b000110; 
    parameter BLT       = 6'b000001; 
    parameter BLE       = 6'b000011; 
    parameter FP_TYPE   = 6'b010001; // Floating-point instructions
    
    // Branch type encoding
    parameter BR_EQ     = 3'b000;
    parameter BR_NE     = 3'b001;
    parameter BR_GT     = 3'b010;
    parameter BR_GTE    = 3'b011;
    parameter BR_LT     = 3'b100;
    parameter BR_LE     = 3'b101;
    
    // ALU operations
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
        // Default control values
        reg_dst = 0;        // 0: rt, 1: rd
        alu_src = 0;        // 0: register, 1: immediate
        mem_to_reg = 0;     // 0: ALU result, 1: memory data
        reg_write = 0;      // 0: no write, 1: write to register
        mem_read = 0;       // 0: no read, 1: read from memory
        mem_write = 0;      // 0: no write, 1: write to memory
        branch = 0;         // 0: no branch, 1: branch
        jump = 0;           // 0: no jump, 1: jump
        alu_op = ALU_ADD;   // Default ALU operation
        branch_type = BR_EQ;// Default branch type
        float_reg_write = 0;// 0: no write to FP register, 1: write to FP register
        
        case(opcode)
            R_TYPE: begin
                reg_dst = 1;
                reg_write = 1;
                
                case(funct)
                    6'b100000: alu_op = ALU_ADD;   // add
                    6'b100010: alu_op = ALU_SUB;   // sub
                    6'b100001: alu_op = ALU_ADD;   // addu
                    6'b100011: alu_op = ALU_SUB;   // subu
                    6'b100100: alu_op = ALU_AND;   // and
                    6'b100101: alu_op = ALU_OR;    // or
                    6'b100110: alu_op = ALU_XOR;   // xor
                    6'b000000: alu_op = ALU_SLL;   // sll
                    6'b000010: alu_op = ALU_SRL;   // srl
                    6'b000011: alu_op = ALU_SRA;   // sra
                    6'b111100: alu_op = ALU_SLA;   // sla 
                    6'b111101: alu_op = ALU_MADD;  // madd 
                    6'b111110: alu_op = ALU_MADDU; // maddu 
                    6'b011000: alu_op = ALU_MUL;   // mul
                    6'b111111: alu_op = ALU_NOT;   // not 
                    6'b101010: alu_op = ALU_SLT;   // slt
                    6'b001000: begin               // jr
                        jump = 1;
                        reg_write = 0;
                    end
                endcase
            end
            
            LW: begin
                alu_src = 1;
                mem_to_reg = 1;
                reg_write = 1;
                mem_read = 1;
                alu_op = ALU_ADD;
            end
            
            SW: begin
                alu_src = 1;
                mem_write = 1;
                alu_op = ALU_ADD;
            end
            
            BEQ: begin
                branch = 1;
                alu_op = ALU_SUB;
                branch_type = BR_EQ;
            end
            
            BNE: begin
                branch = 1;
                alu_op = ALU_SUB;
                branch_type = BR_NE;
            end
            
            BGT: begin
                branch = 1;
                alu_op = ALU_SUB;
                branch_type = BR_GT;
            end
            
            BGTE: begin
                branch = 1;
                alu_op = ALU_SUB;
                branch_type = BR_GTE;
            end
            
            BLT: begin
                branch = 1;
                alu_op = ALU_SUB;
                branch_type = BR_LT;
            end
            
            BLE: begin
                branch = 1;
                alu_op = ALU_SUB;
                branch_type = BR_LE;
            end
            
            J: begin
                jump = 1;
            end
            
            JAL: begin
                jump = 1;
                reg_write = 1;
                
            end
            
            ADDI: begin
                alu_src = 1;
                reg_write = 1;
                alu_op = ALU_ADD;
            end
            
            ADDIU: begin
                alu_src = 1;
                reg_write = 1;
                alu_op = ALU_ADD;
            end
            
            ANDI: begin
                alu_src = 1;
                reg_write = 1;
                alu_op = ALU_AND;
            end
            
            ORI: begin
                alu_src = 1;
                reg_write = 1;
                alu_op = ALU_OR;
            end
            
            XORI: begin
                alu_src = 1;
                reg_write = 1;
                alu_op = ALU_XOR;
            end
            
            LUI: begin
                alu_src = 1;
                reg_write = 1;
                // Special handling for lui
            end
            
            SLTI: begin
                alu_src = 1;
                reg_write = 1;
                alu_op = ALU_SLT;
            end
            
            FP_TYPE: begin
                // Handle floating point instructions
                case(funct)
                    6'b000000: begin  // add.s
                        float_reg_write = 1;
                    end
                    6'b000001: begin  // sub.s
                        float_reg_write = 1;
                    end
                endcase
            end
        endcase
    end
endmodule

