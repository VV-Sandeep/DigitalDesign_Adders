module carry_save_adder_8op_tb;
parameter n = 4;
reg [n-1:0]a,b,c,d,e,f,g,h;
wire [n+2:0]sum;
carry_save_adder_8op dut(a,b,c,d,e,f,g,h,sum);
initial
begin
   a = 4'h1;
   b = 4'h2;
   c = 4'h3;
   d = 4'h4;
   e = 4'h5;
   f = 4'h6;
   g = 4'h7;
   h = 4'h8; 
   #10 $finish;
end
endmodule
