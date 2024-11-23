`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2024 12:39:17 AM
// Design Name: 
// Module Name: adc_interface
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


module adc_interface (
    input  wire        clk,
    input  wire        reset,
    // ADC input signals
    input  wire [11:0] adc_data_in,
    // Processed output
    output reg  [11:0] adc_data_out
);
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            adc_data_out <= 12'd0;
        end else begin
            adc_data_out <= adc_data_in;
        end
    end
endmodule

