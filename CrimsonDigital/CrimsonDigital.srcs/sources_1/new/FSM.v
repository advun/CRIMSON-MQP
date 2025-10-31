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


module FSM(
    input wire clk,
    input wire reset_n,
    input wire [6:0] blocks,
    input wire [2:0] selector,
    output wire [6:0] control
    );

    wire [2:0] current_state;
    wire [2:0] next_state;

    next_state t1 (
        .blocks(blocks),
        .selector(selector),
        .current_state(current_state),
        .next_state(next_state)
    );

    current_state t2 (
        .clk(clk),
        .reset_n(reset_n),
        .next_state(next_state),
        .current_state(current_state)
    );

    output_logic t3 (
        .current_state(current_state),
        .selector(selector),
        .control(control)
    );

endmodule