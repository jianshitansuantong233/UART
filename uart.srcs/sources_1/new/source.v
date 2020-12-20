`timescale 1ns / 1ps
module main(
    clk,
    rst,
    read_data,
    write_data,
    send,
    write,
    read,
    busy,
    led
    );

input clk,send,read,rst;
input [7:0] write_data;
output write,busy;
output [7:0] led;
output [7:0] read_data;

Write w(clk,write_data,send,write,busy,led);
Read r(clk,rst,read_data,read);

endmodule
