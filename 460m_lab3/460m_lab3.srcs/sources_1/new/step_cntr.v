`timescale 1ns / 1ps

module step_cntr(pulse,reset,steps
    );
    input pulse;
    input reset;
    output reg[31:0] steps;
    
    initial begin
        steps = 32'h00000000;
    end
    
    always @(posedge pulse or posedge reset) begin
        if (reset == 1'b1)
            steps <= 32'b0;
        else begin
            steps <= steps + 1;
        end
    end  
endmodule
