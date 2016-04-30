`timescale 1ns / 1ps

module Contador_0_6(
    input clk,
	 input EN,
    input up,
    input down,
    input rst,
	 input Ld,
    output reg [3:0] out
    );

always@(posedge clk) begin

	if(rst)begin
		out<=0; end
	else if(EN) begin
	if(Ld) begin
	 out<=4'd6; end
	else if(up & down==0 & out!=4'd9)begin
		out<=out+4'd1; end
	else if(down & up==0 & out!=4'd0)begin
		out<=out-4'd1; end
	/*else if(down & up==0 & out==4'd0)begin
		out<=4'd9; end
	else if(up & down==0 & out==4'd9)begin
		out<=4'd0; end*/
	end
	end
endmodule
