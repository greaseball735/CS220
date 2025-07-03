
`timescale 1ns / 1ps

module mod(clk, rst, o);
input clk, rst;
output [3:0] o;

//    wire t1,t2,t3,t4;
    wire x1,x2,x3,x4;

//    assign out = {x1, x2, x3, x4};
//    assign t4 = (~x2&~x3&~x4) | (x1&x2) | (x2&~x3&x4) | (~x2&x3&x4) | (x2&x3&~x4);
//    assign t1 = (~x1&x2&~x3&~x4) | (x1&x4);
//    assign t2 = (x1&x4) | (~x2&x3&~x4);
//    assign t3 = (~x2&~x3&x4) | (x2&x3&x4);

//wire x1,x2,x3,x4;

wire o0, o1, o2, o3; 

assign x3 = (~o1 & ~o2 & ~o3)  |  (o0 & o1) | (o1 & ~o2 & o3) | (~o1 & o2 & o3) | (o1 & o2 & ~o3);
assign x2 = (~o0 & o1 & ~o2 & ~o3)  | (o0 & o3);
assign x1 = (o1 & o3) | (~o3 & ~o1 & o2);
assign x0 = (~o1 & ~o2 & o3) | (o1 & o2 & o3);
//assign x0 = (~o0 & ~o2 & ~o1 & ~o3)  |(o0 & ~o2 & o1 & ~o3)  |(~o0 & o2 & o1 & ~o3)  |(o0 & o2 & o1 & ~o3)  |(~o0 & o2 & ~o1 & o3)  |(o0 & o2 & ~o1 & o3);

tff t1(x0, rst, clk, o0);
tff t2(x1, rst, clk, o1);
tff t3(x2, rst, clk, o2);
tff t4(x3, rst, clk, o3);

assign o = {o3, o2, o1, o0};

endmodule






















//module mod10_gray_counter (
//    input clk,
//    input reset,
//    output reg [3:0] gray
//);


//reg T0, T1, T2, T3;


//always @(posedge clk) begin
//    if (reset)
//        gray[0] <= 0;
//    else
//        gray[0] <= gray[0] ^ T0;
//end


//always @(posedge clk) begin
//    if (reset)
//        gray[1] <= 0;
//    else
//        gray[1] <= gray[1] ^ T1;
//end


//always @(posedge clk) begin
//    if (reset)
//        gray[2] <= 0;
//    else
//        gray[2] <= gray[2] ^ T2;
//end


//always @(posedge clk) begin
//    if (reset)
//        gray[3] <= 0;
//    else
//        gray[3] <= gray[3] ^ T3;
//end


//always @(*) begin
//    case (gray)
//        4'b0000: {T3, T2, T1, T0} = 4'b0001;
//        4'b0001: {T3, T2, T1, T0} = 4'b0010;
//        4'b0011: {T3, T2, T1, T0} = 4'b0100;
//        4'b0010: {T3, T2, T1, T0} = 4'b1000;
//        4'b0110: {T3, T2, T1, T0} = 4'b1001;
//        4'b0111: {T3, T2, T1, T0} = 4'b0100;
//        4'b0101: {T3, T2, T1, T0} = 4'b0000;
//        4'b0100: {T3, T2, T1, T0} = 4'b0011;
//        4'b1100: {T3, T2, T1, T0} = 4'b0001;
//        4'b1101: {T3, T2, T1, T0} = 4'b0000;
//        default: {T3, T2, T1, T0} = 4'b0000;
//    endcase
//end


//endmodule
