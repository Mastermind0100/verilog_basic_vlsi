`timescale 1ns / 1ps

module shift_reg_test();
reg [3:0]in;
reg [1:0]sel;
reg clk,rst,sinr,sinl;
wire [3:0]out;
shift_reg uut(in,sel,clk,rst,sinr,sinl,out);
initial begin
clk = 1'b1;
rst = 1'b1;
sinr = 1'b1;
sinl = 1'b0;
sel = 2'b00;
#100;
rst = 1'b1;
#100;
in = 4'b0101;
sel = 2'b10;
#100;
sel = 2'b11;
#100;
sel = 2'b01;
#100;
sel = 2'b10;
#100;
sel = 2'b00;
end
endmodule
