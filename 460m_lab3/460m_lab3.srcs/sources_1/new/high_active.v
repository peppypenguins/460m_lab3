`timescale 1ns / 1ps


module high_active(clk100Mhz, steps, reset, active_time
    );
    input clk100Mhz;
    input[31:0] steps;
    input reset;
    output reg[15:0] active_time;
    
    wire sec_clk; 
    reg[7:0] sec_cntr = 0;  
    reg prev_reset;
    reg prev_steps;
    
    var_clk_div sec_gen(.clk100Mhz(clk100Mhz), .set_speed(32'b0101111101011110000100000000), .slowClk(sec_clk));
    
    always @(posedge sec_clk) begin
        if (reset == 1'b1) begin
            active_time <= 0;
            sec_cntr <= 0;
            end
        else if (prev_reset == reset) begin
            if (steps - prev_steps > 63) begin
                if (sec_cntr == 59)
                    active_time <= active_time + 60;
                else if (sec_cntr > 59)
                    active_time <= active_time + 1;
                sec_cntr <= sec_cntr + 1;
            end else begin
                sec_cntr <= 0;
            end
        end
        prev_reset <= reset;
        prev_steps <= steps;
    end
    
    
endmodule
