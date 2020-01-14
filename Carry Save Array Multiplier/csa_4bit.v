`timescale 1ns / 1ps

module fa_df(input a,b,cin,output cout,sum);
    assign sum = a^b^cin;
    assign cout = (a&b)|(cin&(a^b));
endmodule

module csa_4bit(input[3:0]a,b,output[7:0]p);
    wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17;
    wire [3:0]q,r;
    assign p[0] = a[0]&b[0];

    fa_df fa1 ((a[0]&b[1]),(a[1]&b[0]),1'b0,w1,p[1]);
    fa_df fa2 ((a[2]&b[0]),(a[1]&b[1]),1'b0,w2,w10);
    fa_df fa3 ((a[3]&b[0]),(a[2]&b[1]),1'b0,w3,w11);
    
    fa_df fa4 ((a[0]&b[2]),w10,w1,w4,p[2]);
    fa_df fa5 ((a[1]&b[2]),w11,w2,w5,w12);
    fa_df fa6 ((a[3]&b[1]),(a[2]&b[2]),w3,w6,w13);
    
    fa_df fa7 ((a[0]&b[3]),w12,w4,w7,p[3]);
    fa_df fa8 ((a[1]&b[3]),w13,w5,w8,w14);
    fa_df fa9 ((a[3]&b[2]),(a[2]&b[3]),w6,w9,w15);
    
    fa_df fa10 (w14,w7,1'b0,w16,p[4]);
    fa_df fa11 (w15,w8,w16,w17,p[5]);
    fa_df fa12 ((a[3]&b[3]),w9,w17,p[7],p[6]);
    
endmodule
