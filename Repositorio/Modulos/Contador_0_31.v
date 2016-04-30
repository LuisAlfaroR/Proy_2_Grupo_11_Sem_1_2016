`timescale 1ns / 1ps

module Contador_0_31(
    input clk,
	 input EN,
    input up,
    input down,
    input rst,
    output [7:0] out
    );
reg [7:0] out1;

always@(posedge clk) begin
	if(rst)begin
		out1<=8'd1; end
	else if(EN) begin
	if(up & down==0 & out1!=8'd31)begin
		out1<=out1+8'd1; end
	else if(down & up==0 & out1!=8'd1)begin
		out1<=out1-8'd1; end
	else if(down & up==0 & out1==8'd1)begin
		out1<=8'd31; end
	else if(up & down==0 & out1==8'd31)begin
		out1<=8'd1; end
	else if(up &down)begin
		out1<=8'b11111111;end
	end
end


Convertidor_Binario_BCD Conversion_dias_a_BCD (
    .Dato(out1),
    .Datoconv(out)
    );
	 
endmodule
