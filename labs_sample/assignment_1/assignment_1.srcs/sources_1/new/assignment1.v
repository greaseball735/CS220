`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/13/2025 02:28:30 PM
// Design Name: 
// Module Name: assignment1
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


module assignment1(a , b, cin, cout, sum);

    input a , b , cin;
    output cout, sum;
    
    wire t1, t2, t3, t4;
    xor(t4, b , 1'b1);
    xor(t1 , a, t4);
    and(t2, a, t4);
    xor(sum , t1, cin);
    and(t3 , cin , t1);
    or(cout, t2, t3);
    
    
    
    
endmodule


