`timescale 1ns / 1ps

module wtm_test();
reg [3:0]a,b;
wire [7:0]p;
reg [7:0]check;

wtm uut(a,b,p);
initial repeat(10) begin
a=$random;
b=$random;
check = a*b;
#10 $display($time," %d * %d = %d (%d)",a,b,p,check);
end
endmodule
