`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2025 06:50:15 PM
// Design Name: 
// Module Name: flipflop
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


module eflipflop(
    input in,
    input reset_n,
    input enable,
    input clk,
    output reg out
    );
    
    always @ (posedge clk) begin
    
        if (!reset_n) begin
            out = 0;
        end
    
        else if (enable) begin
            out = in;
        end
    
        end
endmodule