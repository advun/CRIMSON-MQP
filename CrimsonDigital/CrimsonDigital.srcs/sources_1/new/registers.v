`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2025 05:23:45 PM
// Design Name: 
// Module Name: registers
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


module registers(
input clk,
input reset_n,
input bit,
input [7:0] ADC,
output [79:0] out
    );
    
    ADCregs ADC0 (
    .in(bit),
    .reset_n(reset_n),
    .enable(ADC[0]),
    .clk(clk),
    .out(out[9:0])
    );
    
    ADCregs ADC1 (
    .in(bit),
    .reset_n(reset_n),
    .enable(ADC[1]),
    .clk(clk),
    .out(out[19:10])
    );
    
    ADCregs ADC2 (
    .in(bit),
    .reset_n(reset_n),
    .enable(ADC[2]),
    .clk(clk),
    .out(out[29:20])
    );
    
    ADCregs ADC3 (
    .in(bit),
    .reset_n(reset_n),
    .enable(ADC[3]),
    .clk(clk),
    .out(out[39:30])
    );
    
    ADCregs ADC4 (
    .in(bit),
    .reset_n(reset_n),
    .enable(ADC[4]),
    .clk(clk),
    .out(out[49:40])
    );
    
    ADCregs ADC5 (
    .in(bit),
    .reset_n(reset_n),
    .enable(ADC[5]),
    .clk(clk),
    .out(out[59:50])
    );
    
    ADCregs ADC6 (
    .in(bit),
    .reset_n(reset_n),
    .enable(ADC[6]),
    .clk(clk),
    .out(out[69:60])
    );
    
    ADCregs ADC7 (
    .in(bit),
    .reset_n(reset_n),
    .enable(ADC[7]),
    .clk(clk),
    .out(out[79:70])
    );
    
    
    
    
endmodule