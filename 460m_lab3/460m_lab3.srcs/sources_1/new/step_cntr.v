`timescale 1ns / 1ps

module step_cntr(pulse,reset,steps
    );
    input pulse;
    input reset;
    output reg[31:0] steps;
    
    always @(posedge pulse or posedge reset) begin
        if (reset == 1'b1)
            steps <= 32'b0000;
        else begin
            steps <= steps + 1;
        end
    end  
endmodule
