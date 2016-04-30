`timescale 1ns / 1ps
module Contador_0_7(
    input clk,
	 input EN,
    input up,
    input down,
    input rst,
    output reg [7:0] out
    );

reg [5:0] out1;

always@(posedge clk) begin

	if(rst)begin
		out1<=0; end
	else if(EN) begin
	if(up & down==0 & out1!=6'd59)begin
		out1<=out1+6'd1; end
	else if(down & up==0 & out1!=6'd0)begin
		out1<=out1-6'd1; end
	else if(down & up==0 & out1==6'd0)begin
		out1<=6'd59; end
	else if(up & down==0 & out1==6'd59)begin
		out1<=6'd0; end
	end
	out=0;
	case(out1) 
    6'd0 : begin out=8'b00000000; end //12 am
	 6'd1 : begin out=8'b00000001; end
	 6'd2 : begin out=8'b00000010; end
	 6'd3 : begin out=8'b00000011; end
	 6'd4 : begin out=8'b00000100; end
	 6'd5 : begin out=8'b00000101; end
	 6'd6 : begin out=8'b00000110; end
	 6'd7 : begin out=8'b00000111; end
	 6'd8 : begin out=8'b00001000; end
	 6'd9 : begin out=8'b00001001; end
	 6'd10 : begin out=8'b00010000; end
	 6'd11 : begin out=8'b00010001; end //11am
	 6'd12 : begin out=8'b00010010; end //12 pm
	 6'd13 : begin out=8'b00010011; end //01 pm
	 6'd14 : begin out=8'b00010100; end
	 6'd15 : begin out=8'b00010101; end
	 6'd16 : begin out=8'b00010110; end
	 6'd17 : begin out=8'b00010111; end
	 6'd18 : begin out=8'b00011000; end
	 6'd19 : begin out=8'b00011001; end
	 6'd20 : begin out=8'b00100000; end
	 6'd21 : begin out=8'b00100001; end
	 6'd22 : begin out=8'b00100010; end
	 6'd23 : begin out=8'b00100011; end
	 6'd24 : begin out=8'b00100100; end
	 6'd25 : begin out=8'b00100101; end //12 am
	 6'd26 : begin out=8'b00100110; end
	 6'd27 : begin out=8'b00100111; end
	 6'd28 : begin out=8'b00101000; end
	 6'd29 : begin out=8'b00101001; end
	 6'd30 : begin out=8'b00110000; end
	 6'd31 : begin out=8'b00110001; end
	 6'd32 : begin out=8'b00110010; end
	 6'd33 : begin out=8'b00110011; end
	 6'd34 : begin out=8'b00110100; end
	 6'd35 : begin out=8'b00110101; end
	 6'd36 : begin out=8'b00110110; end //11am
	 6'd37 : begin out=8'b00110111; end //12 pm
	 6'd38 : begin out=8'b00111000; end //01 pm
	 6'd39 : begin out=8'b00111001; end
	 6'd40 : begin out=8'b01000000; end
	 6'd41 : begin out=8'b01000001; end
	 6'd42 : begin out=8'b01000010; end
	 6'd43 : begin out=8'b01000011; end
	 6'd44 : begin out=8'b01000100; end
	 6'd45 : begin out=8'b01000101; end
	 6'd46 : begin out=8'b01000110; end
	 6'd47 : begin out=8'b01000111; end
	 6'd48 : begin out=8'b01001000; end
	 6'd49 : begin out=8'b01001001; end
	 6'd50 : begin out=8'b01010000; end //12 pm
	 6'd51 : begin out=8'b01010001; end //01 pm
	 6'd52 : begin out=8'b01010010; end
	 6'd53 : begin out=8'b01010011; end
	 6'd54 : begin out=8'b01010100; end
	 6'd55 : begin out=8'b01010101; end
	 6'd56 : begin out=8'b01010110; end
	 6'd57 : begin out=8'b01010111; end
	 6'd58 : begin out=8'b01011000; end
	 6'd59 : begin out=8'b01011001; end
	 6'd60 : begin out=8'b11111111; end
  endcase 
end

endmodule
