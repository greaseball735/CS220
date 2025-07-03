`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/13/2025 03:29:43 PM
// Design Name: 
// Module Name: full_sub_32
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

module full_sub_32(a , b, sum, cout);
    
    parameter N = 32;
    
    input [N-1:0] a;
    input [N-1:0] b;
    output [N-1:0] sum;
    output cout;
    
    wire [N:0] temp;
    assign temp[0] = 1'b1;
    genvar i;
    generate
    
        for(i = 0;i < N; i= i+ 1)
        begin
            assignment1 add(a[i], b[i], temp[i], temp[i+1], sum[i]);
        end
    
    

    endgenerate
    assign cout = temp[N];
    
    
endmodule

