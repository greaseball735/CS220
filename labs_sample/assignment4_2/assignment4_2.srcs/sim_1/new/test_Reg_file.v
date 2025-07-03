`timescale 1ns/1ps

module register_file_32x32_tb;

  
    reg clk;
    reg rst;
    reg [4:0] read_addr1;
    reg [4:0] read_addr2;
    reg [4:0] write_addr1;
    reg [31:0] write_data1;
    reg write_en1;
    reg [4:0] write_addr2;
    reg [31:0] write_data2;
    reg write_en2;

     reg [4:0] write_addr3;
    reg [31:0] write_data3;
    reg write_en3;

     reg [4:0] write_addr4;
    reg [31:0] write_data4;
    reg write_en4;

    wire [31:0] read_data1;
    wire [31:0] read_data2;

    register_file_32x32 uut (
        .clk(clk),
        .rst(rst),
        .read_addr1(read_addr1),
        .read_addr2(read_addr2),
        .read_data1(read_data1),
        .read_data2(read_data2),
        .write_addr1(write_addr1),
        .write_data1(write_data1),
        .write_en1(write_en1),
        .write_addr2(write_addr2),
        .write_data2(write_data2),
        .write_en2(write_en2),
        .write_addr3(write_addr3),
        .write_data3(write_data3),
        .write_en3(write_en3),
        .write_addr4(write_addr4),
        .write_data4(write_data4),
        .write_en4(write_en4)
    );

   
    always #20 clk = ~clk; 

   
    initial begin
      
        clk = 0;
        rst = 1;
        read_addr1 = 0;
        read_addr2 = 0;
        write_addr1 = 0;
        write_data1 = 0;
        write_en1 = 0;
        write_addr2 = 0;
        write_data2 = 0;
        write_en2 = 0;

        write_addr3 = 0;
        write_data3 = 0;
        write_en3 = 0;

        write_addr4 = 0;
        write_data4 = 0;
        write_en4 = 0;

       
        #40;
        rst = 0;

        
        #30;
        write_addr1 = 5;
        write_data1 = 70;
        write_en1 = 1;
        #30;
        write_en1 = 0;

   
        #30;
        read_addr1 = 5;
        #30;
        $display("Read data 1 (Register 5): %h", read_data1);

        
        #30;
        write_addr2 = 10;
        write_data2 = 71;
        write_en2 = 1;
        #30;
        write_en2 = 0;

    
        #30;
        read_addr2 = 10;
        #30;
        $display("Read data 2 (Register 10): %h", read_data2);

       
        #30;
        write_addr1 = 15;
        write_data1 = 75;
        write_en1 = 1;
        write_addr2 = 15;
        write_data2 = 80;
        write_en2 = 1;
        #30;
        write_en1 = 0;
        write_en2 = 0;

     
        #30;
        read_addr1 = 15;
        #30;
        $display("Read data 1 (Register 15, collision): %h", read_data1);

        
        #30;
        write_addr1 = 20;
        write_data1 = 99;
        write_en1 = 1;
        write_addr2 = 21;
        write_data2 = 99;
        write_en2 = 1;
        #30;
        write_en1 = 0;
        write_en2 = 0;

       
        #30;
        read_addr1 = 20;
        read_addr2 = 21;
        #30;
        $display("Read data 1 (Register 20): %h", read_data1);
        $display("Read data 2 (Register 21): %h", read_data2);

       
        #50;
        $finish;
    end

endmodule