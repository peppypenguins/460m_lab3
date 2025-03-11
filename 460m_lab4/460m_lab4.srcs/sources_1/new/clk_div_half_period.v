
`timescale 1ns / 1ps

module clk_div_half_period(
input clk,
input reset,
output out_clk
    );
    
    reg[27:0] COUNT = 0;
    reg out100 = 0;
    assign out_clk = out100;
    
    always@(posedge clk) begin
    if (reset || COUNT == 27'd25000000) begin
    COUNT <= 0;
    out100 <= ~out100;
    end
    else 
    COUNT <= COUNT + 1;
    end
    
    
endmodule
