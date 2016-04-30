`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:10:27 04/12/2016 
// Design Name: 
// Module Name:    main 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module main(
		input wire clk, reset,
		//input wire [1:0] btn,
		output wire hsync, vsync,
		output wire [2:0] rgb
    );
	 
	 
	 Ping_Pong_v2 Ping_Pong_v2 (
    .clk(clk), 
    .reset(reset), 
    .hsync(hsync), 
    .vsync(vsync), 
    .rgb(rgb)
    );


endmodule
