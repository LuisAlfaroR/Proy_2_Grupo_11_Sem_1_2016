`timescale 1ns / 1ps

module Registro_24_H(
	input [4:0] hora,
	output reg [7:0] out4
    );



always@(hora)begin
	case(hora) 
    5'd0 : begin out4=8'b00000000; end //12 am
	 5'd1 : begin out4=8'b00000001; end
	 5'd2 : begin out4=8'b00000010; end
	 5'd3 : begin out4=8'b00000011; end
	 5'd4 : begin out4=8'b00000100; end
	 5'd5 : begin out4=8'b00000101; end
	 5'd6 : begin out4=8'b00000110; end
	 5'd7 : begin out4=8'b00000111; end
	 5'd8 : begin out4=8'b00001000; end
	 5'd9 : begin out4=8'b00001001; end
	 5'd10 : begin out4=8'b00010000; end
	 5'd11 : begin out4=8'b00010001; end //11am
	 5'd12 : begin out4=8'b00010010; end //12 pm
	 5'd13 : begin out4=8'b00010011; end //01 pm
	 5'd14 : begin out4=8'b00010100; end
	 5'd15 : begin out4=8'b00010101; end
	 5'd16 : begin out4=8'b00010110; end
	 5'd17 : begin out4=8'b00010111; end
	 5'd18 : begin out4=8'b00011000; end
	 5'd19 : begin out4=8'b00011001; end
	 5'd20 : begin out4=8'b00100000; end
	 5'd21 : begin out4=8'b00100001; end
	 5'd22 : begin out4=8'b00100010; end
	 5'd23 : begin out4=8'b00100011; end
	 5'd24 : begin out4=8'b11111111; end
	 5'd25 : begin out4=8'b11111111; end
	 5'd26 : begin out4=8'b11111111; end
	 5'd27 : begin out4=8'b11111111; end
	 5'd28 : begin out4=8'b11111111; end
	 5'd29 : begin out4=8'b11111111; end
	 5'd30 : begin out4=8'b11111111; end
	 5'd31 : begin out4=8'b11111111; end
  endcase 
 end
endmodule
