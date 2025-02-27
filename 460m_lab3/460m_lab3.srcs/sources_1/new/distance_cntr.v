`timescale 1ns / 1ps

module distance_cntr(steps, dist_int, dist_frac
    );
    
    input [31:0] steps;
    output[7:0] dist_int;
    output dist_frac;
    
    wire[7:0] half_miles;   
    assign half_miles = steps / 2048;
    assign dist_int = half_miles / 2;
    assign dist_frac = half_miles & 1'b1;
    
endmodule
