`timescale 1ns / 1ps

module top(clk, mode, reset, start,
           SI, out3, out2, out1, out0
    );
    
    input clk;
    input[1:0] mode;
    input reset;
    input start;
    output SI;
    output[6:0] out3;
    output[6:0] out2;
    output[6:0] out1;
    output[6:0] out0;
    
    reg pulse;
    
    pulse_gen my_pulse(.clk100Mhz(clk), .mode(mode), .reset(reset), .start(start), .pulse_out(pulse));
    handler top_handler(.clk100Mhz(clk), .pulse(pulse), .reset(reset), .out0(out0), .out1(out1),
                        .out2(out2), .out3(out3), .SI(SI));        
endmodule
