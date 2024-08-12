module carry_select_adder_4nbit_tb();
parameter n = 64;
reg [n-1:0]a,b;
reg cin;
wire [n-1:0]sum;
wire cout;
carry_select_adder_4nbit dut(a,b,cin,sum,cout);
initial
begin
  A = 64'h0000000000123456;
  B = 64'h0000123456789001;
  cin = 1'b0;
  #20 $finish;
end
endmodule
