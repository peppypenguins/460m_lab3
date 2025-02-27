`timescale 1ns / 1ps

module cnt_32(clk100Mhz,steps, reset, num_over
    );
    input clk100Mhz;
    input [31:0] steps;
    input reset;
    output reg[3:0] num_over;
    
    integer i = 0;
    reg sec_clk;
    reg prev_reset;
    reg[31:0] prev_steps;
    var_clk_div sec_gen(.clk100Mhz(clk100Mhz), .set_speed(32'b0101111101011110000100000000), .slowClk(sec_clk));
    
    always @(posedge sec_clk or reset) begin
        if (reset == 1'b1) begin
            num_over <= 0;
            i <= 0;         
        end else if (prev_reset == reset && i < 9) begin
            if (steps - prev_steps > 31) 
                num_over <= num_over + 1;
            i <= i + 1;
        end else if (prev_reset == reset)begin      
            i <= i + 1;
        end    
        prev_reset <= reset;
        prev_steps <= steps;
    end  
    
endmodule
