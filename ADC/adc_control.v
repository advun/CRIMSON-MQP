`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: WPI
// Engineer: advun
// 
// Create Date: 10/31/2025 02:14:51 PM
// Module Name: adc_control
// Project Name: CRIMSON
// Description: 
// Every 12 clock cycles, send a start pulse to the SAR ADC 
// Every 12 clock cycles, switch which ADC is being read to
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module adc_control(
    input clk,
    input [2:0] ADCstate, //decided by overarching state machine
    input reset_n,
    output [7:0] ADCctrl,
    output start
    );
    
    //counter for 12 clock adc start
    counter12 test (
    .clk(clk),
    .reset_n(reset_n),
    .out(start)
    );
    
    
    
    
    
    
endmodule
