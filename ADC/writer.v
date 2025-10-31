`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2025 04:16:01 PM
// Design Name: 
// Module Name: writer
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


module writer(
    input clk,
    input reset_n,
    input [7:0] ADCctrl,  //which ADC is being used
    input [9:0] D,  //bits from SAR ADC
    input [9:0] bitctrl, //which bit 
    output [79:0] out //ADC0 = 0-9, ADC1 = 10-19, etc
    );
    
    wire correct_bit;
    wire [7:0] ADCenable;
    
    Mux10to1 bitselect (
    .bit(D),
    .bitctrl(bitctrl),
    .out(correct_bit)
    );
 
    registers dut (
    .clk(clk),
    .reset_n(reset_n),
    .bit(correct_bit),
    .ADC(ADCctrl),
    .out(out)   
    );
    
endmodule
