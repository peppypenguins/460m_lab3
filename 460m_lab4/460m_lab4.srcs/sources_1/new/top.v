`timescale 1ns / 1ps

module top(
input clk,
input u,
input l,
input r,
input d,
input sw0,
input sw1,
output [3:0] an,
output [6:0] sseg
    );
    
 wire [6:0] in0, in1, in2, in3;

 wire u2;
 wire l2;
 wire r2;
 wire d2;
 
 wire fsm_clk;
 wire main_clk;
 
 debouncer c0 (.clk(clk), .reset(0), .button(u), .out(u2));
 debouncer c1 (.clk(clk), .reset(0), .button(l), .out(l2));
 debouncer c2 (.clk(clk), .reset(0), .button(r), .out(r2));
 debouncer c3 (.clk(clk), .reset(0), .button(d), .out(d2));
 
 fsm_clk_div c4 (.clk(clk), .reset(0), .out_clk(fsm_clk));
 clk_div_half_period c5 (.clk(clk), .reset(0), .out_clk(main_clk));
 logic_handler c6 (.clk(clk), .clk_half_sec(main_clk), .u(u2), .l(l2), .r(r2), .d(d2), .sw0(sw0), .sw1(sw1), .out0(in0), .out1(in1), .out2(in2), .out3(in3)); 
    
    
    time_mux_state_machine c7 ( // display sseg outputs on fpga board
    .clk(fsm_clk),
    .reset(0),
    .in0(in0),
    .in1(in1),
    .in2(in2),
    .in3(in3),
    .an(an),
    .sseg(sseg)
    );
    
    
    
endmodule
