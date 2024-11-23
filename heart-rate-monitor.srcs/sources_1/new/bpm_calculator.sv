`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2024 12:39:17 AM
// Design Name: 
// Module Name: bpm_calculator
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


module bpm_calculator (
    input  wire clk,
    input  wire reset,
    input  wire heartbeat_detected,
    output reg [7:0] bpm
);
    parameter CLK_FREQ = 100_000_000; // 100 MHz
    reg [31:0] beat_interval;
    reg [31:0] counter;
    reg        beat_flag;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            bpm          <= 8'd0;
            beat_interval <= 32'd0;
            counter       <= 32'd0;
            beat_flag     <= 1'b0;
        end else begin
            counter <= counter + 1;

            if (heartbeat_detected && !beat_flag) begin
                beat_flag <= 1'b1;
                beat_interval <= counter;
                counter <= 32'd0;
            end else if (!heartbeat_detected) begin
                beat_flag <= 1'b0;
            end

            if (beat_interval != 0) begin
                bpm <= (CLK_FREQ * 60) / beat_interval;
            end
        end
    end
endmodule

