`timescale 1ns / 1ps

module top(clk, mode, reset, start,
           SI, an, sseg
    );
    
    input clk;
    input[1:0] mode;
    input reset;
    input start;
    output SI;
    output [3:0] an;
    output [6:0] sseg;
    
    wire pulse;
    wire fsm_clk;
    wire [6:0] in0, in1, in2, in3;
    
    //assign sseg[7] = 1'b1;
    
    pulse_gen my_pulse(.clk100Mhz(clk), .mode(mode), .reset(reset), .start(start), .pulse_out(pulse));
    //var_clk_div clk_gen(.clk100Mhz(clk), .set_speed(812500), .slowClk(pulse), .active(1));
    clk_div_fsm fsm_clk_gen(.clk(clk), .reset(reset), .out_clk(fsm_clk));
    
    handler top_handler(.clk100Mhz(clk), .pulse(pulse), .reset(reset), .out0(in0), .out1(in1),
                        .out2(in2), .out3(in3), .SI(SI));    
                        
    time_mux_state_machine c2 ( //display sseg outputs on fpga board
    .clk(fsm_clk),
    .reset(reset),
    .in0(in0),
    .in1(in1),
    .in2(in2),
    .in3(in3),
    .an(an),
    .sseg(sseg)
    );  
endmodule
