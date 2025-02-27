`timescale 1ns / 1ps

module clk_div_fsm(
input clk,
input reset,
output out_clk
    );
    
    reg[15:0] COUNT = 0;
    assign out_clk = COUNT[15];
    
    always@(posedge clk) begin
    if (reset) begin
    COUNT <= 0;
    end
    else 
    COUNT <= COUNT + 1;
    end
    
    
endmodule
