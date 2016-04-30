`timescale 1ns / 1ps

module Proyecto_2(
   input clk,reset,
	input down_num,up_num,up_par,down_par,//botones
	input forma,Quita_IRQ,modifica_timer, //switch
	input IRQ,									  //Señal de IRQ
	output AD,CS,RD,RW,						  //Salidas control a RTC
	inout [7:0] Dato_sal,					  //Salida y entrada de datos del RTC
	output [2:0] rgb, 						  //Salidas a VGA
	output hsync, vsync, clk_out1						  //Salidas a VGA
	 );

 
wire [3:0] seleccion_dato;
wire am,forma_hora;
wire [7:0] dato3;
wire [8:0] Habilita;

RTC RTC (
    .clk(clk), 
    .down_num(down_num), 
    .up_num(up_num), 
    .up_par(up_par), 
    .down_par(down_par), 
    .rst(reset), 
    .forma(forma), 
    .Quita_IRQ(Quita_IRQ), 
    .modifica_timer(modifica_timer), 
    .AD(AD), 
    .CS(CS), 
    .RD(RD), 
    .RW(RW), 
    .Dato_sal(Dato_sal), 
    .seleccion_dato(seleccion_dato), 
    .am(am), 
    .forma_hora(forma_hora), 
    .dato3(dato3),
	 .Habilita(Habilita),
	 .clk_out1(clk_out1)
    );

Ping_Pong_v2 VGA (
    .clk(clk), 
    .reset(reset), 
    .dato(dato3), 
    .rtcin(~IRQ), 
    .ampm(am), 
    .sistemamilitar(~forma_hora), 
    .hsync(hsync), 
    .vsync(vsync), 
    .selector_dato(seleccion_dato), 
    .rgb(rgb),
	 .Habilita(Habilita)
    );

endmodule
