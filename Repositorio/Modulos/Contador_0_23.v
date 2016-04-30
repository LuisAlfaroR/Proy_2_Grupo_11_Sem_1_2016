`timescale 1ns / 1ps
module Contador_0_23(
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
	if(up & down==0 & out!=8'd23)begin
		out<=out+8'd1; end
	else if(down & up==0 & out!=8'd0)begin
		out<=out-8'd1; end
	else if(down & up==0 & out==8'd0)begin
		out<=8'd23; end
	else if(up & down==0 & out==8'd23)begin
		out<=8'd0; end
	else if(up &down)begin
		out<=8'b11111111;end
	end
end
	

/*reg [4:0] out1;
initial out1=5'b11111;
always@(posedge clk) begin

	if(rst)begin
		out1<=0; end
	else if(EN) begin
	if(up & down==0 & out1!=5'd23)begin
		out1<=out1+5'd1; end
	else if(down & up==0 & out1!=5'd0)begin
		out1<=out1-5'd1; end
	else if(down & up==0 & out1==5'd0)begin
		out1<=5'd23; end
	else if(up & down==0 & out1==5'd23)begin
		out1<=5'd0; end
	end
	out=8'b11111111;
	case(out1) 
    5'd0 : begin out=8'b00000000; end //12 am
	 5'd1 : begin out=8'b00000001; end
	 5'd2 : begin out=8'b00000010; end
	 5'd3 : begin out=8'b00000011; end
	 5'd4 : begin out=8'b00000100; end
	 5'd5 : begin out=8'b00000101; end
	 5'd6 : begin out=8'b00000110; end
	 5'd7 : begin out=8'b00000111; end
	 5'd8 : begin out=8'b00001000; end
	 5'd9 : begin out=8'b00001001; end
	 5'd10 : begin out=8'b00001010; end
	 5'd11 : begin out=8'b00001011; end //11am
	 5'd12 : begin out=8'b00001100; end //12 pm
	 5'd13 : begin out=8'b00001101; end //01 pm
	 5'd14 : begin out=8'b00001110; end
	 5'd15 : begin out=8'b00001111; end
	 5'd16 : begin out=8'b00010000; end
	 5'd17 : begin out=8'b00010001; end
	 5'd18 : begin out=8'b00010010; end
	 5'd19 : begin out=8'b00010011; end
	 5'd20 : begin out=8'b00010100; end
	 5'd21 : begin out=8'b00010101; end
	 5'd22 : begin out=8'b00010110; end
	 5'd23 : begin out=8'b00010111; end
	 5'd24 : begin out=8'b11111111; end
  endcase 
	end*/
endmodule
