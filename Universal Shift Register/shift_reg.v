`timescale 1ns / 1ps

module mux_4_1(
    input a,b,c,d,
    input s0,s1,
    output y
    );
    assign y = s1?(s0?d:c):(s0?b:a);
endmodule

module dff(q,d,clk,rst);
output reg q;
input d,clk,rst;
always@(posedge clk)
if(rst==1'b1)
    q<=1'b0;
else
    q<=d;
endmodule

module shift_reg(in,sel,clk,rst,sinr,sinl,out);
wire [3:0]w;
wire [3:0]w1;
input [3:0]in;
input [1:0]sel;
input clk,rst,sinr,sinl;
output [3:0]out;
reg[27:0]count = 0;
mux_4_1 m1(in[3],w1[2],sinr,w1[3],sel[0],sel[1],w[3]);
mux_4_1 m2(in[2],w1[1],w1[3],w1[2],sel[0],sel[1],w[2]);
mux_4_1 m3(in[1],w1[0],w1[2],w1[1],sel[0],sel[1],w[1]);
mux_4_1 m4(in[0],sinl,w1[1],w1[0],sel[0],sel[1],w[0]);

dff d1(w[3],w1[3],clk,rst);
dff d2(w[2],w1[2],clk,rst);
dff d3(w[1],w1[1],clk,rst);
dff d4(w[0],w1[0],clk,rst);

assign out = w1;
always @*
$display("%d %d %d %d",out[0],out[1],out[2],out[3]);

endmodule
