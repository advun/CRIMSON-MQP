`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2025 04:52:32 AM
// Design Name: 
// Module Name: next_state
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


module current_state(
    input wire clk,
    input wire reset_n,
    input wire [2:0] next_state,
    output wire [2:0] current_state
    );
    
    flipflop f0(
    .clk(clk), 
    .reset_n(reset_n), 
    .d(next_state[0]),
    .q(current_state[0])
    );
    
    flipflop f1(
    .clk(clk), 
    .reset_n(reset_n), 
    .d(next_state[1]),
    .q(current_state[1])
    );
    
    flipflop f2(
    .clk(clk), 
    .reset_n(reset_n), 
    .d(next_state[2]),
    .q(current_state[2])
    );
    
    
    
endmodule