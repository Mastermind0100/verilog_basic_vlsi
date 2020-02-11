`timescale 1ns / 1ps

module squarer_4bit_test();
    reg [3:0]a;
    wire [7:0]p;
    reg [7:0]check;
    squarer_4bit UUT (a,p);
    initial repeat (10) begin
    a=$random;
    check=a*a;
   #10 $display($time,"%d^2=%d(%d)",a,a,p,check);
   end 
   endmodule
