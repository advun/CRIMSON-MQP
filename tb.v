`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2025 06:17:42 AM
// Design Name: 
// Module Name: tb
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


module tb(

    );
    reg clk;
    reg solar_on;
    reg always_on;
    reg low_power;
    reg adc_enable;
    reg reset_n;
    
    wire [7:0] enable;
    wire clockspeed;
    
    
    FSM uut (
        .clk(clk),
        .solar_on(solar_on),
        .always_on(always_on),
        .low_power(low_power),
        .adc_enable(adc_enable),
        .reset_n(reset_n),
        .enable(enable),
        .clockspeed(clockspeed)
    );
    
    initial clk = 0;
    always #5 clk = ~clk;
    
    initial begin
        // Initialize inputs
        solar_on = 0;
        always_on = 0;
        low_power = 0;
        adc_enable = 0;
        reset_n = 0;

        // Apply reset
        #20;
        reset_n = 1;

        // Normal operation
        #20;
        solar_on = 1;
        adc_enable = 1;
        #10;
        always_on = 1; //check if works
        #10;
        
        //Low Power
        low_power = 1;
        #10;
        always_on = 0;
       

        // Sleep
        #20;
        solar_on = 0;

        // Finish simulation
        #100;
        $finish;
    end
    
endmodule
