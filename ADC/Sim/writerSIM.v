`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2025 08:12:56 PM
// Design Name: 
// Module Name: writerSIM
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


module writerSIM(

    );
    
    reg clk;
    reg rst_n;
    reg [7:0] ADC;
    reg [9:0] D;
    reg [9:0] bitctrl;
    wire [79:0] out;
    
    
    writer dut (
    .clk(clk),
    .reset_n(rst_n),
    .ADCctrl(ADC),
    .D(D),
    .bitctrl(bitctrl),
    .out(out)
    );
    
    initial begin
    forever #5 clk = ~clk;
    end
    
    initial begin
    clk = 0;
    ADC = 0;
    D = 0;
    bitctrl = 0;
    rst_n = 0;
    
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
    
    end
    
endmodule
