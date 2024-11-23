`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2024 12:39:17 AM
// Design Name: 
// Module Name: signal_processor
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


module signal_processor (
    input  wire        clk,
    input  wire        reset,
    input  wire [11:0] adc_data,
    output reg         heartbeat_detected
);
    parameter THRESHOLD = 12'd2000; // Adjust based on sensor output
    reg prev_data_above_threshold;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            heartbeat_detected       <= 1'b0;
            prev_data_above_threshold <= 1'b0;
        end else begin
            if (adc_data > THRESHOLD && !prev_data_above_threshold) begin
                heartbeat_detected <= 1'b1;
            end else begin
                heartbeat_detected <= 1'b0;
            end
            prev_data_above_threshold <= (adc_data > THRESHOLD);
        end
    end
endmodule

