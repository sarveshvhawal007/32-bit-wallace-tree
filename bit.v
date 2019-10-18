`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2019 01:53:03
// Design Name: 
// Module Name: bit
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


module bit(
    input [39:0] a,
    input [39:0] b,
    output [39:0] s
    );
    wire [39:0]c;
    halfadder h1(a[0],b[0],s[0],c[0]);
    
    
    genvar i;
    generate
    for(i=1;i<40;i=i+1)
    begin
    fulladder f1(a[i],b[i],c[i-1],s[i],c[i]);
    end
    endgenerate
endmodule
