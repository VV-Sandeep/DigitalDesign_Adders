module carry_save_adder_8op(a,b,c,d,e,f,g,h,sum);
parameter n = 4;
input [n-1:0]a,b,c,d,e,f,g,h;
output [n+2:0]sum;
wire [n-1:0]s0,c0;
genvar i;
generate
    for (i = 0; i <n; i = i+1)
    begin
        FA A(a[i],b[i],c[i],s0[i],c0[i]);
    end
endgenerate
wire [n-1:0]s1,c1;
generate
    for (i = 0; i <n; i = i+1)
    begin
        FA A(s0[i],d[i],e[i],s1[i],c1[i]);
    end
endgenerate
wire [n-1:0]s2,c2;
generate
    for (i = 0; i <n; i = i+1)
    begin
        FA A(s1[i],f[i],g[i],s2[i],c2[i]);
    end
endgenerate
wire [n-1:0]s3,c3;
generate
    for (i = 0; i <n; i = i+1)
    begin
        HA A(s2[i],h[i],s3[i],c3[i]);
    end
endgenerate
wire [n:0]x;
assign x = {1'b0,s3};
wire[n:0]q0,q1,q2,q3;
assign q0 = c0<<1;
assign q1 = c1<<1;
assign q2 = c2<<1;
assign q3 = c3<<1;
wire [n:0]s4,c4;
generate
    for (i = 0; i <= n; i = i+1)
    begin
        FA A(x[i],q0[i],q1[i],s4[i],c4[i]);
    end
endgenerate
wire [n:0]s5,c5;
generate
    for (i = 0; i <= n; i = i+1)
    begin
        FA A(s4[i],q2[i],q3[i],s5[i],c5[i]);
    end
endgenerate
wire [n+1:0]q4,q5;
assign q4 = c4<<1;
assign q5 = c5<<1;
assign sum = s5+q4+q5;
endmodule
