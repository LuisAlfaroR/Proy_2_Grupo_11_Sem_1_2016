`timescale 1ns / 1ps

module Contador_0_12(
    input clk,
	 input EN,
    input up,
    input down,
    input rst,
    output reg [7:0] out
    );

always@(posedge clk) begin
	if(rst)begin
		out<=8'd1; end
	else if(EN) begin
	if(up & down==0 & out!=8'd12)begin
		out<=out+8'd1; end
	else if(down & up==0 & out!=8'd1)begin
		out<=out-8'd1; end
	else if(down & up==0 & out==8'd1)begin
		out<=8'd12; end
	else if(up & down==0 & out==8'd12)begin
		out<=8'd1; end
	else if(up &down)begin
		out<=8'b11111111;end
	end
	end
	 
endmodule
