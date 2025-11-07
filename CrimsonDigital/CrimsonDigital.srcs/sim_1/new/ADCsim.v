`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2025 06:49:27 PM
// Design Name: 
// Module Name: ADCsim
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


module ADCsim(

    );
    reg clk;
    reg reset_n;
    reg [9:0] D;
    reg [9:0] bitctrl;
    reg [1:0] ADCstate;
    wire [79:0] out;
    
    ADC dut ( .clk(clk),
    .reset_n(reset_n),
    .D(D),
    .bitctrl(bitctrl),
    .ADCstate(ADCstate),
    .out (out)
    );
    
    initial begin
    forever #5 clk = ~clk;
    end
    
    initial begin
    clk = 0;
    ADC = 0;
    D = 0;
    bitctrl = 0;
    reset_n = 0;
    
    #10;
    
    D = 10'b1100101011;
    rst_n = 1;
    ADC[1] = 1;
    
    
    bitctrl[9] = 1;
    #10;
    bitctrl = bitctrl >> 1;
    #10;
    bitctrl = bitctrl >> 1;
    #10;
    bitctrl = bitctrl >> 1;
    #10;
    bitctrl = bitctrl >> 1;
    #10;
    bitctrl = bitctrl >> 1;
    #10;
    bitctrl = bitctrl >> 1;
    #10;
    bitctrl = bitctrl >> 1;
    #10;
    bitctrl = bitctrl >> 1;
    #10;
    bitctrl = bitctrl >> 1;
    #10;
    bitctrl = bitctrl >> 1;
    ADC[1] = 0;
    
    
    D = 10'b1100000011;
    ADC[4] = 1;
    bitctrl[9] = 1;
    #10;
    bitctrl = bitctrl >> 1;
    #10;
    bitctrl = bitctrl >> 1;
    #10;
    bitctrl = bitctrl >> 1;
    #10;
    bitctrl = bitctrl >> 1;
    #10;
    bitctrl = bitctrl >> 1;
    #10;
    bitctrl = bitctrl >> 1;
    #10;
    bitctrl = bitctrl >> 1;
    #10;
    bitctrl = bitctrl >> 1;
    #10;
    bitctrl = bitctrl >> 1;
    #10;
    bitctrl = bitctrl >> 1;
    ADC[1] = 0;
    
    $finish;
    
    
    
endmodule
