`timescale 1ns / 1ps

module Memoria_0_59(
	input [5:0] addr,
	input en,rst,
	output reg [7:0] Dato);

always @* 
	begin
	if(rst)begin Dato=8'b0;end
	else begin
	if(en==1)begin
	case (addr)
	//Inicialización
	6'd0: begin Dato=0; end
	6'd1: begin Dato=0; end
	6'd2: begin Dato=0; end
	6'd3: begin Dato=0; end
	6'd4: begin Dato=0; end
	6'd5: begin Dato=0; end
	6'd6: begin Dato=0; end
	6'd7: begin Dato=0; end
	6'd8: begin Dato=0; end
	6'd9: begin Dato=0; end
	6'd11: begin Dato=0; end
	6'd12: begin Dato=0; end
	6'd13: begin Dato=0; end
	6'd14: begin Dato=0; end
	6'd15: begin Dato=0; end
	6'd16: begin Dato=0; end
	6'd17: begin Dato=0; end
	6'd18: begin Dato=0; end
	6'd19: begin Dato=0; end
	6'd20: begin Dato=0; end
	6'd21: begin Dato=0; end
	6'd22: begin Dato=0; end
	6'd23: begin Dato=0; end
	6'd24: begin Dato=0; end
	6'd25: begin Dato=0; end
	6'd26: begin Dato=0; end
	6'd10: begin Dato=0; end
	6'd10: begin Dato=0; end
	6'd10: begin Dato=0; end
	6'd10: begin Dato=0; end
	6'd10: begin Dato=0; end
	6'd10: begin Dato=0; end
	6'd10: begin Dato=0; end
	6'd10: begin Dato=0; end
	6'd10: begin Dato=0; end
	6'd10: begin Dato=0; end
	6'd10: begin Dato=0; end
	6'd10: begin Dato=0; end
	6'd10: begin Dato=0; end
	6'd10: begin Dato=0; end
	6'd10: begin Dato=0; end
	6'd10: begin Dato=0; end
	6'd10: begin Dato=0; end
	6'd10: begin Dato=0; end
	6'd10: begin Dato=0; end
	6'd10: begin Dato=0; end
	6'd10: begin Dato=0; end
	6'd10: begin Dato=0; end
	6'd10: begin Dato=0; end
	6'd10: begin Dato=0; end
	6'd10: begin Dato=0; end
	6'd10: begin Dato=0; end
	6'd10: begin Dato=0; end
	6'd10: begin Dato=0; end
	6'd10: begin Dato=0; end
	6'd10: begin Dato=0; end
	6'd10: begin Dato=0; end
	6'd10: begin Dato=0; end
	endcase
	end
	else begin AD=1;CS=1;RD=1;WR=1;Dato=8'b0; end
	end
	end
endmodule
