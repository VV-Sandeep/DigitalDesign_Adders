module CLA_nbit(a,b,cin,sum,cout);
parameter n = 16;
input [n-1:0]a,b;
input cin;
output [n-1:0]sum;
output cout;
reg[n-1:0]p,g;
reg[n:0]c;
integer i;
always @(*)
begin
    c[0] = cin;
    p = a^b;
    g = a&b;
    for (i = 0; i <n ; i = i+1)
    begin
    c[i+1] = (p[i] & c[i]) | g[i];
    end
end
assign sum = p ^ c[n-1:0];
assign cout = c[n];
endmodule
