`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2024 12:39:17 AM
// Design Name: 
// Module Name: heart_rate_monitor
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


module heart_rate_monitor (
    input  wire        clk,
    input  wire        reset,
    input  wire [11:0] adc_data_in,
    output wire [6:0]  seg,
    output wire [3:0]  an
);
    wire [11:0] adc_data;
    wire        heartbeat_detected;
    wire [7:0]  bpm;

    adc_interface u_adc_interface (
        .clk(clk),
        .reset(reset),
        .adc_data_in(adc_data_in),
        .adc_data_out(adc_data)
    );

    signal_processor u_signal_processor (
        .clk(clk),
        .reset(reset),
        .adc_data(adc_data),
        .heartbeat_detected(heartbeat_detected)
    );

    bpm_calculator u_bpm_calculator (
        .clk(clk),
        .reset(reset),
        .heartbeat_detected(heartbeat_detected),
        .bpm(bpm)
    );

    display_driver u_display_driver (
        .clk(clk),
        .reset(reset),
        .bpm(bpm),
        .seg(seg),
        .an(an)
    );
endmodule

