`timescale 1ns / 1ps

module var_clk_div(clk100Mhz, set_speed, slowClk
    );
  input clk100Mhz; //fast clock
  input[31:0] set_speed; // the speed you want the clock to operate at
  output reg slowClk; //slow clock
  
  reg[31:0] old_speed;
  reg[27:0] counter;

  initial begin
    counter = 0;
    slowClk = 0;
  end

  always @ (posedge clk100Mhz)
  begin
    if (old_speed != set_speed) begin
        counter <= 1;
    end
     else if(counter == set_speed) begin
      counter <= 1;
      slowClk <= ~slowClk;
    end
    else begin
      counter <= counter + 1;
    end
    old_speed <= set_speed;
  end
    
    
    
endmodule
