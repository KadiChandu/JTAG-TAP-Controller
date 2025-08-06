`timescale 1ns / 1ps
module tap_controller_tb;
    reg tck;
    reg tms;
    reg trst_n;
    wire [3:0] state;
    tap_controller uut (
        .tck(tck),
        .tms(tms),
        .trst_n(trst_n),
        .state(state) );
    initial begin
        tck = 0;
        forever #5 tck = ~tck;
    end
    initial begin
        trst_n = 0;
        tms = 1;
        #20;
        trst_n = 1;
        #10;
        tms = 0; 
        #10;
        tms = 1;
        #10;
        tms = 0; 
        #10;
        tms = 0;
        #10;
        tms = 1;
        #10;
        tms = 1;
        #10;
        tms = 0;
        #10;
        trst_n = 0;
        #10;
        trst_n = 1;
        #10;
        $finish;
    end
endmodule
