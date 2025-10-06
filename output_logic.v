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


module output_logic(
    input wire [2:0] current_state,
    input wire adc_enable,
    output wire [7:0] enable,
    output wire clockspeed //slow down clocks when low
    );
    wire state0 = ~|current_state; //reset, 00
    wire state1or2 = (current_state[0] ^ current_state[1]); //normal or low power operation, 01 or 10
    
    wire state1 = state1or2 & ~current_state[1]; //normal operation 01
    wire state2 = state1or2 & ~current_state[0]; //low power operation 10
    
    
    //enable blocks
    assign enable[0] = state1or2 & adc_enable; //enable ADC
    assign enable[1] = state1or2; //enable DAC for boost converter + boost converter
    assign enable[2] = 1; //enable DAC for System LDO + System LDO
    assign enable[3] = state1or2; //enable DAC for Analog LDO + Analog LDO
    assign enable[4] = 1; //enable DAC for Digital LDO + Digital LDO
    assign enable[5] = state1or2; //Enable GM-C Filter
    assign enable[6] = state1or2; //Enable AEF Filter
    assign enable[7] = state1or2; //Enable Battery Charger
    assign enable[8] = state0 | state1or2;
    
    //clock changing
    assign clockspeed = ~state2;  //low during state 2, to slow down clocks
    
    
endmodule
