`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2022 08:02:10 PM
// Design Name: 
// Module Name: Add
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


module Add(
    input A,
    input B,
    input Cin,
    output Cout,
    output S
    );
    
    assign S =(A^B)^Cin;
    assign Cout = ((A^B) & Cin) | ( (~(A^B)) & B );
    
endmodule
