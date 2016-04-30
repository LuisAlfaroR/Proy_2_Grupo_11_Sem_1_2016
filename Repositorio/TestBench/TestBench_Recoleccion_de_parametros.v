`timescale 1ns / 1ps

module TestBench_Recoleccion_de_parametros;

	// Inputs
	reg clk;
	reg EN_par;
	reg down_num;
	reg up_num;
	reg up_par;
	reg down_par;
	reg rst_par;
	reg forma;
	reg LD_par;
	reg rst_Listo;

	// Outputs
	wire [7:0] s;
	wire [7:0] m;
	wire [7:0] h;
	wire [7:0] d;
	wire [7:0] me;
	wire [7:0] a;
	wire [7:0] st;
	wire [7:0] mt;
	wire [7:0] ht;
	wire Listo_ht;
	wire [8:0] Habilita;

	// Instantiate the Unit Under Test (UUT)
	Parametros_Hacia_RTC uut (
		.clk(clk), 
		.EN_par(EN_par), 
		.down_num(down_num), 
		.up_num(up_num), 
		.up_par(up_par), 
		.down_par(down_par), 
		.rst_par(rst_par), 
		.forma(forma), 
		.LD_par(LD_par), 
		.rst_Listo(rst_Listo), 
		.s(s), 
		.m(m), 
		.h(h), 
		.d(d), 
		.me(me), 
		.a(a), 
		.st(st), 
		.mt(mt), 
		.ht(ht), 
		.Listo_ht(Listo_ht), 
		.Habilita(Habilita)
	);
	
	always begin #1000 clk=~clk;end
	integer j;
	initial begin
		// Initialize Inputs
		clk = 1;
		EN_par = 1;
		down_num = 0;
		up_num = 0;
		up_par = 0;
		down_par = 0;
		rst_par = 1;
		forma = 0;
		LD_par = 0;
		rst_Listo = 0;
		#1000;
		rst_par = 0;
		
		#1000;
		for(j=0;j<9;j=j+1)begin
		up_num=1;
		#3000;
		up_par=1;
		#1000;
		up_par=0;
		up_num=1;
		#3000;
		end
		up_num=0;
		up_par=0;
		#10000;
		up_par=1;
		#10000;
		$finish;
	end
      
endmodule

