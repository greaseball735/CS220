`timescale 1ns / 1ps
module fms(
input clk, input rst, input in,
output reg z

);

parameter sa = 0, 
            sb = 1,
            sc = 2,
            sd = 3,
            se = 4,
            sf = 5,
            sg = 6,
            sh = 7,
            si = 8,
            sj = 9;

reg [3:0] curr, next;

always @(posedge clk or posedge rst)
begin
if(rst) curr <= sa;
else
begin
curr <= next;



end
end

always @(posedge clk or posedge rst)
begin
if(next == se || next == sg || next == sj)
z <= 1'b1;
else z  <= 1'b0;
end

always @(*)
begin
case(curr)
    sa : if(in) next <= sb;
         else next <= sa;
    sb: if(in) next <= sh;
        else next <= sc;
    sc: if(in) next <= sf;
        else next <= sd;
    sd: if(in) next <= se;
        else next <= sa;
    se: if(in) next <= sb;
        else next <= sa;
    sf: if(in) next <= sh;
        else next <= sg;
    sg: if(in) next <= sb;
        else next <= sa;
    sh: if(in) next <= sh;
        else next <= si;
    si: if(in) next <= sf;
        else next <= sj;
    sj: if(in) next <= sb;
        else next <= sa;
    default : next <= sa;
    endcase
end



endmodule



//`timescale 1ns / 1ps

//module gray_FSM(
//    input clk,
//    input reset,
//    output reg [2:0] gray_code,
//    output z
//);

//    parameter
//        S0 = 3'b000,
//        S1 = 3'b001,
//        S2 = 3'b011,
//        S3 = 3'b010,
//        S4 = 3'b110,
//        S5 = 3'b111,
//        S6 = 3'b101,
//        S7 = 3'b100;

//    reg [2:0] next_state;
//    assign z = gray_code == S0 ? 1 : 0;

//    always @(posedge clk or posedge reset) begin
//        if (reset)
//            gray_code <= S0;
//        else
//            gray_code <= next_state;
//    end

//    always @(*) begin
//        case (gray_code)
//            S0: next_state = S1;
//            S1: next_state = S2;
//            S2: next_state = S3;
//            S3: next_state = S4;
//            S4: next_state = S5;
//            S5: next_state = S6;
//            S6: next_state = S7;
//            S7: next_state = S0;
//            default: next_state = S0;
//        endcase