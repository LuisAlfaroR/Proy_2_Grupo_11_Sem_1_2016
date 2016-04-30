`timescale 1ns / 1ps

module Contador_0_23_2(
    input clk,
	 input EN,
    input up,
    input down,
    input rst,
    output reg [4:0] out
    );


always@(posedge clk) begin

	if(rst)begin
		out<=0; end
	else if(EN) begin
	if(up & down==0 & out!=5'd23)begin
		out<=out+5'd1; end
	else if(down & up==0 & out!=5'd0)begin
		out<=out-5'd1; end
	else if(down & up==0 & out==5'd0)begin
		out<=5'd23; end
	else if(up & down==0 & out==5'd23)begin
		out<=5'd0; end
	end
	end
endmodule
