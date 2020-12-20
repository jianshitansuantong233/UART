`timescale 1ns / 1ps

module Write(
    clk,
    data,
    send,
    write,
    busy,
    led
    );

input clk,send;
input [7:0] data;
output reg write,busy;
output [7:0] led;
assign led = data;
//状态机状态定义
parameter Idle  = 2'b00,//空闲状态
             Rdy = 2'b01,//数据准备完成
             LoadByte = 2'b10,//数据传入
             SendBit = 2'b11;//数据发送

reg [13:0] BspClkReg;//波特率分频计数
reg BspClk;//波特率时钟

reg [9:0] tx_data;//发送的数据，加上起始位和停止位
reg [3:0] tx_byte_count;//发送位数计数

reg [1:0] state;//,next_state;//状态寄存器

//波特率分频模块，100M/10416
always@(posedge clk)
begin
    BspClkReg <= BspClkReg + 1;
    if(BspClkReg == 5208)
    begin
        BspClkReg <= 0;
        BspClk <= ~BspClk;
    end
end

always@(posedge BspClk)
begin
    case(state)
        Idle         : begin
                        write <= 1;
                        busy <= 0;
                        tx_byte_count <= 0;
                        if(~send) state <= Idle;
                        else state <= Rdy;
                        end
        Rdy          : begin
                        tx_byte_count <= 0;
                        write <= 1;
                        busy <= 1;
                        state <= LoadByte;
                        end
        LoadByte    : begin
                        tx_data <= {1'b1,data,1'b0};
                        write <= 1;
                        busy <= 1;
                        state <= SendBit;
                        end
        SendBit    : begin
                        write <= tx_data[0];
                        busy <= 1;
                        tx_data <= tx_data >> 1;
                        tx_byte_count <= tx_byte_count + 1;
                        if(tx_byte_count == 9)
                            state <= Idle;
                        else
                            state <= SendBit;
                        end
    endcase
end

endmodule
