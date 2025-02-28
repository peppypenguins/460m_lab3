`timescale 1ns / 1ps

module handler(clk100Mhz, pulse, reset, out0, out1, out2, out3, SI
    );
    input clk100Mhz;
    input pulse;
    input reset;
    output reg[6:0] out0;
    output reg[6:0] out1;
    output reg[6:0] out2;
    output reg[6:0] out3;
    output SI;
    
    reg[1:0] state = 2'b00;
    reg[1:0] next_state = 2'b01;
    
    wire[3:0] D3_steps;
    wire[3:0] D2_steps;
    wire[3:0] D1_steps;
    wire[3:0] D0_steps;
    
    wire[6:0] D3_steps_seg;
    wire[6:0] D2_steps_seg;
    wire[6:0] D1_steps_seg;
    wire[6:0] D0_steps_seg;
    
    
    wire[3:0] D3_dist;
    wire[3:0] D2_dist;
    wire[3:0] D1_dist = 4'b1111;
    wire[3:0] D0_dist;
    
    wire[6:0] D3_dist_seg;
    wire[6:0] D2_dist_seg;
    wire[6:0] D1_dist_seg;
    wire[6:0] D0_dist_seg;
      
    
    wire[3:0] D3_cnt32 = 4'b0000;
    wire[3:0] D2_cnt32 = 4'b0000;
    wire[3:0] D1_cnt32 = 4'b0000;
    wire[3:0] D0_cnt32;
    
    wire[6:0] D3_cnt32_seg;
    wire[6:0] D2_cnt32_seg;
    wire[6:0] D1_cnt32_seg;
    wire[6:0] D0_cnt32_seg;
    
    wire[3:0] D3_high_active;
    wire[3:0] D2_high_active;
    wire[3:0] D1_high_active;
    wire[3:0] D0_high_active;
    
    wire[6:0] D3_active_seg;
    wire[6:0] D2_active_seg;
    wire[6:0] D1_active_seg;
    wire[6:0] D0_active_seg;
    
    wire two_sec_clk; 
    wire[31:0] out_steps;
    wire[7:0] dist_int;
    wire dist_frac;
    wire[3:0] num_over;
    wire[15:0] active_time;
    
    //var_clk_div sec_gen(.clk100Mhz(clk100Mhz), .set_speed(32'b0010111110101111000010000000), .slowClk(two_sec_clk), .active(1));
    
    two_sec_clk sec_gen(.clk100Mhz(clk100Mhz), .out_clock(two_sec_clk));     
    step_cntr find_steps(.pulse(pulse), .reset(reset), .steps(out_steps));
    distance_cntr find_dist(.steps(out_steps), .dist_int(dist_int), .dist_frac(dist_frac));
    cnt_32 num_over_32(.clk100Mhz(clk100Mhz), .steps(out_steps), .reset(reset), .num_over(num_over));
    high_active high_activity(.clk100Mhz(clk100Mhz), .steps(out_steps), .reset(reset), .active_time(active_time));
    
    hexto7segment steps_d3_seg(.x(D3_steps), .r(D3_steps_seg));
    hexto7segment steps_d2_seg(.x(D2_steps), .r(D2_steps_seg));
    hexto7segment steps_d1_seg(.x(D1_steps), .r(D1_steps_seg));
    hexto7segment steps_d0_seg(.x(D0_steps), .r(D0_steps_seg));
    
    hexto7segment dist_d3_seg(.x(D3_dist), .r(D3_dist_seg));
    hexto7segment dist_d2_seg(.x(D2_dist), .r(D2_dist_seg));
    hexto7segment dist_d1_seg(.x(D1_dist), .r(D1_dist_seg));
    hexto7segment dist_d0_seg(.x(D0_dist), .r(D0_dist_seg));
    
    hexto7segment cnt32_d3_seg(.x(D3_cnt32), .r(D3_cnt32_seg));
    hexto7segment cnt32_d2_seg(.x(D2_cnt32), .r(D2_cnt32_seg));
    hexto7segment cnt32_d1_seg(.x(D1_cnt32), .r(D1_cnt32_seg));
    hexto7segment cnt32_d0_seg(.x(D0_cnt32), .r(D0_cnt32_seg));
    
    hexto7segment active_d3_seg(.x(D3_high_active), .r(D3_active_seg));
    hexto7segment active_d2_seg(.x(D2_high_active), .r(D2_active_seg));
    hexto7segment active_d1_seg(.x(D1_high_active), .r(D1_active_seg));
    hexto7segment active_d0_seg(.x(D0_high_active), .r(D0_active_seg));
    
    
    
    assign D3_steps = (out_steps > 9999) ? 4'b1001 : (out_steps / 1000) % 10;
    assign D2_steps = (out_steps > 9999) ? 4'b1001 :  (out_steps / 100) % 10;
    assign D1_steps = (out_steps > 9999) ? 4'b1001 :  (out_steps / 10) % 10;
    assign D0_steps = (out_steps > 9999) ? 4'b1001 :  out_steps % 10;
    
    assign SI = (out_steps > 9999) ? 1'b1 : 1'b0;
    
    assign D3_dist = (dist_int / 10) % 10;
    assign D2_dist = dist_int % 10;
    assign D0_dist = (dist_frac == 1'b1) ? 4'b0101 : 4'b0000;
    
    assign D0_cnt32 = num_over;
    
    assign D3_high_active = (active_time / 1000) % 10;
    assign D2_high_active = (active_time / 100) % 10;
    assign D1_high_active = (active_time / 10) % 10;
    assign D0_high_active = active_time % 10;
      
    
    always @(posedge two_sec_clk or posedge reset) begin
        if (reset == 1'b1) begin
            state <= 2'b00;
            next_state <= 2'b00;
        end else begin
            case (state)
            2'b00:begin
                out3 <= D3_steps_seg;
                out2 <= D2_steps_seg;
                out1 <= D1_steps_seg;
                out0 <= D0_steps_seg;            
            end
            2'b01:begin
                out3 <= D3_dist_seg;
                out2 <= D2_dist_seg;
                out1 <= D1_dist_seg;
                out0 <= D0_dist_seg;         
            end
            2'b10:begin
                out3 <= D3_cnt32_seg;
                out2 <= D2_cnt32_seg;
                out1 <= D1_cnt32_seg;
                out0 <= D0_cnt32_seg;            
            end
            2'b11:begin
                out3 <= D3_active_seg;
                out2 <= D2_active_seg;
                out1 <= D1_active_seg;
                out0 <= D0_active_seg;            
            end
            endcase;    
        end
        state <= next_state;
        next_state <= (next_state == 2'b11) ? 2'b00 : next_state + 1;
    end
    
endmodule
