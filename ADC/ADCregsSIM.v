`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2025 07:22:57 PM
// Design Name: 
// Module Name: ADCregsSIM
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


module ADCregsSIM(

    );
    
    reg in;
    reg reset_n;
    reg enable;
    reg clk;
    wire [9:0] out;
    
    ADCregs r1 (
    .in(in),
    .reset_n(reset_n),
    .enable(enable),
    .clk(clk),
    .out(out)
    );
    
    initial begin
    forever #5 clk = ~clk;
    end
    
    initial begin
    in = 0;
    clk = 0;
    enable = 0;
    reset_n = 0;
    
    #20;
    
    reset_n = 1;
    
    #10;
    
    in = 1;
    #100;
    
    $finish;
    
    end
    
endmodule
