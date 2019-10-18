`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2019 01:53:03
// Design Name: 
// Module Name: mult2
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


module mult2(
    input [39:0] a,
    input [39:0] b,
    input [39:0] c,
    input [39:0] d,
    output [63:0] s
    );
    wire w1,w2,w3,w4,w5,w6,w7,w8;
    
        wire[39:0]s1;
    wire[39:0]s2;
    wire[39:0]s3;
    wire[39:0]s4;
    wire[39:0]s5;
    wire[39:0]s6;
    
    wire[39:0]r1;
    wire[39:0]r2;
    wire[39:0]r3;
    wire[39:0]r4;
    wire[39:0]r5;
    wire[39:0]r6;
    
    
    
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
    
    

    
    assign r1=a>>8;
    
    bit b1(r1,b,s1);
     wire w9,w10,w11,w12,w13,w14,w15;
    assign s[8]=s1[0];
    assign w9=s[1];
    assign s[9]=w9;
    assign w10=s1[2];
    assign s[10]=w10;
        assign w11=s1[3];
    assign s[11]=w11;
        assign w12=s1[4];
    assign s[12]=w12;
        assign w13=s1[5];
    assign s[13]=w13;
        assign w14=s1[6];
    assign s[14]=w14;
        assign w15=s1[7];
    assign s[15]=w15;
    
    
    assign r2=s1>>8;
    
    bit b2(r2,c,s2);
    
    
         wire w17,w18,w19,w20,w21,w22,w23;
    assign s[16]=s2[0];
    assign w17=s[1];
    assign s[17]=w17;
    assign w18=s2[2];
    assign s[18]=w18;
        assign w19=s2[3];
    assign s[19]=w19;
        assign w20=s2[4];
    assign s[20]=w20;
        assign w21=s2[5];
    assign s[21]=w21;
        assign w22=s2[6];
    assign s[22]=w22;
        assign w23=s2[7];
    assign s[23]=w23;
    
    
    assign r3=s2>>8;
    
    bit b3(r3,d,s3);
    
    
    genvar i;
    generate
    for(i=24;i<64;i=i+1)
    begin
    assign s[i]=s3[i-24];
    end
    endgenerate
    
    
    /*
    
    assign s[24]=s3[0];
    assign s[26]=s3[1];
    assign s[27]=s3[1];
    assign s[28]=s3[1];
    assign s[29]=s3[1];
    assign s[30]=s3[1];
    assign s[31]=s3[1];
    assign s[32]=s3[1];
    assign s[33]=s3[1];
    assign s[34]=s3[1];
    assign s[35]=s3[1];
    assign s[25]=s3[1];
    assign s[25]=s3[1];
    assign s[25]=s3[1];
    assign s[25]=s3[1];
    assign s[25]=s3[1];
    assign s[25]=s3[1];
    assign s[25]=s3[1];
    assign s[25]=s3[1];
    assign s[25]=s3[1];
    assign s[25]=s3[1];
    assign s[25]=s3[1];
    assign s[25]=s3[1];
    assign s[25]=s3[1];
    assign s[25]=s3[1];
    assign s[25]=s3[1];
    assign s[25]=s3[1];
    assign s[25]=s3[1];
    assign s[25]=s3[1];
    assign s[25]=s3[1];
    assign s[25]=s3[1];
    assign s[25]=s3[1];
    assign s[25]=s3[1];
    
    */
    
    
    
endmodule