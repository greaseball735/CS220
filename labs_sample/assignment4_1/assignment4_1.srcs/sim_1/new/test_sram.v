`timescale 1ns / 1ps

module tb_sram_16_32;

    reg [7:0] din;       
    reg [8:0] add;        
    reg wen;              
    wire [7:0] dout;     


    sram_512_8 uut (
        din,
        add,
        wen,
        dout
    );

    initial begin
        din = 32'b0;
        add = 9'b0000;
        wen = 0;

        #50;
        wen = 1;          
        add = 9'b0;    
        din = 5; 
        #50;
        wen = 0;          
        #50;
        $display("Write to address 0: dout = %h", dout); 

  
        #50;
        wen = 1;          
        add = 1;   
        din = 99; 
        #50;
        wen = 0;        
        #50;
        $display("Write to address 1: dout = %d", dout); 

        #50;
        wen = 1;         
        add = 15;    
        din = 69; 
        #50;
        wen = 0;          
        #50;
        $display("Write to address 15: dout = %d", dout); 

        
        #200;
        add = 1;   
        $display("Read from address 15: dout = %d", dout); 
        
        #200;
        add = 9'b0000;   
        $display("Read from address 1: dout = %d", dout); 
        
        #200;
        add = 9'b1111;   
        $display("Read from address 0: dout = %d", dout); 
        

        #2000;
        $finish;
    end

endmodule