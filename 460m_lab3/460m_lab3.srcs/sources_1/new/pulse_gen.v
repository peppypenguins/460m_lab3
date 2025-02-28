`timescale 1ns / 1ps

module pulse_gen(clk100Mhz, mode, reset, start, pulse_out
    );
    input clk100Mhz;
    input[1:0] mode;
    input reset;
    input start;
    output pulse_out;
    
    reg[31:0] set_speed;
    wire sec_clk;
    
    reg[7:0] i;
    reg [31:0] time_array [0:12];
    reg active;
    
    initial begin
        time_array[0] = 2600000;
        time_array[1] = 1575757;
        time_array[2] = 787878;
        time_array[3] = 1925925;
        time_array[4] = 742857;
        time_array[5] = 1733333;
        time_array[6] = 2736842;
        time_array[7] = 1733333;
        time_array[8] = 1575757;
        time_array[9] = 753623;
        time_array[10] = 1529411;
        time_array[11] = 419354;
        time_array[12] = 1625000;
        
        set_speed = 1625000;
        i = 1'b0;
        active = 1'b0;
    end
    
    var_clk_div clk_gen(.clk100Mhz(clk100Mhz), .set_speed(set_speed), .slowClk(pulse_out), .active(active));
    var_clk_div sec_gen(.clk100Mhz(clk100Mhz), .set_speed(52000000), .slowClk(sec_clk), .active(1));
    
    always @(posedge sec_clk) begin
        if (reset == 1'b1) begin
            i <= 0;
            active <= 1'b1;
        end else if (start == 1'b1) begin
            if (mode == 2'b00) begin
                    active <= 1'b1;
                    set_speed <= 1625000;
                    i <= 0;
                    end
            else if (mode == 2'b01) begin
                    active <= 1'b1;
                    set_speed <= 812500;
                    i <= 0;
                    end
            else if (mode == 2'b10)begin
                    active <= 1'b1;
                    set_speed <= 406250;
                    i <= 0;
                    end
            else
             begin if (i < 9) begin
                active <= 1'b1;
                set_speed <= time_array[i];
                i <= i + 1;
            end else if (i < 73) begin
                active <= 1'b1;
                set_speed <= time_array[9];
                i <= i + 1;
            end else if (i < 79) begin
                active <= 1'b1;
                set_speed <= time_array[10];
                i <= i + 1;
            end else if (i < 144) begin
                active <= 1'b1;
                set_speed <= time_array[11];
                i <= i + 1;
            end else begin
                active <= 1'b0;
                set_speed <= time_array[12];
                i <= 150;
            end   
            end
       end else begin
            active <= 1'b0;
            i <= 0;
       end
    end

endmodule

