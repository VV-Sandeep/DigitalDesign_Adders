module carry_select_adder_4bit(a,b,cin,sum,cout);
input [3:0]a,b;
input cin;
output [3:0]sum;
output cout;
wire [3:0]x,y;
wire [1:0]c;
RCA_4 A1(a,b,1'b0,x,c[0]);
RCA_4 A2(a,b,1'b1,y,c[1]);
mux2_to_1 A4(x[0],y[0],cin,sum[0]);
mux2_to_1 A5(x[1],y[1],cin,sum[1]);
mux2_to_1 A6(x[2],y[2],cin,sum[2]);
mux2_to_1 A7(x[3],y[3],cin,sum[3]);
mux2_to_1 A3(c[0],c[1],cin,cout);
endmodule
