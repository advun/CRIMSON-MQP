`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2025 07:58:57 PM
// Design Name: 
// Module Name: adc_controlSIM
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


module adc_controlSIM(

    );

    reg clk;
    reg [1:0] ADCstate;
    reg reset_n;
    wire [7:0] ADCctrl;
    wire start;
    
    adc_control dut (
    .clk(clk),
    .ADCstate(ADCstate),
    .reset_n(reset_n),
    .ADCctrl(ADCctrl),
    .start(start)
    );
    
     initial begin
    forever #5 clk = ~clk;
    end
    
    
    initial begin
    clk = 0;
    reset_n = 0;
    ADCstate = 2'b00;
    
    #20;
    reset_n = 1;
    
    //issue: adc_control regs sycnchronously reset with start (which also resets with reset_n).  thus, you can't intitialize adc_control regs ever
    
    end
    
    endmodule