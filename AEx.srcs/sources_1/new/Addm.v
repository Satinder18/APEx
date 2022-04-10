`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2022 08:23:08 PM
// Design Name: 
// Module Name: Addm
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


module Addm(
    input A,
    input B,
    input Am1,
    input Am2,
    input Bm1,
    input Bm2,
    output Cout,
    output S
    );
    wire Pm1,Gm1,Gm2,Cmsp;
    assign Pm1= Bm1^Am1;
    assign Gm2= Bm2 & Am2;
    assign Gm1= Bm1 & Am1;
    assign Cmsp = Gm1 | (Pm1&Gm2);
    assign S =(A^B)^Cmsp;
    assign Cout = ((A^B) & Cmsp) | ( (~(A^B)) & B );
    
endmodule
