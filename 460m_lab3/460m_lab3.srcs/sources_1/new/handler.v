`timescale 1ns / 1ps

module handler(clk100Mhz, steps, reset, out0, out1, out2, out3, SI
    );
    input clk100Mhz;
    input[31:0] steps;
    input reset;
    output reg[6:0] out0;
    output reg[6:0] out1;
    output reg[6:0] out2;
    output reg[6:0] out3;
    output reg SI;
    
    reg[1:0] state = 2'b00;
    reg[1:0] next_state = 2'b01;
    
    reg[3:0] D3_steps;
    reg[3:0] D2_steps;
    reg[3:0] D1_steps;
    reg[3:0] D0_steps;
    
    reg[3:0] D3_dist;
    reg[3:0] D2_dist;
    wire[3:0] D1_dist = 4'b1111;
    reg[3:0] D0_dist;
    
    wire[3:0] D3_cnt32 = 4'b0000;
    wire[3:0] D2_cnt32 = 4'b0000;
    reg[3:0] D1_cnt32;
    reg[3:0] D0_cnt32;
    
    reg[3:0] D3_high_active;
    reg[3:0] D2_high_active;
    reg[3:0] D1_high_active;
    reg[3:0] D0_high_active;
    
    reg two_sec_clk;  
    
    var_clk_div sec_gen(.clk100Mhz(clk100Mhz), .set_speed(32'b0010111110101111000010000000), .slowClk(two_sec_clk)); 
    
    always @(posedge two_sec_clk or reset) begin
        if (reset == 1'b1) begin
            state
        
    
    end
    
endmodule
