`timescale 1ns / 1ps
module register_file_32x32 (
    input wire clk,                    
    input wire rst,                    
    input wire [4:0] read_addr1,        
    input wire [4:0] read_addr2,       
    output reg [31:0] read_data1,       
    output reg [31:0] read_data2,       
    input wire [4:0] write_addr1,      
    input wire [31:0] write_data1,     
    input wire write_en1,
                   
    input wire [4:0] write_addr2,      
    input wire [31:0] write_data2,      
    input wire write_en2,

    input wire [4:0] write_addr3,     
    input wire [31:0] write_data3,      
    input wire write_en3,

    input wire [4:0] write_addr4,      
    input wire [31:0] write_data4,     
    input wire write_en4               
);

    
    reg [31:0] registers [0:31];

    
    integer i;
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            for (i = 0; i < 32; i = i + 1) begin
                registers[i] <= 32'b0;
            end
        end
    end

    always @(*) begin
        read_data1 = registers[read_addr1];
        read_data2 = registers[read_addr2];
    end

   
    always @(posedge clk) begin
        case(1'b1)
        write_en1 : registers[write_addr1] <= write_data1;
        write_en2 : registers[write_addr2] <= write_data2;
        write_en3 : registers[write_addr3] <= write_data3;
        write_en4 : registers[write_addr4] <= write_data4;
        endcase

    end

endmodule