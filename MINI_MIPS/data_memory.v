`timescale 1ns / 1ps

// module data_memory(a,d,dpra,clk,we,dpo);

// input [9:0] a,dpra;
// input clk,we;
// output [31:0] dpo;
// input [31:0] d; 
     
//     dist_mem_gen_0 your_instance_name (
//   .a(a),        // input wire [8 : 0] a
//   .d(d),        // input wire [31 : 0] d
//   .dpra(dpra),  // input wire [8 : 0] dpra
//   .clk(clk),    // input wire clk
//   .we(we),      // input wire we
//   .dpo(dpo)    // output wire [31 : 0] dpo
// );
// endmodule

module data_memory(
    input clk,
    input [31:0] a,
    input [31:0] data,
    output [31:0] port,
    input MemRead,
    input MemWrite,
    // output [31:0] test_mem [0:63]
    output reg [31:0] test_mem0,  // exposing few entries for testing
    output reg [31:0] test_mem1,
    output reg [31:0] test_mem2,
    output reg [31:0] test_mem3,

        
);
    reg [31:0] DATA [0:63];
    // assign test_mem = DATA;

    initial begin
        $readmemh("program_data.hex", DATA);
    end


    always @(posedge clk )begin
        if(MemWrite)begin
            DATA[a[15:2]] <= data; 
        end

    end
    always @(*)begin
        if(MemRead)begin
            port <= DATA[a[15:2]]
        end
        else
        begin
            port <= 32'b0;
        end

    end

    always @(*) begin
        test_mem0 = DATA[31];
        test_mem1 = DATA[32];
        test_mem2 = DATA[33];
        test_mem3 = DATA[34];
    end


endmodule;