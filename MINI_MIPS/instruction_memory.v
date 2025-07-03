`timescale 1ns / 1ps
// potential race condition or unexpected behaviour with synchronous IMEM ??
// on the same clock edge, current pc is used to fetch instruction and in the same edge pc is updated accordingly



//not clear on how to load IMEM and DMEM ? vitis , vivado ?? how to use this BRAM  ? 

// module instruction_memory(a,dpo);

// input [9:0] a;
// // input clk,we;
// output [31:0] dpo;
// // input [31:0] d; 

//     //word alignment
//     //  wire [9:0] pc_word_addr = pc[11:2];  // Drop 2 LSBs (word alignment)
//     dist_mem_gen_0 your_instance_name (
//     .a(10'b0),          // Write address (unused, tied to 0)
//     .d(32'b0),          // Write data (unused, tied to 0)
//     .dpra(a), // Read address (from PC)
//     .clk(1'b0),         // Clock (unused for async read)
//     .we(1'b0),          // Write enable (disabled)
//     .dpo(dpo)   // Instruction output
// );
// endmodule



module instruction_memory (
    input  [31:0] pc,          // Program counter input
    output [31:0] instruction  // Instruction output
);
    reg [31:0] mem [0:1023];   // 1KB memory (1024 x 32-bit)

    // Load instructions from HEX file at startup
    initial begin
        $readmemh("program.hex", mem);
    end

    // Read instruction (asynchronous for single-cycle CPU)
    assign instruction = mem[pc[9:0] >> 2];  // Word-aligned (PC increments by 4)
endmodule
