`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2025 13:32:12
// Design Name: 
// Module Name: BranchControl
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


module BranchControl(
    input wire branch,
    input wire [2:0] branch_type,
    input wire [31:0] read_data1,
    input wire [31:0] read_data2,
    output reg branch_taken
);
    parameter BR_EQ     = 3'b000;
    parameter BR_NE     = 3'b001;
    parameter BR_GT     = 3'b010;
    parameter BR_GTE    = 3'b011;
    parameter BR_LT     = 3'b100;
    parameter BR_LE     = 3'b101;
    
    always @(*) begin
        if (branch) begin
            case(branch_type)
                BR_EQ:  branch_taken = (read_data1 == read_data2);
                BR_NE:  branch_taken = (read_data1 != read_data2);
                BR_GT:  branch_taken = ($signed(read_data1) > $signed(read_data2));
                BR_GTE: branch_taken = ($signed(read_data1) >= $signed(read_data2));
                BR_LT:  branch_taken = ($signed(read_data1) < $signed(read_data2));
                BR_LE:  branch_taken = ($signed(read_data1) <= $signed(read_data2));
                default: branch_taken = 0;
            endcase
        end
        else begin
            branch_taken = 0;
        end
    end
endmodule

