`timescale 1ns / 1ps
module test;

    reg clk, reset;
    wire [2:0] gray_code;
    wire z;

    
    gray_FSM uut (
        .clk(clk),
        .reset(reset),
        .gray_code(gray_code),
        .z(z)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        
        reset = 1;
        #100 reset = 0;

        #100 $finish;
    end

    initial begin
        $monitor("Time: %t | Gray Code: %b | z: %b", $time, gray_code, z);
    end

endmodule