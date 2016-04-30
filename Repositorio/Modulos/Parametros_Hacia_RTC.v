`timescale 1ns / 1ps

// Necesita un clk de 2Hz

module Parametros_Hacia_RTC(
   input clk,EN_par,down_num,up_num,up_par,down_par,rst_par,forma,LD_par,rst_Listo,
	output [7:0] s,m,h,d,me,a,st,mt,ht,
	output Listo_ht,
	output wire [8:0] Habilita
    );
	 
wire [8:0] cables_EN;

Modificar_parametro Seleccion_numero_del_param (
    .clk(clk), 
    .EN(Habilita), 
    .up(up_num), 
    .down(down_num), 
    .rst(rst_par), 
    .forma(forma), 
    .s(s), 
    .m(m), 
    .h(h), 
    .d(d), 
    .me(me), 
    .a(a), 
    .st(st), 
    .mt(mt), 
    .ht(ht)
    );
	 
Seleccion_Parametro Seleccion_param_modifi (
    .clk(clk), 
    .EN(EN_par), 
    .up(up_par), 
    .down(down_par), 
    .rst(rst_par), 
	 .rst_Listo(rst_Listo),
	 .Ld(LD_par),
    .Habilita(Habilita),
	 .Listo_ht(Listo_ht)
    );
	
endmodule
