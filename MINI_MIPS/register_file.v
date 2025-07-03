// `timescale 1ns / 1ps

// module register_file(read1, read2, writereg, writedata, regwrite, data1, data2, clk);

// input [4:0] read1, read2, writereg;
// input [31:0] writedata;
// input regwrite, clk;
// output [31:0] data1, data2;
// reg [31:0] RF [31:0];

// assign data1 = RF[read1];
// assign data2 = RF[read2];

// always@(posedge clk) begin
//     if(regwrite && writereg!= 5'd0 )
//     RF[writereg] <= writedata;
//     else 
//     RF[writereg] <= RF[writereg];
// end

// endmodule

`timescale 1ns / 1ps

module register_file(
    input wire [4:0] read1, 
    input wire [4:0] read2, 
    input wire [4:0] writereg,
    input wire [31:0] writedata,
    input wire regwrite,
    input wire clk,
    output wire [31:0] data1,
    output wire [31:0] data2
);

    reg [31:0] RF [31:0];

    // Asynchronous read
    assign data1 = RF[read1];
    assign data2 = RF[read2];

    // Write on rising clock edge
    always @(posedge clk) begin
        if (regwrite && writereg != 5'd0)
            RF[writereg] <= writedata;
    end

    // Optional: initialize all registers for simulation
    initial begin
        integer i;
        for (i = 0; i < 32; i = i + 1)
            RF[i] = 32'b0;
    end

endmodule
