`timescale 1ns / 1ps

module Memoria_parametros(
	input [3:0] addr,
	input en,rst,
	output reg [8:0] Habilita,
	output reg Listo_ht
	);

always @* 
	begin
	if(rst)begin Habilita=9'b0; Listo_ht=0; end
	else begin
	if(en==1)begin
	Habilita=0; Listo_ht=0;
	case (addr)
	4'd0: begin Habilita=9'b000000001;Listo_ht=0; end
	4'd1: begin Habilita=9'b000000010;Listo_ht=0; end
	4'd2: begin Habilita=9'b000000100;Listo_ht=0; end
	4'd3: begin Habilita=9'b000001000;Listo_ht=0; end
	4'd4: begin Habilita=9'b000010000;Listo_ht=0; end
	4'd5: begin Habilita=9'b000100000;Listo_ht=0; end
	4'd6: begin Habilita=9'b001000000;Listo_ht=0; end
	4'd7: begin Habilita=9'b010000000;Listo_ht=0; end
	4'd8: begin Habilita=9'b100000000;Listo_ht=0; end
	4'd9: begin Habilita=9'b000000000;Listo_ht=1; end
	endcase
	end
	else begin Habilita=0; Listo_ht=0; end
	end
	end
endmodule
