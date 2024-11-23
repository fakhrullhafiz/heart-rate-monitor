`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2024 12:39:17 AM
// Design Name: 
// Module Name: display_driver
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


module display_driver (
    input  wire        clk,
    input  wire        reset,
    input  wire [7:0]  bpm,
    output reg  [6:0]  seg,
    output reg  [3:0]  an
);
    // Internal variables
    reg [3:0] digit;
    reg [1:0] digit_select;
    reg [19:0] refresh_counter;

    // Seven-segment encoding
    function [6:0] encode_digit(input [3:0] num);
        case (num)
            4'd0: encode_digit = 7'b100_0000;
            4'd1: encode_digit = 7'b111_1001;
            4'd2: encode_digit = 7'b010_0100;
            4'd3: encode_digit = 7'b011_0000;
            4'd4: encode_digit = 7'b001_1001;
            4'd5: encode_digit = 7'b001_0010;
            4'd6: encode_digit = 7'b000_0010;
            4'd7: encode_digit = 7'b111_1000;
            4'd8: encode_digit = 7'b000_0000;
            4'd9: encode_digit = 7'b001_0000;
            default: encode_digit = 7'b111_1111; // Blank
        endcase
    endfunction

    // Refresh rate control
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            refresh_counter <= 20'd0;
            digit_select    <= 2'd0;
        end else begin
            refresh_counter <= refresh_counter + 1;
            if (refresh_counter == 20'd999_999) begin
                refresh_counter <= 20'd0;
                digit_select <= digit_select + 1;
            end
        end
    end

    // Multiplexing digits
    always @(*) begin
        case (digit_select)
            2'd0: begin
                an = 4'b1110;
                digit = bpm % 10;
            end
            2'd1: begin
                an = 4'b1101;
                digit = (bpm / 10) % 10;
            end
            2'd2: begin
                an = 4'b1011;
                digit = (bpm / 100) % 10;
            end
            default: begin
                an = 4'b0111;
                digit = 4'd0;
            end
        endcase
        seg = encode_digit(digit);
    end
endmodule

