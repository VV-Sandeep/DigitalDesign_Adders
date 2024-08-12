module carry_skip_adder_16bit(a,b,cin,sum,cout);
input [15:0]a,b;
input cin;
output [15:0]sum;
output cout;
wire c0,c1,c2;
carry_skip_adder_4bit A1(a[3:0],b[3:0],cin,sum[3:0],c0);
carry_skip_adder_4bit A2(a[7:4],b[7:4],c0,sum[7:4],c1);
carry_skip_adder_4bit A3(a[11:8],b[11:8],c1,sum[11:8],c2);
carry_skip_adder_4bit A4(a[15:12],b[15:12],c2,sum[15:12],cout); 
endmodule
