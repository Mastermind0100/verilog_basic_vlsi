`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2019 17:39:15
// Design Name: 
// Module Name: bin_gra_test
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


module bin_gra_test();
reg b3,b2,b1,b0;
wire g3,g2,g1,g0;
bin_gra uut(b3,b2,b1,b0,g3,g2,g1,g0);
initial repeat(10)begin
b3 = $random;
b2 = $random;
b1 = $random;
b0 = $random;
#10;
end
endmodule
