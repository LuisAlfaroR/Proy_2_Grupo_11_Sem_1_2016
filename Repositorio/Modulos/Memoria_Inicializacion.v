`timescale 1ns / 1ps

module Memoria_Inicializacion(
	input [5:0] addr,
	input [7:0] s,m,h,d,me,a,
	input en,rst,
	output reg AD,CS,RD,WR,Listo_inicio,
	output reg [7:0] Dato);

always @* 
	begin
	if(rst)begin AD=1;CS=1;RD=1;WR=1;Dato=8'b0;Listo_inicio=0; end
	else begin
	if(en==1)begin
	AD=1; CS=1; RD=1; WR=1; Dato=0;Listo_inicio=0;
	case (addr)
	//Inicialización
	6'd1: begin AD=0; Dato=0; end
	6'd2: begin AD=0; CS=0; RD=1; WR=0; Dato=8'h02;end
	6'd3: begin Dato=8'h02; end
	6'd4: begin AD=1; CS=0; RD=1; WR=0; Dato[4]=1;end
	6'd5: begin Dato[4]=1;end
	6'd6: begin AD=1; CS=0; RD=1; WR=0; Dato[4]=0;end
	6'd7: begin Dato[4]=0;end
	6'd8: begin AD=0; Dato=0;end
	6'd9: begin AD=0; CS=0; RD=1; WR=0; Dato=8'h10;end
	6'd10: begin Dato=8'h10;end
	6'd11: begin AD=1; CS=0; RD=1; WR=0; Dato=8'hd2;end
	6'd12: begin Dato=8'hd2; Listo_inicio=1; end
	endcase
	end
	else begin AD=1;CS=1;RD=1;WR=1;Dato=8'b0; end
	end
	end
endmodule
