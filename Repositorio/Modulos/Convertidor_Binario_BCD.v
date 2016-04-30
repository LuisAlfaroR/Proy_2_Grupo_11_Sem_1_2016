`timescale 1ns / 1ps

module Convertidor_Binario_BCD(
	input [7:0] Dato,
	output reg [7:0] Datoconv);

reg [7:0] Temp;

	always@(Dato)
	begin
	if(Dato<=8'b00001001)begin
		Datoconv=Dato;end
	else begin
		Temp=Dato+8'd6;
		if(Temp<=8'b00011001)begin
		Datoconv=Temp;end
		else begin
			Temp=Temp+8'd6;
			if(Temp<=8'b00101001)begin
				Datoconv=Temp;end
			else begin
				Temp=Temp+8'd6;
				if(Temp<=8'b00111001)begin
					Datoconv=Temp;end
				else begin
					Temp=Temp+8'd6;
					if(Temp<=8'b01001001)begin
						Datoconv=Temp;end
					else begin
						Temp=Temp+8'd6;
						if(Temp<=8'b01011001)begin
							Datoconv=Temp;end
						else begin Datoconv=Dato; end
						end
					end
				end
			end
		end
	end
		
endmodule
