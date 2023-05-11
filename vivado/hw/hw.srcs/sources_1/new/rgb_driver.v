`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2023 04:33:51 PM
// Design Name: 
// Module Name: rgb_driver
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


module rgb_driver(
	input clk,
    output r,
    output g,
    output b
    );

reg [2:0] ctr = 3'b0;
always @(posedge clk) begin
	ctr <= ctr + 1;
end

wire led_on = ctr == 3'b000;

assign r = led_on & 1'b1;
assign g = led_on & 1'b1;
assign b = led_on & 1'b0;

endmodule
