`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/20/2020 03:19:03 AM
// Design Name: 
// Module Name: sample_result
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


module sample_result(
    input clk,
    input [2:0] sample,
    output reg result
    );
    reg [2:0] sum;
    always @(posedge clk) begin
        sum<=sample[0]+sample[1]+sample[2];
        result = sum>1;
    end
endmodule
