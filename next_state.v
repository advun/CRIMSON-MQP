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


module next_state(
    input wire solar_on, //solar voltage is high enough
    input wire always_on, //if high, can't go to sleep mode
    input wire low_power, //if high, low power operation
    input wire reset_n, //active low reset
    input wire [2:0] current_state,
    output wire [2:0] next_state
    );
    //state 00: Reset (reset_n low in any state)
    //state 01: Normal Operation (leave Reset when low_power = 0 and solar_on = 1)
    //state 10: Low Power Operation (leave Reset when low_power = 1 and solar_on = 1)
    //state 11: Sleep Mode (solar_on is low in any state but reset)
    
   assign next_state[0] = (solar_on & ~low_power & reset_n) | (~solar_on & reset_n & ~always_on) ;
   assign next_state[1] = (solar_on & low_power & reset_n) | (~solar_on & reset_n & ~always_on);
   //assign next_state[2] = ;
    
endmodule
