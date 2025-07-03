`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2025 13:42:03
// Design Name: 
// Module Name: IITK_Mini_MIPS_tb
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


module IITK_Mini_MIPS_tb;
    reg clk;
    reg reset;
    
    // Instantiate the processor
    IITK_Mini_MIPS dut(
        .clk(clk),
        .reset(reset)
    );
    
    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // 10ns clock period
    end
    
    // Test sequence
    initial begin
        // Reset processor
        reset = 1;
        #15 reset = 0;
        
        // Clear instruction memory first
        for (integer i = 0; i < 10; i = i + 1)
            dut.instr_mem.memory[i] = 32'h00000000;
        
        // Load multiplication program (6 * 7 = 42)
        dut.instr_mem.memory[0] = 32'h20010006; // addi $1, $0, 6
        dut.instr_mem.memory[1] = 32'h20020007; // addi $2, $0, 7
        dut.instr_mem.memory[2] = 32'h00220018; // mul $3, $1, $2   (R-type, funct=011000)
        dut.instr_mem.memory[3] = 32'hAC030004; // sw $3, 4($0)
        
        // Run simulation
        #300;
        
        // Print final results 
        $display("\n===== SIMULATION RESULTS =====");
        $display("Register $1 = %h (%d decimal)", 
                dut.reg_file.registers[1], dut.reg_file.registers[1]);
        $display("Register $2 = %h (%d decimal)", 
                dut.reg_file.registers[2], dut.reg_file.registers[2]);
        $display("Register $3 = %h (%d decimal)", 
                dut.reg_file.registers[3], dut.reg_file.registers[3]);
        $display("Memory[1] = %h (%d decimal)", 
                dut.data_mem.memory[1], dut.data_mem.memory[1]);
        
        $finish;
    end
    
    
    initial begin
        
        $monitor("Time=%0t: PC=%h, Instr=%h, ALUOp=%h, A=%h, B=%h, Result=%h, RegWrite=%b", 
                 $time, dut.PC, dut.instruction, 
                 dut.alu_op, dut.alu.A, dut.alu.B, dut.alu.result, dut.reg_write);
    end
endmodule





