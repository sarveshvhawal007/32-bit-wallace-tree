`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2019 02:01:51
// Design Name: 
// Module Name: tb
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


module tb(

    );
    
    reg[31:0]a;
    reg[31:0]b;
    wire[63:0]s;
    
    create c1(.a(a),.b(b),.s(s));
    
    initial begin
    b=32'b000000000000000000000000000000001;
    a=32'b000000000000000000000000000000001;
    
    end
    
endmodule
