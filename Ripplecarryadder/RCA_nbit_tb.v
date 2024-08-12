module RCA_nbit_tb;
parameter n = 16;
reg [n-1:0]a,b;
reg cin;
wire [n-1:0]sum;
wire cout;
RCA_nbit dut (a,b,cin,sum,cout);
initial
begin
    a = 16'h0007;
    b = 16'h0008;
    #10 $finish;
end
endmodule
