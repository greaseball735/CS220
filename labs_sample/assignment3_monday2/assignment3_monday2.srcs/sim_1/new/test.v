`timescale 1ns / 1ps
module test();

reg clk, rst, in;
wire z;
reg [31:0] ipt;
initial
begin
clk  = 0;
forever #10 clk = ~clk;
end

initial
begin
#50 rst <= 1;
#20 rst <= 0;
end

fms ttt(clk, rst,in,z);
integer i;
initial
begin
    ipt <= 32'b0000001100001010001001;
    for( i = 31;i > 0;i = i - 1)
    begin
    @(posedge clk) in <= ipt[i];
    end 

end

initial
begin
$monitor("%d %d", in, z);
end



endmodule



//timescale 1ns / 1ps
//module tb_gray_code_counter;

//    reg clk, reset;
//    wire [2:0] gray_code;
//    wire z;

//    // Instantiate the Gray code counter
//    gray_code_counter uut (
//        .clk(clk),
//        .reset(reset),
//        .gray_code(gray_code),
//        .z(z)
//    );

//    initial begin
//        clk = 0;
//        forever #5 clk = ~clk;
//    end

//    initial begin

//        reset = 1;
//        #10 reset = 0;

//        #100 $finish;
//    end

//    initial begin
//        $monitor("Time: %t | Gray Code: %b | z: %b", $time, gray_code, z);
//    end

//endmodule