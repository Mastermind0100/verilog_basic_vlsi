`timescale 1ns / 1ps

module FIR(
input [3:0] x,
input clk,rst,
output [9:0] q
);
parameter h0=4'b0001;
parameter h1=4'b0010;
parameter h2=4'b0011;
parameter h3=4'b0100;
wire [3:0]w0,w1,w2,w3;
wire [7:0]w4,w5,w6,w7;
wire [9:0]w8,w9;
pipo d1(x,clk,rst,w0);
pipo d2(w0,clk,rst,w1);
pipo d3(w1,clk,rst,w2);
pipo d4(w2,clk,rst,w3);
assign w4=h0*w0;
assign w5=h1*w1;
assign w6=h2*w2;
assign w7=h3*w3;
assign w8=w4+w5;
assign w9=w6+w8;
assign q=w9+w7;
endmodule
module pipo(
input[3:0] din,
input clk,rst,
output reg [3:0] q);
always @ (posedge clk or negedge rst)
if (!rst)
q <= 4'b0000;
else
q <= din;
endmodule