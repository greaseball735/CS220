`timescale 1ns / 1ps

module Control (
    input [5:0] opcode,      // Instruction opcode (bits 31-26)
    output reg RegDst,       // Register destination (1: rd, 0: rt)
    output reg ALUSrc,       // ALU source (1: immediate, 0: register)
    output reg MemtoReg,     // Memory to register (1: Mem→Reg, 0: ALU→Reg)
    output reg RegWrite,     // Register write enable
    output reg MemRead,      // Memory read enable
    output reg MemWrite,     // Memory write enable
    output reg Branch,       // Branch instruction (beq, bne)
    output reg Jump,         // Jump instruction (j, jal)
    output reg [1:0] ALUOp   // ALU operation control (00: lw/sw, 01: beq, 10: R-type)
);

//control singnal 
// regdst = 0 when rd = rt , I type
// alusrc  = 1 choose offeset
// memtoreg = 1 when memory to register load , 0 when alu to register addition
// regwrite = 1 when enable register write 
// memread  = 
// memwrite = 
// branch = 
// jump = 


always @(*) begin
    // Default control signals (avoid latches)
    RegDst = 0;
    ALUSrc = 0;
    MemtoReg = 0;
    RegWrite = 0;
    MemRead = 0;
    MemWrite = 0;
    Branch = 0;
    Jump = 0;
    ALUOp = 2'b00;

    case (opcode)
        // R-type (add, sub, and, or, slt)
        6'b000000: begin
            RegDst = 1;      // Destination = rd
            ALUSrc = 0;      // ALU source = registers
            RegWrite = 1;    // Write to register
            ALUOp = 2'b10;   // ALU decodes funct field
        end

        // lw (load word)
        6'b100011: begin
            ALUSrc = 1;      // ALU source = immediate (offset)
            MemtoReg = 1;    // Memory → register
            RegWrite = 1;    // Write to register
            MemRead = 1;     // Read memory
            ALUOp = 2'b00;   // ALU adds (base + offset)
        end

        // sw (store word)
        6'b101011: begin
            ALUSrc = 1;      // ALU source = immediate (offset)
            MemWrite = 1;    // Write memory
            ALUOp = 2'b00;   // ALU adds (base + offset)
        end

        // beq (branch equal)
        6'b000100: begin
            Branch = 1;      // Branch instruction
            ALUOp = 2'b01;   // ALU subtracts (compare)
        end

        // j (jump)
        6'b000010: begin
            Jump = 1;        // Jump instruction
        end

        // I-type (e.g., addi, ori)
        6'b001000, 6'b001101: begin  // addi, ori
            ALUSrc = 1;      // ALU source = immediate
            RegWrite = 1;    // Write to register
            ALUOp = 2'b11;   // ALU depends on opcode (e.g., addi → add, ori → or)
        end

        // Default case (optional)
        default: begin
            // All signals already default to 0
        end
    endcase
end

endmodule
// module Control(
//     input [5:0] opcode,
//     output reg controls[0], controls[1], controls[2], controls[3], controls[4], controls[5], controls[6], controls[7], controls[9:8]
// );

// // RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, Jump, ALUOp
// //first implement basic instructions control
// reg [9:0] controls;
// // R type, lw, sw, beq, then expand to other I type and J type instructions
//     always @(*) begin
//         case (opcode)
//             6'b000000: controls = 10'100




//         endcase

//     end



// endmodule;

// ControlUnit ctrl (
//         .opcode(opcode),
//         .RegDst(RegDst),
//         .ALUSrc(ALUSrc),
//         .MemtoReg(MemtoReg),
//         .RegWrite(RegWrite),
//         .MemRead(MemRead),
//         .MemWrite(MemWrite),
//         .Branch(Branch),
//         .Jump(Jump),
//         .ALUOp(ALUOp)
//     );