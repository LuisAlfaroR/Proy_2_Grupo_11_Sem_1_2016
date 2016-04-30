`timescale 1ns / 1ps

module Divisor_frecuencia_a_2Hz(

input clk,
output clk_out1);
 
reg [5:0] cuenta;//24:0 y 5:0 para prueba
reg clk_out;
initial cuenta<=0;initial clk_out<=1;
always @(posedge clk )begin
	if(cuenta==6'd50)begin //25'd25000000 Divide frecuencia a 2Hz T=500ms y 6'd50 para prueba
       cuenta=6'd0;
       clk_out=~clk_out;end
   else begin
       cuenta=cuenta+6'd1;end
end

BUFG Seguidor (
    .O(clk_out1), 
    .I(clk_out)
    );
	 
endmodule
