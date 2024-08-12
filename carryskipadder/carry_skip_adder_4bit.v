module carry_skip_adder_4bit(a,b,cin,sum,cout);
input [3:0]a,b;
input cin;
output [3:0]sum;
output cout;
wire px;
assign px = (a[0]^b[0]) & (a[1]^b[1]) & (a[2]^b[2]) & (a[3]^b[3]);
wire c0;
RCA_4bit A1(a[3:0],b[3:0],cin,sum[3:0],c0);
mux2_to_1 A2(c0,cin,px,cout);
endmodule
