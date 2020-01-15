`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.12.2019 16:42:19
// Design Name: 
// Module Name: fa_df_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fa_df_test();
    reg a,b,cin;
    wire sum,cout;
    fa_df uut(a,b,cin,sum,cout);
    initial repeat(10) begin
    a = $random;
    b = $random;
    cin = $random;
    #20;
    end
endmodule
