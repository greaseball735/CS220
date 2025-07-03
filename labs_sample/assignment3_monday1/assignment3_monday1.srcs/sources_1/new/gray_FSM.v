`timescale 1ns / 1ps

module gray_FSM(
    input clk,
    input reset,
    output reg [2:0] gray_code,
    output z
);

    parameter
        S0 = 3'b000,
        S1 = 3'b001,
        S2 = 3'b011,
        S3 = 3'b010,
        S4 = 3'b110,
        S5 = 3'b111,
        S6 = 3'b101,
        S7 = 3'b100;

    reg [2:0] next_state;
    assign z = gray_code == S0 ? 1 : 0;

    always @(posedge clk or posedge reset) begin
        if (reset)
            gray_code <= S0;
        else
            gray_code <= next_state;
    end

    always @(*) begin
        case (gray_code)
            S0: next_state = S1;
            S1: next_state = S2;
            S2: next_state = S3;
            S3: next_state = S4;
            S4: next_state = S5;
            S5: next_state = S6;
            S6: next_state = S7;
            S7: next_state = S0;
            default: next_state = S0;
        endcase
    end

endmodule
