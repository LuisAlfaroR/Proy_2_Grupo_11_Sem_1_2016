`timescale 1ns / 1ps

module Seleccion_Parametro(
    input clk,
	 input EN,
    input up,
    input down,
    input rst,
	 input rst_Listo,
	 input Ld,
    output [8:0] Habilita,
	 output Listo_ht
	 );

wire [3:0] parametro_sel;
	 
Contador_0_6 Contador (
    .clk(clk), 
    .EN(EN), 
    .up(up), 
    .down(down), 
    .rst(rst),	 
	 .Ld(Ld),
    .out(parametro_sel)
    );

Memoria_parametros Seleccionador (
    .addr(parametro_sel), 
    .en(EN), 
    .rst(rst_Listo), 
    .Habilita(Habilita),
	 .Listo_ht(Listo_ht)
    );

endmodule
