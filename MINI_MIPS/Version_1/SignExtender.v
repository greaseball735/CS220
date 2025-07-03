module SignExtender(
    input [15:0] in,    // 16-bit input
    output reg [31:0] out  // 32-bit output (sign-extended)
);
    // < 0 returns false always
    always @(*) begin
        out = {{16{in[15]}}, in};  // Correct sign-extension
    end
endmodule