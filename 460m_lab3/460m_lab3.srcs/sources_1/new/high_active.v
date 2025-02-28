`timescale 1ns / 1ps


module high_active(clk100Mhz, steps, reset, active_time
    );
    input clk100Mhz;
    input[31:0] steps;
    input reset;
    output reg[15:0] active_time;
    
    initial begin
        active_time = 16'b0;
    end
    
    wire sec_clk; 
    reg[7:0] sec_cntr = 0;  
    reg[31:0] prev_steps;
    
    
    var_clk_div sec_gen(.clk100Mhz(clk100Mhz), .set_speed(52000000), .slowClk(sec_clk), .active(1));
    
    always @(posedge sec_clk) begin
        if (reset == 1'b1) begin
            active_time <= 0;
            sec_cntr <= 0;
            end
            if (steps > prev_steps && steps - prev_steps > 63) begin
                if (sec_cntr == 59)
                    active_time <= active_time + 60;
                else if (sec_cntr > 59)
                    active_time <= active_time + 1;
                sec_cntr <= sec_cntr + 1;
            end else begin
                sec_cntr <= 0;
            end
        prev_steps <= steps;
    end
     
endmodule
