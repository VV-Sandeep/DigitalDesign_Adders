module serial_adder_tb;
parameter n = 4;
reg clk,ctrl,en,rst;
reg [n-1:0]a,b;
wire [n-1:0]sum;
wire cout;
serial_adder dut(clk,ctrl,en,rst,a,b,sum,cout);
initial clk = 0;
always #5 clk = ~clk;
initial
begin
    a = 4'b1001;
    b = 4'b1001;
    rst = 1'b1;
    ctrl = 1'b1;
    en = 1'b1;
    #10 en = 1'b0;
    rst = 1'b0;
    #(n*10) $finish;
end
endmodule
