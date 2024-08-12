module carry_select_adder_4nbit(a,b,cin,sum,cout);
parameter n = 64;
input [n-1:0]a,b;
input cin;
output [n-1:0]sum;
output cout;
genvar i;
wire [(n/4)-1:0]c;
generate
    for (i = 0; i < n/4 ; i = i+1)
    begin
        if (i == 0)
        begin
            carry_select_adder_4bit A1(a[(4*i)+3:(4*i)],b[(4*i)+3:4*i],cin,sum[(4*i)+3:4*i],c[i]);
        end
        else
        begin
            carry_select_adder_4bit A1(a[(4*i)+3:(4*i)],b[(4*i)+3:4*i],c[i-1],sum[(4*i)+3:4*i],c[i]);
        end
    end
endgenerate
assign cout = c[(n/4)-1];
endmodule
