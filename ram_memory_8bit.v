`timescale 1ns / 1ps

module rammemory_8bit(input [7:0] din,
input [2:0] addr,
input clk,en,we,
output reg [7:0] dout);
reg [7:0] mem [0:7];
always@(posedge clk)begin
if(en)begin
if(we)begin
mem[addr] = din;
end
else begin
dout = mem[addr];
end
end
else begin
dout = dout;
end
end

endmodule
