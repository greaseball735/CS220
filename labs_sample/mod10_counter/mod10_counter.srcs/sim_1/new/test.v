`timescale 1ns / 1ps

module test();

reg clk;
reg reset;
wire [3:0] gray;

initial
begin
clk = 0;
forever #10 clk = ~clk;
end

initial
begin
reset = 1;
#5 reset = 0;
#400 $finish;

end
mod x(
    clk,
    reset,
    gray
);


endmodule
