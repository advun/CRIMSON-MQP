`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2025 02:26:39 PM
// Design Name: 
// Module Name: ADC
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


module ADCBlock(
    input clk,
    input reset_n,
    input [2:0] ADCstate,
    output [79:0] out
    );
    
    wire [7:0] ADCctrl;  //which ADC is active
    wire start; //start bit to begin reading
    wire [9:0] D; //bit from SAR ADC
    wire [9:0] bitctrl; //which bit is being read
    
    adc_control ctrl (
    .clk(clk),
    .ADCstate(ADCstate),
    .reset_n(reset_n),
    .ADCctrl(ADCctrl),
    .start(start)
    );
    
    SARADC test (
    .clk(clk),
    .start(start),
    .reset_n(reset_n),
    .D(D),
    .bitctrl(bitctrl)
    );
    
    writer save (
    .clk(clk),
    .reset_n(reset_n),
    .ADCctrl(ADCctrl),
    .D(D),
    .bitctrl(bitctrl),
    .out(out)
    );
    

    
endmodule
