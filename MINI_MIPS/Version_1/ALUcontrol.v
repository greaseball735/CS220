`timescale 1ns / 1ps
module ALUcontrol(
    input [1:0] ALUOp,    // ALU Operation Code
    input [5:0] funct,    // Function code from instruction
    output reg [3:0] ALUCtrl // ALU Control Output
    input [5:0] opcode,
);

    always @(*) begin
        case (ALUOp)
            2'b00: ALUCtrl = 4'b0010; // Load/Store (lw, sw, addi, addiu) -> ADD
            2'b01: ALUCtrl = 4'b0110; // Branch (beq, bne) -> SUB
            2'b10: begin  // R-Type Instructions (Determined by funct field)
                case (funct)
                    6'h20: ALUCtrl = 4'b0010; // ADD (add)
                    6'h21: ALUCtrl = 4'b0010; // ADDU (unsigned add)
                    6'h22: ALUCtrl = 4'b0110; // SUB (sub)
                    6'h23: ALUCtrl = 4'b0110; // SUBU (unsigned sub)
                    // 6'h18: ALUCtrl = 4'b1000; // MADD (multiply and accumulate)
                    // 6'h19: ALUCtrl = 4'b1001; // MADDU (unsigned multiply and accumulate)
                    // 6'h1C: ALUCtrl = 4'b1010; // MUL (multiply)
                    6'h24: ALUCtrl = 4'b0000; // AND (and)
                    6'h25: ALUCtrl = 4'b0001; // OR (or)
                    6'h26: ALUCtrl = 4'b0011; // XOR (xor)
                    6'h27: ALUCtrl = 4'b1100; // NOR (not)
                    6'h00: ALUCtrl = 4'b0100; // SLL (shift left logical)
                    6'h02: ALUCtrl = 4'b0101; // SRL (shift right logical)
                    // 6'h03: ALUCtrl = 4'b1101; // SRA (shift right arithmetic)
                    6'h2A: ALUCtrl = 4'b0111; // SLT (set less than)
                    default: ALUCtrl = 4'b1111; // Undefined operation
                endcase
            end
            //i type instructions addi, ori etc
            // user opcode to determine
            2'b11: begin
                case(opcode):
                    6'b001000: ALUCtrl = 4'b0010; // addi (Add)
                    6'b001100: ALUCtrl = 4'b0000; // andi (AND)
                    6'b001101: ALUCtrl = 4'b0001; // ori  (OR)
                    6'b001010: ALUCtrl = 4'b0111; // slti (SLT)
                    6'b001110: ALUCtrl = 4'b0011; // xori (XOR)


                endcase
            end
        endcase
    end
endmodule;
