`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:17:11 04/04/2016 
// Design Name: 
// Module Name:    debounce 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module debounce(
    input clk, //this is a 50MHz clock provided on FPGA pin PIN_Y2
    input sw,  //this is the input to be debounced
    output reg sw_state  //this is the debounced switch
    );
// Synchronize the switch input to the clock
reg sw_sync_0;
always @(posedge clk) sw_sync_0 <= sw; 
reg sw_sync_1;
always @(posedge clk) sw_sync_1 <= sw_sync_0;

// Debounce the switch
reg [15:0] sw_cnt;
always @(posedge clk)
if(sw_state==sw_sync_1)
    sw_cnt <= 0;
else
begin
    sw_cnt <= sw_cnt + 1'b1;  
    if(sw_cnt == 16'hffff) sw_state <= ~sw_state;  
end
endmodule
