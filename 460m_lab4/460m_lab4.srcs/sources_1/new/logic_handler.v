`timescale 1ns / 1ps

module logic_handler(
    input clk,
    input clk_half_sec,
    input u,
    input l,
    input r,
    input d,
    input sw0,
    input sw1,
    output [6:0] out0,
    output [6:0] out1,
    output [6:0] out2,
    output [6:0] out3
    );
    
    
    reg [3:0] seg0 = 4'd0; // used for creating the digits in binary format
    reg [3:0] seg1 = 4'd0;
    reg [3:0] seg2 = 4'd0;
    reg [3:0] seg3 = 4'd0;
    
    
    hexto7segment c0 (.x(seg0),.r(out0)); // the actual outputs in the form of a 7 segment display
    hexto7segment c1 (.x(seg1),.r(out1));
    hexto7segment c2 (.x(seg2),.r(out2));
    hexto7segment c3 (.x(seg3),.r(out3));
    
    
    reg[1:0] blank = 2'b00;
    reg[1:0] count = 2'b00;
    reg[1:0] prev_count = 2'b00;
    reg[13:0] time_val = 14'b0;
    
    always @(*) begin
        if (blank == 2'b10 && (count == 2'b00 || count == 2'b10)) begin // 0 seconds
            seg0 = 4'd15;
            seg1 = 4'd15;
            seg2 = 4'd15;
            seg3 = 4'd15;   
        end else if (blank == 2'b01 && (time_val % 2 != 14'd0)) begin // under 200 seconds
            seg0 = 4'd15;
            seg1 = 4'd15;
            seg2 = 4'd15;
            seg3 = 4'd15;    
        end else begin // normal          
            seg3 = (time_val / 1000) % 10;
            seg2 = (time_val / 100) % 10;
            seg1 = (time_val / 10) % 10;
            seg0 = (time_val % 10);      
        end   
    end
    
    
    
    
    always @(posedge clk_half_sec) begin
        if (time_val == 14'd0) begin
            blank <= 2'b10;       
        end else if (time_val < 14'd201) begin
            blank <= 2'b01;    
        end else begin
            blank <= 2'b00;
        end   
        count <= (count == 2'b11) ? 2'b00 : count + 2'b01;       
    end
    

reg time_val_enable;  // Clock enable signal for time_val

// Logic to set the clock enable signal
always @(*) begin
    if (u || l || r || d || sw0 || sw1  || (count == 2'b00 && prev_count == 2'b11) || (count == 2'b10 && prev_count == 2'b01)) begin
        time_val_enable = 1'b1;  // Enable clock update
    end else begin
        time_val_enable = 1'b0;  // Disable clock update
    end
end

always @(posedge clk) begin
    if (time_val_enable) begin
        if (u) begin
            time_val <= (time_val + 14'd10 > 14'd9999)? 14'd9999 : time_val + 14'd10;
        end 
        else if (l) begin
            time_val <= (time_val + 14'd180 > 14'd9999)? 14'd9999 : time_val + 14'd180;
        end
        else if (r) begin
            time_val <= (time_val + 14'd200 > 14'd9999)? 14'd9999 : time_val + 14'd200;
        end
        else if (d) begin
            time_val <= (time_val + 14'd550 > 14'd9999)? 14'd9999 : time_val + 14'd550;
        end
        else if (sw0) begin
            time_val <= 14'd10;
        end
        else if (sw1) begin
            time_val <= 14'd205;
        end else if ((count == 2'b00 && prev_count == 2'b11) || (count == 2'b10 && prev_count == 2'b01))begin
            time_val <= (time_val == 14'd0) ? 14'd0 : time_val - 1;
        end
        else begin
            time_val <= time_val;  // Retain the previous value
        end
    end
    prev_count <= count;
end
    
    
endmodule
