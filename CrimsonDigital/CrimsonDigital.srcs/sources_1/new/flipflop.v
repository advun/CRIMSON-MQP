`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2025 05:13:25 AM
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


module flipflop(
    input wire clk,
    input wire reset_n,
    input wire d,
    output reg q
    );
    
    always @(posedge clk) begin
        if (!reset_n)
            q <= 1'b0;
        else
            q <= d;
            
    end
endmodule