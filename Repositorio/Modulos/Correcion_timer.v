`timescale 1ns / 1ps

module Correcion_timer(
	input [7:0] s,m,h,
	output [7:0] st,mt,ht
    );

reg [7:0] var1;
reg [7:0] var2;
reg [7:0] var3;

always@(s or m or h)
	begin
	var1=8'd59-s;
	var2=8'd59-m;
	var3=8'd23-h;
	end

Convertidor_Binario_BCD Conversion_segundos_a_BCD (
    .Dato(var1),
    .Datoconv(st)
    );

Convertidor_Binario_BCD Conversion_minutos_a_BCD (
    .Dato(var2),
    .Datoconv(mt)
    );

Convertidor_Binario_BCD Conversion_horas_a_BCD (
    .Dato(var3),
    .Datoconv(ht)
    );	 

endmodule
