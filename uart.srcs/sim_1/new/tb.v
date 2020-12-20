`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/20/2020 03:35:07 AM
// Design Name: 
// Module Name: tb
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


module tb;
wire write, busy;
reg clk,rst,send,read;
wire [7:0] read_data;
reg [7:0] write_data;
wire [7:0] led;
//main m(clk,rst,read_data,write_data,send,write,read,busy,led);
Read r(clk,rst,read_data,read);
integer i;
initial begin
    clk=0;    
    rst=1;
    send=0;
    read=1;
    for (i=0;i!=8;i=i+1) begin
        write_data[i]=0;
    end
    #1000 rst=0;
    read=0;
    #104167 read=1;
    #104167 read=0;
    #104167 read=1;
    #104167 read=0;
    #104167 read=1;
    #104167 read=1;
    #104167 read=1;
    #104167 read=0;
    #104167 read=1;
    #200000 read=0;
    #104167 read=1;
    #104167 read=0;
    #104167 read=1;
    #104167 read=0;
    #104167 read=1;
    #104167 read=1;
    #104167 read=1;
    #104167 read=0;
    #104167 read=1;
end
always #5 clk=~clk;
endmodule
