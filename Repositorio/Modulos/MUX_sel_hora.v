`timescale 1ns / 1ps

module MUX_sel_hora(
	input forma,
	input [7:0] veinti,
	input [7:0] doce,
	output reg [7:0] Hora
	);

always @(veinti or doce or forma)
	begin
	case (forma)
	1'b1: begin Hora=doce; end
	1'b0: begin Hora=veinti; end
	endcase
	end
endmodule
