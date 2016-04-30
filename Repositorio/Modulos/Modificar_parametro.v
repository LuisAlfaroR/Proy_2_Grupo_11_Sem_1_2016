`timescale 1ns / 1ps

module Modificar_parametro(
    input clk,
	 input [8:0] EN,
    input up,
    input down,
    input rst,
	 input forma,
    output [7:0] s,m,h,d,me,a,st,mt,ht
	 );

wire [7:0] correc1;
wire [7:0] correc2;
wire [7:0] correc3;
wire [7:0] mes;
	 
Contador_0_7 Segundos (
    .clk(clk), 
    .EN(EN[5]), 
    .up(up), 
    .down(down), 
    .rst(rst), 
    .out(s)
    );

Contador_0_7 Minutos (
    .clk(clk), 
    .EN(EN[4]), 
    .up(up), 
    .down(down), 
    .rst(rst), 
    .out(m)
    );

Formato_hora Hora (
    .clk(clk), 
    .EN(EN[3]), 
    .up(up), 
    .down(down), 
    .rst(rst), 
    .forma(forma), 
    .Hora(h)
    );

Contador_0_31 Dia (
    .clk(clk), 
    .EN(EN[2]), 
    .up(up), 
    .down(down), 
    .rst(rst), 
    .out(d)
    );

Contador_0_12 Mes (
    .clk(clk), 
    .EN(EN[1]), 
    .up(up), 
    .down(down), 
    .rst(rst), 
    .out(mes)
    );


Convertidor_Binario_BCD Conversion_dias_a_BCD_Mes (
    .Dato(mes),
    .Datoconv(me)
    );
	 
Contador_0_99 Ano (
    .clk(clk), 
    .EN(EN[0]), 
    .up(up), 
    .down(down), 
    .rst(rst), 
    .out(a)
    );

//Parametros del timer

Contador_0_31_timer Segundos_timer (
    .clk(clk), 
    .EN(EN[8]), 
    .up(up), 
    .down(down), 
    .rst(rst), 
    .out(correc1)
    );

Contador_0_31_timer Minutos_timer (
    .clk(clk), 
    .EN(EN[7]), 
    .up(up), 
    .down(down), 
    .rst(rst), 
    .out(correc2)
    );

Contador_0_23 Horas_timer (
    .clk(clk), 
    .EN(EN[6]), 
    .up(up), 
    .down(down), 
    .rst(rst), 
    .out(correc3)
    );

Correcion_timer Arreglo_param_timer (
    .s(correc1), 
    .m(correc2), 
    .h(correc3), 
    .st(st), 
    .mt(mt), 
    .ht(ht)
    );
	 
endmodule
