`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2019 01:53:03
// Design Name: 
// Module Name: create
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

module create(
    input [31:0] a,
    input [31:0] b,
    output [63:0] s
    );
    
    wire [15:0]s1;
    wire [15:0]s3;
    wire [15:0]s2;
    wire [15:0]s4;
    
    wire [15:0]s5;
    wire [15:0]s6;
    wire [15:0]s7;
    wire [15:0]s8;
    
    wire [15:0]s9;
    wire [15:0]s10;
    wire [15:0]s11;
    wire [15:0]s12;
    
    wire [15:0]s13;
    wire [15:0]s14;
    wire [15:0]s15;
    wire [15:0]s16;
    
    
    wire [39:0]p1;
    wire [39:0]p2;
    wire [39:0]p3;
    wire [39:0]p4;
    
    
    wlce w1(b[7:0],a[7:0],s1);
    wlce w2(b[7:0],a[15:8],s2);
    wlce w3(b[7:0],a[23:16],s3);
    wlce w4(b[7:0],a[31:24],s4);
    
    mult1 m1(s1,s2,s3,s4,p1);
    
    wlce w5(b[15:8],a[7:0],s5);
    wlce w6(b[15:8],a[15:8],s6);
    wlce w7(b[15:8],a[23:16],s7);
    wlce w8(b[15:8],a[31:24],s8);
    
    mult1 m2(s5,s6,s7,s8,p2);
    
    
    wlce w9(b[23:16],a[7:0],s9);
    wlce w10(b[23:16],a[15:8],s10);
    wlce w11(b[23:16],a[23:16],s11);
    wlce w12(b[23:16],a[31:24],s12);
    
    mult1 m3(s9,s10,s11,s12,p3);
    
    
    
    wlce w13(b[31:24],a[7:0],s13);
    wlce w114(b[31:24],a[15:8],s14);
    wlce w15(b[31:24],a[23:16],s15);
    wlce w116(b[31:24],a[31:24],s16);
    
    mult1 m4(s13,s14,s15,s16,p4);
    
    mult2 m5(p1,p2,p3,p4,s);
    
    
    
    
    
    
   
endmodule
