`timescale 1ns / 1ps

module pulse_gen(clk100Mhz, mode, reset, start, pulse_out
    );
    input clk100Mhz;
    input[1:0] mode;
    input reset;
    input start;
    output pulse_out;
    
    reg[31:0] set_speed = 8'b11111111;
    wire sec_clk;
    
    reg[7:0] i = 0;
    reg [31:0] time_array [0:12];
    
    initial begin
        time_array[0] = 32'b010011000100101101000000;
        time_array[1] = 32'b001011100011110100011111;
        time_array[2] = 32'b000101110001111010001111;
        time_array[3] = 32'b001110001000001110010111;
        time_array[4] = 32'b000101011100110001011011;
        time_array[5] = 32'b001100101101110011010101;
        time_array[6] = 32'b010100000100111100110101;
        time_array[7] = 32'b001100101101110011010101;
        time_array[8] = 32'b001011100011110100011111;
        time_array[9] = 32'b000101100001110100111011;
        time_array[10] = 32'b001011001110000011111000;
        time_array[11] = 32'b11000100111000110011;
        time_array[12] = 32'b1000111100001101000110000000;
    end
    
    var_clk_div clk_gen(.clk100Mhz(clk100Mhz), .set_speed(set_speed), .slowClk(pulse_out));
    var_clk_div sec_gen(.clk100Mhz(clk100Mhz), .set_speed(32'b0101111101011110000100000000), .slowClk(sec_clk));
    
    always @(posedge sec_clk) begin
        if (reset == 1'b1) begin
            i <= 0;
        end else if (start == 1'b1) begin
        case(mode)
            2'b00: begin
                    set_speed <= 32'b00000000001011111010111100001000;
                    i <= 0;
                    end
            2'b01: begin
                    set_speed <= 32'b00000000000101111101011001011000;
                    i <= 0;
                    end
            2'b10:begin
                    set_speed <= 32'b00000000000010111110101111000010;
                    i <= 0;
                    end
            2'b11: if (i < 9) begin
                set_speed <= time_array[i];
                i <= i + 1;
            end else if (i < 73) begin
                set_speed <= time_array[9];
                i <= i + 1;
            end else if (i < 79) begin
                set_speed <= time_array[10];
                i <= i + 1;
            end else if (i < 144) begin
                set_speed <= time_array[11];
                i <= i + 1;
            end else begin
                set_speed <= time_array[12];
                i <= 150;
            end   
       endcase;
       end else begin
            set_speed <= 32'b0101111101011110000100000000;
            i <= 0;
       end
    end

endmodule

