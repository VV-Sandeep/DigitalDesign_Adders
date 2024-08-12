module RCA_nbit(a,b,cin,sum,cout);
parameter n = 16;
input [n-1:0]a,b;
input cin;
output [n-1:0]sum;
output cout;
genvar i;
wire [n:0]c;
assign c[0] = 1'b0;
generate 
    for (i= 0; i < n; i = i+1)
    begin
        FA A1(a[i],b[i],c[i],sum[i],c[i+1]);
    end
endgenerate
assign cout = c[n];
endmodule
