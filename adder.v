module mod_10(input rst, output reg done, output reg [3:0] counter);

    always @(posedge clk)
    begin
      if(rst or counter == 9) counter <= 0;
      else counter <= counter + 1;
      
    end


endmodule