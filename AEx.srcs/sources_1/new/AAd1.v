`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2022 07:49:35 PM
// Design Name: 
// Module Name: AAd1
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


module AAd1(
    input Cin,
    input Bm2,
    input Bm1,
    input Am2,
    input Am1,
    output Sm2,
    output Sm1
    );
    wire Pm2,Pm1,Gm2;
    assign Pm2= Bm2^Am2;
    assign Pm1= Bm1^Am1;
    assign Gm2= Bm2 & Am2;
    assign Sm2 = (Pm2^Cin)|(Pm1&Cin);
    assign Sm1 = (Pm1^Gm2)|(Pm2&Cin); 
    
endmodule
