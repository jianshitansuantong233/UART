`timescale 1ns / 1ps

module Read(
    clk,
    rst,
    out_led,
    read
    );

input clk,read,rst;
output reg [7:0] out_led;
reg read_clk_start;
reg [13:0] BspClkReg;//波特率分频计数
reg BspClk;//波特率时钟
reg reset;
reg [3:0] bitcount;
reg [2:0] samples; 
reg [1:0] sample_counter;
wire read_bit;
sample_result s(BspClk,samples,read_bit);
//同步时间
always @(posedge clk)
begin
    if (reset|rst) read_clk_start<=1'b0;
    else if (read_clk_start|(~read&(~read_clk_start))) read_clk_start<=1'b1;
    else read_clk_start<=1'b0;
end
//BspClk从第一个输入信号之后才开始
always @(posedge clk)
begin
    if (reset|rst) begin
        BspClkReg=0;
        BspClk=0;
    end else if(read_clk_start) begin
        BspClkReg <= BspClkReg + 1;
        if(BspClkReg == 2604) //5208/4, 5208对应9600 bit/s => 100,000,000/9600/2
        begin
            BspClkReg <= 0;
            BspClk <= 1;
        end else BspClk=0;
    end
end
always @(negedge clk)
begin
    if (rst)begin
        sample_counter<=0;
        bitcount<=0;
        reset<=0;
        samples<=0;
        out_led<=0;
    end else if (reset) reset<=0;
    else if (BspClk) begin
        sample_counter<=sample_counter+1;
        out_led[7]<=read_bit;
        if(sample_counter==2'b10) begin
            samples[0]<=1'b0;
            samples[1]<=1'b0;
            samples[2]<=1'b0;
        end else if (sample_counter==2'b11) begin
            if(bitcount==8) begin
                bitcount<=0;
                reset<=1;
            end else begin
                bitcount<=bitcount+1;
                reset<=0;                
                out_led<=out_led>>1;
                samples<=samples<<1;
                samples[0]<=read;
            end               
        end else begin
            samples<=samples<<1;
            samples[0]<=read;
        end
    end
end
endmodule
