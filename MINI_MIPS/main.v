`timescale 1ns / 1ps
//make instr memory input this will be fetched from instruction memory using vitis
//also output pc so that IMEM can use it to fetch next instruction
//use external instruction memory


//since everything is clock controlled there is parallelism witht the constraint that memory accesss is done once per cycle.
//pc is changed at the clock edge but the previous pc is used by instruction memmory to fetch the current instruction to execute.
//the information about curent instruction is used to either jump 



//PROBLEM:: 
//synchrounus or not ? imem should be async i think and read only from main.v
//dmem should also be async atleast reads should be for lw.




//TODO :: 
//create additional register like lo, hi and introduce mflo, mfhi floating point support division multiplication support 
module MIPS_Single_Cycle (
    input clk,
    input reset,
    output [31:0] test_mem0,

    output [31:0] test_mem1,
    output [31:0] test_mem2,
    output [31:0] test_mem3,
);
    // instruction fetch 
    reg [31:0] pc; // program counter
    wire [31:0] instr; // Current Instruction


    // instruction decode 
    wire [5:0] opcode, funct;
    wire [4:0] rs, rt, rd, shamt;
    wire [15:0] imm;               //16 bit offset in I type
    wire [31:0] sign_ext_imm;  //sign extended

    // Control Signals - 9 
    wire RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, Jump;
    wire [1:0] ALUOp;

    wire [31:0] read_data1, read_data2;    //read data 1 fixed read data 2 depends on control unit 
    wire [31:0] alu_result;    //alu result
    wire [4:0] write_reg;      //write register address depends on control unit
    wire zero;    //alu zero input

    // Memory Access 
    wire [31:0] mem_read_data;    //data memory read port

    // Write Back 
    wire [31:0] write_data;     //data memmory write port

    // Sign Extend Immediate Value
    //DONE
    SignExtender sign_ext(
        .in(imm),
        .out(sign_ext_imm)
    );

    // instruction memory
    instruction_memory instr_mem (
        .pc(pc),
        .instruction(instr)
    );

    // Register File 
    //DONE
    register_file RF (
        .clk(clk),
        .regwrite(RegWrite),
        .read1(rs),
        .read2(rt),
        .writereg(write_reg),
        .writedata(write_data),
        .data1(read_data1),
        .data2(read_data2)
    );

    // ALU Control
    //PARTIALLY DONE , INTERMEDIATE ALU OPERATIONS TO BE ADDED
    wire [3:0] alu_control;
    ALUcontrol alu_ctrl (
        .ALUOp(ALUOp),
        .funct(funct),
        .ALUControl(alu_control),
        .opcode(opcode)
    );

    // ALU MUX 2
    wire [31:0] alu_operand2 = ALUSrc ? sign_ext_imm : read_data2;
    
    

    //PARTIALLY DONE , MULT, FLOATING POINT , DIV OPERATIONS REMAINS
    ALU alu (
        .A(read_data1), //fixed
        .B(alu_operand2), //select using control signal 
        .ALUControl(alu_control), 
        .Result(alu_result),
        .Zero(zero)
    );

    // Data Memory
    //ports ???? memory pre occupied before execution how sw instruction know where to store 
    //divide memory, stack ,global ,heap ??
    //memory offset in lw, sw typically used with arrays, array start adress in a register. use that as a base
    //other offset case is branch which uses procedure labels(reolved by linker)
    data_memory data_mem (
        .clk(clk),
        .a(alu_result),
        .data(read_data2),
        .port(mem_read_data),
        .MemRead(MemRead),
        .MemWrite(MemWrite),
    );

    // Control Unit
    //DONE
    ControlUnit ctrl (
        .opcode(opcode),
        .RegDst(RegDst),
        .ALUSrc(ALUSrc),
        .MemtoReg(MemtoReg),
        .RegWrite(RegWrite),
        .MemRead(MemRead),
        .MemWrite(MemWrite),
        .Branch(Branch),
        .Jump(Jump),
        .ALUOp(ALUOp)
    );

    // Write Register Selection (MUX) 1
    //write_reg = rd if regdst 1 else rt
    // rs , rt, rd. R type
    // eg add write reg = rd, rt in I type where rt is destination, offset
    assign write_reg = RegDst ? rd : rt;

    // Write Data Selection (MUX) 3
    //alu_result when 
    assign write_data = MemtoReg ? mem_read_data : alu_result;

    // PC Update Logic
    //no race condition. pc is updated on posedge and this pc is being used by instruction memory to fetch the current instruction
    //that process is combinational and the result is stored in a variable. 
    always @(posedge clk or posedge reset) begin
        if (reset)
            pc <= 32'b0;
        else
            //if jump = 1 then shift last 26 bits by 2 = 28 and then add last 4 bits of pc. ensure jump stays between 2^28 bits
            //else 
            // pc = pc + 4 or pc + 4 + branch or pc + 4 + jump
            //control signal to select
            pc <= Jump ? {pc[31:28], instr[25:0], 2'b00} : 
                  Branch & zero ? pc + 4 + (sign_ext_imm << 2) : 
                  pc + 4;
    end

    // Extracting instruction fields
    assign opcode = instr[31:26];
    assign rs = instr[25:21];
    assign rt = instr[20:16];
    assign rd = instr[15:11];
    assign shamt = instr[10:6];
    assign funct = instr[5:0];
    assign imm = instr[15:0];

endmodule