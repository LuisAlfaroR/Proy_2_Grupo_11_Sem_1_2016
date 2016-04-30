`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:56:23 04/12/2016 
// Design Name: 
// Module Name:    grap_rgb 
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
/*module grap_rgb(
    input wire[9:0] pix_x,
    input wire [9:0] pix_y,
    output reg [2:0] rgb_grap
    );
always @* begin
	if ( pix_x >= 0 && pix_x <= 640 && pix_y >= 0 && pix_y <= 480) 
	 rgb_grap = 3'b010;
	 else
	 rgb_grap = 3'b101;
 end

endmodule
