`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2019 01:53:03
// Design Name: 
// Module Name: mult1
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



module mult1(
    input [15:0] a,
    input [15:0] b,
    input [15:0] c,
    input [15:0] d,
    output [39:0] s
    );
    wire [31:0]m,w1,w2,w3,w4,w5,w6,w7,w8,w9;
    assign s[0]=a[0];
    assign w1=a[1];
    assign s[1]=w1;
    assign w2=a[2];
    assign s[2]=w2;
    assign w3=a[3];
    assign s[3]=w3;
    assign w4=a[4];
    
    assign s[4]=w4;
    assign w5=a[5];
    assign s[5]=w5;
    assign w6=a[6];
    assign s[6]=w6;
    assign w7=a[7];
    assign s[7]=w7;
    
    
    halfadder h1(a[8],b[0],s[8],m[0]);
    fulladder f1(a[9],b[1],m[0],s[9],m[1]);
    fulladder f2(a[10],b[2],m[1],s[10],m[2]);
    fulladder f3(a[11],b[3],m[2],s[11],m[3]);
    fulladder f4(a[12],b[4],m[3],s[12],m[4]);
    fulladder f5(a[13],b[5],m[4],s[13],m[5]);
    fulladder f6(a[14],b[6],m[5],s[14],m[6]);
    fulladder f7(a[15],b[7],m[6],s[15],m[7]);
    
    fulladder f8(b[8],c[0],m[7],s[16],m[8]);
    fulladder f9(b[9],c[1],m[8],s[17],m[9]);
    fulladder f10(b[10],c[2],m[9],s[18],m[10]);
    fulladder f11(b[11],c[3],m[10],s[19],m[11]);
    fulladder f12(b[12],c[4],m[11],s[20],m[12]);
    fulladder f13(b[13],c[5],m[12],s[21],m[13]);
    fulladder f14(b[14],c[6],m[13],s[22],m[14]);
    fulladder f15(b[15],c[7],m[14],s[23],m[15]);
    
    fulladder f16(c[8],d[0],m[15],s[24],m[16]);
    fulladder f17(c[9],d[1],m[16],s[25],m[17]);
    fulladder f18(c[10],d[2],m[17],s[26],m[18]);
    fulladder f19(c[11],d[3],m[18],s[27],m[19]);
    fulladder f20(c[12],d[4],m[19],s[28],m[20]);
    fulladder f21(c[13],d[5],m[20],s[29],m[21]);
    fulladder f22(c[14],d[6],m[21],s[30],m[22]);
    fulladder f23(c[15],d[7],m[22],s[31],m[23]);
    
    halfadder h2(d[8],m[23],s[32],m[24]);
    halfadder h3(d[9],m[24],s[33],m[25]);
    halfadder h4(d[10],m[25],s[34],m[26]);
    halfadder h5(d[11],m[26],s[35],m[27]);
    halfadder h6(d[12],m[27],s[36],m[28]);
    halfadder h7(d[13],m[28],s[37],m[29]);
    halfadder h8(d[14],m[29],s[38],m[30]);
    halfadder h9(d[15],m[30],s[39],m[31]);
    
    
    
    
    
    
    
    
    
endmodule
