`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2020 06:19:11 PM
// Design Name: 
// Module Name: display_7seg_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module display_7seg_test;
    reg CLK;
    reg SW_in;
    wire[10:0] display_out;
    display_7seg uut(
        .CLK(CLK),
        .SW_in(SW_in),
        .display_out(display_out)
    );
    parameter PERIOD = 20;
    always begin
        CLK = 1'b0;
        #(PERIOD/2);
        CLK = 1'b1;
        #(PERIOD/2);
    end
    initial begin
        SW_in = 0;
        #6000000;
        SW_in = 1;
        #6000000;
    end
endmodule
