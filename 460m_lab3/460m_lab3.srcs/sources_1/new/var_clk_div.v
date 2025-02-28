`timescale 1ns / 1ps

module var_clk_div(clk100Mhz, set_speed, slowClk, active
    );
  input clk100Mhz; //fast clock
  input active;
  input[31:0] set_speed; // the speed you want the clock to operate at
  output reg slowClk; //slow clock
  
  reg[27:0] counter;

  initial begin
    counter = 1;
    slowClk = 0;
  end

  always @ (posedge clk100Mhz)
  begin
    if (active) begin
     if(counter == set_speed) begin
      counter <= 1;
      slowClk <= ~slowClk;
    end
    else begin
      counter <= counter + 1;
    end
  end
  end
        
endmodule
