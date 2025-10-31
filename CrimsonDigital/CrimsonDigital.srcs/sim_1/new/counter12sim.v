`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2025 05:52:11 PM
// Design Name: 
// Module Name: counter12sim
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


module counter12sim(

    );
    
    reg clk;
    reg reset_n;
    wire out;
    
    counter12 dut (
    .clk(clk),
    .reset_n(reset_n),
    .out(out)
    );
    
    initial begin
    forever #5 clk = ~clk;
    end
    
    
    initial begin
    clk = 0;
    reset_n = 0;
    #10;
    reset_n = 1;
    
    
    
    end
    
endmodule
