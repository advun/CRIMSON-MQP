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


module Dec1to8(
    input [7:0] ADC,
    input in,
    output [7:0] out
    );
    
    assign out[0] = ADC[0] & in;
    assign out[1] = ADC[1] & in;
    assign out[2] = ADC[2] & in;
    assign out[3] = ADC[3] & in;
    assign out[4] = ADC[4] & in;
    assign out[5] = ADC[5] & in;
    assign out[6] = ADC[6] & in;
    assign out[7] = ADC[7] & in;
    
endmodule
