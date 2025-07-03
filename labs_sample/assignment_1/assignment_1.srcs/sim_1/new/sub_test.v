`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/13/2025 03:13:45 PM
// Design Name: 
// Module Name: sub_test
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


module sub_test();
    parameter N = 32;
    reg [N-1:0] a;
    reg [N-1:0] b;
    wire [N-1:0] sum;
    wire cout;
    
    full_sub_32 subm(a , b, sum , cout);
    initial
    begin
        $display("help");
        $monitor("a = %d b = %d, sum = %d cout = %d" , a,  b , sum, cout);
        a <= 32'b101010 ; b <= 32'b1010;
        #20;
        a <= 32'b1100; b <= 32'b1001;
        #20
        $finish;
        
    end
    
    
    
    
endmodule
