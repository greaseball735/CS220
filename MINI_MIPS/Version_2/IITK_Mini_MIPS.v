`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2025 13:23:17
// Design Name: 
// Module Name: IITK_Mini_MIPS
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

module IITK_Mini_MIPS(
    input wire clk,
    input wire reset
);
    // Internal wires
    wire [31:0] PC, next_PC, PC_plus_4;
    wire [31:0] instruction;
    wire [31:0] read_data1, read_data2, write_data;
    wire [31:0] immediate_extended;
    wire [31:0] alu_result, mem_read_data;
    wire [31:0] branch_address, jump_address;
    wire [4:0] write_register;
    wire [31:0] float_read_data1, float_read_data2, float_write_data;
    wire [31:0] move_data;
    wire [31:0] mem_read_data_mux;
    // Control signals
    wire reg_write, mem_read, mem_write, alu_src, reg_dst, branch;
    wire jump, mem_to_reg, float_reg_write;
    wire [3:0] alu_op;
    wire [2:0] branch_type;
    wire branch_taken;
    
    // Floating point comparison flags
    wire fp_flag_eq, fp_flag_lt, fp_flag_gt, fp_flag_le, fp_flag_ge;
    
    // Program counter logic
    assign PC_plus_4 = PC + 32'd4;
    assign jump_address = {PC_plus_4[31:28], instruction[25:0], 2'b00};
    assign next_PC = jump ? jump_address : 
                    (branch_taken ? branch_address : PC_plus_4);
    
    // PC Register
    PC_Register pc_reg(
        .clk(clk),
        .reset(reset),
        .next_PC(next_PC),
        .PC(PC)
    );
    
    // Instruction Memory
    InstructionMemory instr_mem(
        .address(PC),
        .instruction(instruction)
    );
    
    // Control Unit
    Control ctrl_unit(
        .opcode(instruction[31:26]),
        .funct(instruction[5:0]),
        .reg_dst(reg_dst),
        .alu_src(alu_src),
        .mem_to_reg(mem_to_reg),
        .reg_write(reg_write),
        .mem_read(mem_read),
        .mem_write(mem_write),
        .branch(branch),
        .jump(jump),
        .alu_op(alu_op),
        .branch_type(branch_type),
        .float_reg_write(float_reg_write)
    );
    
    // Register File
    assign write_register = reg_dst ? instruction[15:11] : instruction[20:16];
    
    RegisterFile reg_file(
        .clk(clk),
        .reset(reset),
        .reg_write(reg_write),
        .read_reg1(instruction[25:21]),
        .read_reg2(instruction[20:16]),
        .write_reg(write_register),
        .write_data(mem_to_reg ? mem_read_data : alu_result),
        .read_data1(read_data1),
        .read_data2(read_data2)
    );
    
    // Floating Point Register File
    FloatingPointRegFile fp_reg_file(
        .clk(clk),
        .reset(reset),
        .reg_write(float_reg_write),
        .read_reg1(instruction[15:11]),  // fs
        .read_reg2(instruction[20:16]),  // ft
        .write_reg(instruction[10:6]),   // fd
        .write_data(float_write_data),
        .read_data1(float_read_data1),
        .read_data2(float_read_data2),
        .move_data(move_data)
    );
    
    // Sign Extension
    SignExtend sign_extend(
        .in(instruction[15:0]),
        .out(immediate_extended)
    );
    
    // ALU
    ALU alu(
        .A(read_data1),
        .B(alu_src ? immediate_extended : read_data2),
        .ALUOp(alu_op),
        .shamt(instruction[10:6]),
        .result(alu_result)
    );
    
    // Floating Point ALU
    FloatingPointALU fp_alu(
        .A(float_read_data1),
        .B(float_read_data2),
        .func(instruction[5:0]),
        .result(float_write_data),
        .flag_eq(fp_flag_eq),
        .flag_lt(fp_flag_lt),
        .flag_gt(fp_flag_gt),
        .flag_le(fp_flag_le),
        .flag_ge(fp_flag_ge)
    );
    
    // Data Memory
    DataMemory data_mem(
        .clk(clk),
        .address(alu_result),
        .write_data(read_data2),
        .mem_write(mem_write),
        .mem_read(mem_read),
        .read_data(mem_read_data)
    );
    /* Use when loading in hardware
    memory_wrapper data_mem(
    .a(alu_result[11:2]),   // 10-bit word-aligned address
    .d(read_data2),         // data input
    .dpra(alu_result[11:2]), // dual port read address
    .clk(clk),              // clock
    .we(mem_write),         // write enable
    .dpo(mem_read_data_mux) // data output
    );
    */
    
    
    // Branch Control
    BranchControl branch_ctrl(
        .branch(branch),
        .branch_type(branch_type),
        .read_data1(read_data1),
        .read_data2(read_data2),
        .branch_taken(branch_taken)
    );
    
    // Branch Address Calculation
    BranchAddress branch_addr_calc(
        .PC_plus_4(PC_plus_4),
        .immediate_extended(immediate_extended),
        .branch_address(branch_address)
    );
    
endmodule

