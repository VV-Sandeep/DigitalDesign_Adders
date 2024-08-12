module CLA_nbit_tb();
parameter n = 16;
reg [n-1:0]a,b;
reg cin;
wire [n-1:0]sum;
wire cout;
CLA_nbit dut (a,b,cin,sum,cout);
initial 
begin
    a = 16'hd9c1;
    b = 16'h26c7;
    cin = 1'b0;
    #10 $finish;
end
endmodule
