`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2025 05:42:36 PM
// Design Name: 
// Module Name: Dec1to8
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


module Dec1to10(
    input [9:0] bitctrl,
    input in,
    output [9:0] out
    );
    
    assign out[0] = bitctrl[0] & in;
    assign out[1] = bitctrl[1] & in;
    assign out[2] = bitctrl[2] & in;
    assign out[3] = bitctrl[3] & in;
    assign out[4] = bitctrl[4] & in;
    assign out[5] = bitctrl[5] & in;
    assign out[6] = bitctrl[6] & in;
    assign out[7] = bitctrl[7] & in;
    assign out[8] = bitctrl[8] & in;
    assign out[9] = bitctrl[9] & in;
    
endmodule
