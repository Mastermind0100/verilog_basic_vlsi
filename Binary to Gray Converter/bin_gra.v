`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.08.2019 18:56:46
// Design Name: 
// Module Name: bin_gra
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


module bin_gra(
    input b3,b2,b1,b0,
    output g3,g2,g1,g0
    );
    assign g0 = b0^b1;
    assign g1 = b1^b2;
    assign g2 = b2^b3;
    assign g3 = b3;
endmodule
