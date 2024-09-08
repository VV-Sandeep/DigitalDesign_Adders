module serial_adder(clk,ctrl,en,rst,a,b,sum,cout);
input clk,ctrl,en,rst;
input [3:0]a,b;
output [3:0]sum;
output cout;
wire s,c;
wire [3:0]tempa,tempb;
wire q;
wire clks;
assign clks = clk&ctrl;
n_bit_shift_register A1(clk,ctrl,en,s,a,tempa);
n_bit_shift_register B1(clk,ctrl,en,b[0],b,tempb);
d_ff C1(c,clks,rst,q);
FA D1(tempa[0],tempb[0],q,s,c);
assign sum = tempa;
assign cout = c;
endmodule
