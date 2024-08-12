module carry_skip_adder_16bit_tb;
reg [15:0]a,b;
reg cin;
wire [15:0]sum;
wire cout;
carry_skip_adder_16bit A1(a,b,cin,sum,cout);
initial
begin
    a = 16'hd9c1;
    b = 16'h26c7;
    cin = 0;
    #10 $finish;
end
endmodule
