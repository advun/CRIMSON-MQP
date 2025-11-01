`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2025 05:25:19 PM
// Design Name: 
// Module Name: Mux10to1
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


module Mux10to1(
    input [9:0] bit,
    input [9:0] bitctrl,
    output out
    );
    
    assign b0 = bit[0] & bitctrl[0];
    assign b1 = bit[1] & bitctrl[1];
    assign b2 = bit[2] & bitctrl[2];
    assign b3 = bit[3] & bitctrl[3];
    assign b4 = bit[4] & bitctrl[4];
    assign b5 = bit[5] & bitctrl[5];
    assign b6 = bit[6] & bitctrl[6];
    assign b7 = bit[7] & bitctrl[7];
    assign b8 = bit[8] & bitctrl[8];
    assign b9 = bit[9] & bitctrl[9];
    
    assign out = b0|b1|b2|b3|b4|b5|b6|b7|b8|b9;
    
endmodule