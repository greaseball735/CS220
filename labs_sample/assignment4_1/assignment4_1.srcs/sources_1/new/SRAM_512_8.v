`timescale 1ns / 1ps


module sram_512_8(
   din , add , wen , dout
   );
input wen;
input [7:0] din;
output [7:0] dout;
input [8:0] add;
wire [7:0] dout1;


wire [31: 0] SRAM [7:0];
reg [31:0] SRAM2 [7:0];


reg [7:0] out [15:0][31:0];



assign dout = out[add[8:5]][add[4:0]];
always @(posedge wen)
begin
    if(wen) out[add[8:5]][add[4:0]] <= din;
end



genvar i;

generate
    for (i = 0; i < 8; i = i + 1) begin : sram_instances
        sram_16_32 sram_inst (
            .add(add[8:5]),
            .wen(0),
            .din(SRAM2[i]),
            .dout(SRAM[i])
        );
    end
endgenerate


//read/////
assign dout1[0] = SRAM[0][add[4:0]];
assign dout1[1] = SRAM[1][add[4:0]];
assign dout1[2] = SRAM[2][add[4:0]];
assign dout1[3] = SRAM[3][add[4:0]];
assign dout1[4] = SRAM[4][add[4:0]];
assign dout1[5] = SRAM[5][add[4:0]];
assign dout1[6] = SRAM[6][add[4:0]];
assign dout1[7] = SRAM[7][add[4:0]];



//write//
integer j;
always @(posedge wen)
begin
    if(wen)
    begin
    SRAM2[0] <= SRAM[0];
    SRAM2[0][add[4:0]] <= din[0];
    
    SRAM2[1] <= SRAM[1];
    SRAM2[1][add[4:0]] <= din[1];
    
    SRAM2[2] <= SRAM[2];
    SRAM2[2][add[4:0]] <= din[2];
    
    SRAM2[3] <= SRAM[3];
    SRAM2[3][add[4:0]] <= din[3];
    
    SRAM2[4] <= SRAM[4];
    SRAM2[4][add[4:0]] <= din[4];
    
    SRAM2[5] <= SRAM[5];
    SRAM2[5][add[4:0]] <= din[5];
    
    SRAM2[6] <= SRAM[6];
    SRAM2[6][add[4:0]] <= din[6];
   
    SRAM2[7] <= SRAM[7];
    SRAM2[7][add[4:0]] <= din[7];
        
    end
    
end










endmodule
