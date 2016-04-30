`timescale 1ns / 1ps

module Formato_hora(
    input clk,
	 input EN,
    input up,
    input down,
    input rst,
	 input forma,
    output [7:0] Hora
    );

wire [7:0] f_veinti;
wire [7:0] f_doce;
wire [4:0] registro_hora;

Contador_0_23_2 Formato_24_H (
    .clk(clk), 
    .EN(EN), 
    .up(up), 
    .down(down), 
    .rst(rst), 
    .out(registro_hora)
    );
	 
Registro_24_H instance_name (
    .hora(registro_hora), 
    .out4(f_veinti)
    );

Registro_12_horas Formato_12H (
    .clk(clk), 
    .EN(EN), 
    .up(up), 
    .down(down), 
    .rst(rst), 
    .h(f_doce)
    );

MUX_sel_hora Seleccionado (
    .forma(forma), 
    .veinti(f_veinti), 
    .doce(f_doce),
    .Hora(Hora)
    );

endmodule
