`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2019 01:53:03
// Design Name: 
// Module Name: wlce
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



module wlce(
    input [7:0] a,
    input [7:0] b,
    output [15:0] s
    );
    
    wire [63:0]p;
    
    genvar i;
    genvar j;
    generate
    for(i=0;i<8;i=i+1)
    begin
    for(j=0;j<8;j=j+1)
    begin
    assign p[8*i+j]=b[i] & a[j];
    end
    end
    endgenerate
    
    //level 1
    wire[9:0]s0;
    wire[7:0]c0;
    wire[9:0]s1;
    wire[7:0]c1;
    
    
    
    assign s0[9]=p[23];
    assign s0[0]=p[0];

    
    halfadder h1(p[1],p[8],s0[1],c0[0]);
    halfadder h2(p[15],p[22],s0[8],c0[7]);
    
    genvar k;
    generate
    for(k=0;k<6;k=k+1)
    begin
    fulladder f1(p[k+2],p[k+9],p[k+16],s0[k+2],c0[k+1]);
    fulladder f2(p[k+26],p[k+33],p[k+40],s1[k+2],c1[k+1]);
    end
    endgenerate
    
    assign s1[0]=p[24];
    assign s1[9]=p[47];
    halfadder h3(p[25],p[32],s1[1],c1[0]);
    halfadder h4(p[39],p[46],s1[8],c1[7]);
    
    //level 1 ends
    //level 2
    wire [10:0]s3;
    wire [9:0]c3;
    wire [9:0]s4;
    wire [7:0]c4;
    
    
    
    
    
    assign s3[0]=s0[0];
      assign s3[1]= s0[1];

    assign s3[10]=s1[7];
    assign c3[8]=s1[8];
    wire w1;
    assign w1=s1[9];
    assign c3[9]=w1;
    
    
    
    halfadder h5(s0[2],c0[0],s3[2],c3[0]);
    
    genvar l;
    generate
    for(l=0;l<7;l=l+1)
    begin
    fulladder f3(s0[l+3],c0[l+1],s1[l],s3[l+3],c3[l+1]);
    end
    endgenerate
    
       
    
    
    
    assign s4[0]=c1[0];
    assign s4[9]=p[63];
    halfadder h6(c1[1],p[48],s4[1],c4[0]);
    halfadder h7(p[55],p[62],s4[8],c4[7]);
    
    genvar u;
    generate
    for(u=0;u<6;u=u+1)
    begin
    fulladder f4(c1[u+2],p[u+49],p[u+56],s4[u+2],c4[u+1]);
    end
    endgenerate
  
    
    
    //level 2 ends
    //level 3
    
    wire [13:0]s5;
    wire [10:0]c5;
    
    assign s5[0]=s3[0];

    assign s5[13]=s4[8];
    assign c5[10]=s4[9];
    
    halfadder h8(s3[3],c3[0],s5[3],c5[0]);
    halfadder h9(s3[4],c3[1],s5[4],c5[1]);
    halfadder h10(c3[8],s4[6],s5[11],c5[8]);
    halfadder h11(c3[9],s4[7],s5[12],c5[9]);
    
    genvar d;
    generate
    for(d=0;d<6;d=d+1)
    begin
    fulladder f5(s3[5+d],c3[2+d],s4[d],s5[5+d],c5[d+2]);
    end
    endgenerate
        assign s5[1]=s3[1];

    
    
    //level 3 ends
    
    //level 4
    wire [14:0]s6;
    wire [10:0]c6;
    
    assign s6[0]=s5[0];
    wire w2,w3,w4;
    assign s6[1]=s5[1];
    assign s6[2]=s5[2];
    assign s6[3]=s5[3];
    
    halfadder h12(s5[4],c5[0],s6[4],c6[0]);
    halfadder h13(s5[5],c5[1],s6[5],c6[1]);
    halfadder h14(s5[6],c5[2],s6[6],c6[2]);
    halfadder h15(c5[10],c4[7],s6[14],c6[10]);
    
    genvar f;
    generate
    for(f=0;f<7;f=f+1)
    begin
    fulladder f6(s5[f+7],c5[f+3],c4[f],s6[f+7],c6[f+3]); 
    end
    endgenerate
        assign s5[2]=s3[2];
    
   
    // level 4 ends
    
    //level 5
        wire [9:0]c7;
        assign s[0]=s6[0];
        assign s[1]=s6[1];
        assign s[2]=s6[2];
        assign s[3]=s6[3];
        assign s[4]=s6[4];
        
        halfadder h16(s6[5],c6[0],s[5],c7[0]);
        
        genvar z;
        generate
        for(z=0;z<9;z=z+1)
        begin
        fulladder f7(s6[6+z],c6[1+z],c7[z],s[z+6],c7[z+1]);
        end
        endgenerate
        
        assign s[15]=c7[9];
        

    
    //level 5 ends
    
endmodule
