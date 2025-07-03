`timescale 1ns / 1ps

module sram_16_32(
    add, wen, din, dout
    );

reg [31:0] SRAM [15:0];
input [31:0] din;
input [3:0] add;
output [31:0] dout;
input wen;

assign dout = SRAM[add];

always @(posedge wen)
begin
    if(wen) SRAM[add] <= din;
end

endmodule