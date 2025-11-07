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
    input [1:0] ADCstate, //decided by overarching state machine
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
    
   wire control;
   wire q0, q1, q2;
   wire nq0 = ~q0;
   wire nq1 = ~q1;
   wire nq2 = ~q2;
   
   //depending on ADCstate, programmer can decide at which ADC it resets to 0.  
   assign control = ~(((nq0&q1&nq2)& ~ADCstate[1]& ADCstate[0]) | ((nq0&nq1&q2)& ADCstate[1]& ~ADCstate[0]) | ((nq0&q1&q2)& ADCstate[1]& ADCstate[0]));
   
   assign d0 = (~q0) & control;
   assign d1 = (q1 ^ q0) & control;
   assign d2 = (q2 ^ (q1 & q0)) & control;

   
    flipflop f0(.clk(clk), .reset_n(reset_n), .d(start ? d0 : q0), .q(q0));
    flipflop f1(.clk(clk), .reset_n(reset_n), .d(start ? d1 : q1), .q(q1));
    flipflop f2(.clk(clk), .reset_n(reset_n), .d(start ? d2 : q2), .q(q2));
   
   assign ADCctrl[0] = nq0 & nq1 & nq2;
   assign ADCctrl[1] = q0 & nq1 & nq2;
   assign ADCctrl[2] = nq0 & q1 & nq2;
   assign ADCctrl[3] = q0 & q1 & nq2;
   assign ADCctrl[4] = nq0 & nq1 & q2;
   assign ADCctrl[5] = q0 & nq1 & q2;
   assign ADCctrl[6] = nq0 & q1 & q2;
   assign ADCctrl[7] = q0 & q1 & q2;
    
endmodule