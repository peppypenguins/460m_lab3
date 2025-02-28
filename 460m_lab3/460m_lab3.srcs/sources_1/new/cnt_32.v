`timescale 1ns / 1ps

module cnt_32(clk100Mhz,steps, reset, num_over
    );
    input clk100Mhz;
    input [31:0] steps;
    input reset;
    output reg[3:0] num_over;
    
    reg[7:0] i = 0;
    wire sec_clk;
    reg prev_reset;
    reg[31:0] prev_steps;
    var_clk_div sec_gen(.clk100Mhz(clk100Mhz), .set_speed(52000000), .slowClk(sec_clk), .active(1));
    
    always @(posedge sec_clk) begin
        if (reset) begin
            num_over <= 0;
            i <= 0;         
        end else if (prev_reset == reset && i < 10) begin
            if (steps - prev_steps > 31) 
                num_over <= num_over + 1;
            else 
                num_over <= num_over;
            i <= i + 1;
        end else if (prev_reset == reset)begin      
            i <= i + 1;
            num_over <= num_over;
        end    
        prev_reset <= reset;
        prev_steps <= steps;
    end  
    
endmodule
