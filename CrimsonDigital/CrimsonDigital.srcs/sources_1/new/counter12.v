`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2025 03:00:05 PM
// Design Name: 
// Module Name: 12counter
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


module counter12(
    input clk,
    input reset_n,
    output out
    );
    
    wire q0, q1, q2, q3;
    wire reset;

    // resets at 1100 (12)
    assign reset = q3 & q2 & ~q1 & ~q0;

    wire d0, d1, d2, d3;

    assign d0 = (~q0) & ~reset;
    assign d1 = (q1 ^ q0) & ~reset;
    assign d2 = (q2 ^ (q1 & q0)) & ~reset;
    assign d3 = (q3 ^ (q2 & q1 & q0)) & ~reset;

    // Instantiate D flip-flops (active-low asynchronous reset)
    flipflop f0(.clk(clk), .reset_n(reset_n), .d(d0), .q(q0));
    flipflop f1(.clk(clk), .reset_n(reset_n), .d(d1), .q(q1));
    flipflop f2(.clk(clk), .reset_n(reset_n), .d(d2), .q(q2));
    flipflop f3(.clk(clk), .reset_n(reset_n), .d(d3), .q(q3));

    assign out = q3 & ~q2 & q1 & q0; //output goes high at 11
    
    
endmodule
