`timescale 1ns/1ps

module dff_tb;
reg clk, d;
wire q;

dff dut(
.clk(clk),
.d(d),
.q(q)
);
always #5 clk = ~clk;
initial begin
clk = 0;
d = 0;

#2 d = 1;
#10 d = 0;
#10 d =1;
#10;
$finish;
end
initial begin 
$monitor("time=%0t clk=%b d=%b q=%b", $time, clk, q,d);
end 
endmodule
