`timescale 1ns / 1ps

module majority_of_five(
    input [4:0] sw,
    output led);

//At least three switches need to be driven, below are all the combinations
assign led = (sw[0] & sw[1] & sw[2]) |
             (sw[0] & sw[1] & sw[3]) |
             (sw[0] & sw[1] & sw[4]) |
             (sw[0] & sw[2] & sw[3]) |
             (sw[0] & sw[2] & sw[4]) |
             (sw[0] & sw[3] & sw[4]) |
             (sw[1] & sw[2] & sw[3]) |
             (sw[1] & sw[2] & sw[4]) |
             (sw[1] & sw[3] & sw[4]) |
             (sw[2] & sw[3] & sw[4]);
              
endmodule
