`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2025 04:00:35 AM
// Design Name: 
// Module Name: watchdog
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


module watchdog #(
parameter LENGTH = 5, //number of bits in counter
parameter COUNT = 20,  //maximum value to count to. check that this is below length 
parameter THRESHOLD = COUNT - 10 //minimum value to count to. always below count
)(
    input wire clk,
    input wire kick,
    input wire reset_n, //active low
    output reg timeout  //active high
    );
    
    reg [LENGTH-1:0] counter;
    
    always @(posedge clk) begin
        if (!reset_n) begin
            counter <= 1'b0;
            timeout <= 1'b0;
        end
    
        else if (kick) begin
           if (counter < THRESHOLD) begin //window section
                timeout <= 1;
            end
            
            else begin
                counter <= 1'b0;
                timeout <= 1'b0;
           end 
        end
        
        else if (!timeout) begin
            counter <= counter + 1'b1;
            if (counter == COUNT) begin  //reached max value
                timeout <= 1;
            end
        
        end
    end 
    
endmodule
