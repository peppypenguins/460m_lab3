`timescale 1ns / 1ps

module two_sec_clk(clk100Mhz, out_clock);
input clk100Mhz;
output reg out_clock;


wire tmp_clk;
reg[1:0] cntr;

initial begin
out_clock = 0;
cntr = 2'b00;
end

var_clk_div u1(.clk100Mhz(clk100Mhz), .set_speed(32'b0001100011001011101010000000), .slowClk(tmp_clk), .active(1));

always @(posedge tmp_clk) begin
    if (cntr == 2'b01) begin
        out_clock <= ~out_clock;
        cntr <= 2'b00;
    end else begin
        cntr <= cntr + 1;  
        end      
end
endmodule
