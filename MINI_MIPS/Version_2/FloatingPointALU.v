`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2025 13:31:03
// Design Name: 
// Module Name: FloatingPointALU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module FloatingPointALU(
    input wire [31:0] A,
    input wire [31:0] B,
    input wire [5:0] func,
    output reg [31:0] result,
    output reg flag_eq,
    output reg flag_lt,
    output reg flag_gt,
    output reg flag_le,
    output reg flag_ge
);
    
    wire sign_A, sign_B;
    wire [7:0] exp_A, exp_B;
    wire [22:0] frac_A, frac_B;
    
    assign sign_A = A[31];
    assign exp_A = A[30:23];
    assign frac_A = A[22:0];
    
    assign sign_B = B[31];
    assign exp_B = B[30:23];
    assign frac_B = B[22:0];
    
    // Simple floating-point operations
    always @(*) begin
        // Default values
        result = 32'h00000000;
        flag_eq = 0;
        flag_lt = 0;
        flag_gt = 0;
        flag_le = 0;
        flag_ge = 0;
        
        case(func)
            6'b000000: begin // add.s
                result = A + B; 
            end
            6'b000001: begin // sub.s
                result = A - B; 
            end
            6'b000010: begin // c.eq.s
                flag_eq = (A == B);
            end
            6'b000011: begin // c.lt.s
                flag_lt = ($signed(A) < $signed(B)); 
            end
            6'b000100: begin // c.le.s
                flag_le = ($signed(A) <= $signed(B)); 
            end
            6'b000101: begin // c.gt.s
                flag_gt = ($signed(A) > $signed(B)); 
            end
            6'b000110: begin // c.ge.s
                flag_ge = ($signed(A) >= $signed(B)); 
            end
            6'b000111: begin // mov.s
                result = A;
            end
        endcase
    end
endmodule

