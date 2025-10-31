`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2025 06:49:58 PM
// Design Name: 
// Module Name: ADCregs
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


module ADCregs(
    input in,
    input reset_n,
    input enable,
    input clk,
    output [9:0] out
    );
    
    eflipflop r0 (
    .in(in),
    .reset_n(reset_n),
    .enable(enable),
    .clk(clk),
    .out(out[0])
    );
    
    eflipflop r1 (
    .in(out[0]),
    .reset_n(reset_n),
    .enable(enable),
    .clk(clk),
    .out(out[1])
    );
    
    eflipflop r2 (
    .in(out[1]),
    .reset_n(reset_n),
    .enable(enable),
    .clk(clk),
    .out(out[2])
    );
    
    eflipflop r3 (
    .in(out[2]),
    .reset_n(reset_n),
    .enable(enable),
    .clk(clk),
    .out(out[3])
    );
    
    eflipflop r4 (
    .in(out[3]),
    .reset_n(reset_n),
    .enable(enable),
    .clk(clk),
    .out(out[4])
    );
    
    eflipflop r5 (
    .in(out[4]),
    .reset_n(reset_n),
    .enable(enable),
    .clk(clk),
    .out(out[5])
    );
    
    eflipflop r6 (
    .in(out[5]),
    .reset_n(reset_n),
    .enable(enable),
    .clk(clk),
    .out(out[6])
    );
    
    eflipflop r7 (
    .in(out[6]),
    .reset_n(reset_n),
    .enable(enable),
    .clk(clk),
    .out(out[7])
    );
    
    eflipflop r8 (
    .in(out[7]),
    .reset_n(reset_n),
    .enable(enable),
    .clk(clk),
    .out(out[8])
    );
    
    eflipflop r9 (
    .in(out[8]),
    .reset_n(reset_n),
    .enable(enable),
    .clk(clk),
    .out(out[9])
    );
    
endmodule