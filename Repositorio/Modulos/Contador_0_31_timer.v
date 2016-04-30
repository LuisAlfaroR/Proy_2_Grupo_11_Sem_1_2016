`timescale 1ns / 1ps

module Contador_0_31_timer(
    input clk,
	 input EN,
    input up,
    input down,
    input rst,
    output reg [7:0] out
    );

always@(posedge clk) begin

	if(rst)begin
		out<=0; end
	else if(EN) begin
	if(up & down==0 & out!=8'd59)begin
		out<=out+8'd1; end
	else if(down & up==0 & out!=8'd0)begin
		out<=out-8'd1; end
	else if(down & up==0 & out==8'd0)begin
		out<=8'd59; end
	else if(up & down==0 & out==8'd59)begin
		out<=8'd0; end
	end
end
endmodule
