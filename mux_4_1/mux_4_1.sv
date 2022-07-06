`timescale 1ns / 1ps
module mux_4_1(
	input [3:0] data,
	input [1:0] sel,
	output Y);

reg mux;

always @(data, sel) 
begin
	case (sel)
    2'b00: mux <= data[0];
    2'b01: mux <= data[1];
    2'b10: mux <= data[2];
    2'b11: mux <= data[3];
	default: mux <= 1'b0;
	endcase
end
assign Y = mux;
endmodule

