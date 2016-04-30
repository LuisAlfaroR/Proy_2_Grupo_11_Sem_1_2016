`timescale 1ns / 1ps

module Registro_12_horas(
	input clk,
	input EN,
   input up,
   input down,
   input rst,
	output reg [7:0] h
    );

reg [4:0] out1;
initial out1=5'b11111;
 always @ (posedge clk)begin
 
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
  h=8'b11111111;
  case(out1) 
    5'd0 : begin h=8'b00010010; end //12 am
	 5'd1 : begin h=8'b00000001; end
	 5'd2 : begin h=8'b00000010; end
	 5'd3 : begin h=8'b00000011; end
	 5'd4 : begin h=8'b00000100; end
	 5'd5 : begin h=8'b00000101; end
	 5'd6 : begin h=8'b00000110; end
	 5'd7 : begin h=8'b00000111; end
	 5'd8 : begin h=8'b00001000; end
	 5'd9 : begin h=8'b00001001; end
	 5'd10 : begin h=8'b00010000; end
	 5'd11 : begin h=8'b00010001; end //11am
	 5'd12 : begin h=8'b10010010; end //12 pm
	 5'd13 : begin h=8'b10000001; end //01 pm
	 5'd14 : begin h=8'b10000010; end
	 5'd15 : begin h=8'b10000011; end
	 5'd16 : begin h=8'b10000100; end
	 5'd17 : begin h=8'b10000101; end
	 5'd18 : begin h=8'b10000110; end
	 5'd19 : begin h=8'b10000111; end
	 5'd20 : begin h=8'b10001000; end
	 5'd21 : begin h=8'b10001001; end
	 5'd22 : begin h=8'b10010000; end
	 5'd23 : begin h=8'b10010001; end
	 5'd24 : begin h=8'b11111111; end
  endcase 
  end
endmodule
