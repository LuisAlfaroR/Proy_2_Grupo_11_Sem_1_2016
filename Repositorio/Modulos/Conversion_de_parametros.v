`timescale 1ns / 1ps

module Conversion_de_parametros(
	input [7:0] s,m,d,me,a,
	output [7:0] S,M,D,ME,A
    );

Convertidor_Binario_BCD Conversion_segundos_a_BCD (
    .Dato(s),
    .Datoconv(S)
    );

Convertidor_Binario_BCD Conversion_minutos_a_BCD (
    .Dato(m),
    .Datoconv(M)
    );
	 
Convertidor_Binario_BCD Conversion_dias_a_BCD (
    .Dato(d),
    .Datoconv(D)
    );
	 
Convertidor_Binario_BCD Conversion_mes_a_BCD (
    .Dato(me),
    .Datoconv(ME)
    );
	 
Convertidor_Binario_BCD Conversion_ano_a_BCD (
    .Dato(a),
    .Datoconv(A)
    );

endmodule
