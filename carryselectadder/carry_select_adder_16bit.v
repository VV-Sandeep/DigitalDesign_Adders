module carry_select_adder_16bit(a,b,cin,sum,cout);
input [15:0]a,b;
input cin;
output [15:0]sum;
output cout;
wire [2:0]c;
carry_select_adder_4bit A1(a[3:0],b[3:0],cin,sum[3:0],c[0]);
carry_select_adder_4bit A2(a[7:4],b[7:4],c[0],sum[7:4],c[1]);
carry_select_adder_4bit A3(a[11:8],b[11:8],c[1],sum[11:8],c[2]);
carry_select_adder_4bit A4(a[15:12],b[15:12],c[2],sum[15:12],cout);
endmodule
