`timescale 1ns / 1ps
module mux_4_1_tb;

//inputs
reg [3:0] data;
reg [1:0] sel;
//-----------------
//outputs
wire Y;
//-----------------

mux_4_1 CUT (.data(data), .sel(sel), .Y(Y));

reg mux;

//The select determines which bit in the 4'b data equals the output Y
always@(data, sel)
begin
    case(sel)
    2'b00: mux <= data[0];
    2'b01: mux <= data[1];
    2'b10: mux <= data[2];
    2'b11: mux <= data[3];
    default: mux <= 1'b0;
    endcase
end
assign Y = mux;

//Loop index
integer k;

//For every value in the 2'b select we go through every value in the 4'b data
//The output Y equals the bit indicated in the always block above, related to the value of the 4'b data
initial 
begin
    sel = 2'b00;
    for(k=0; k<16; k=k+1)
    begin
        data = k;
        #10;
    end
    
    sel = 2'b01;
    for(k=0; k<16; k=k+1)
    begin
        data = k;
        #10;
    end
    sel = 2'b10;
    for(k=0; k<16; k=k+1)
    begin
        data = k;
        #10;
    end
    
    sel = 2'b11;
    for(k=0; k<16; k=k+1)
    begin
        data = k;
        #10;
    end
    $finish;
end
endmodule






