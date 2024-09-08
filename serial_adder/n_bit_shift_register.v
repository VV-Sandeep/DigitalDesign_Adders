module n_bit_shift_register(clk,ctrl,en,data,in,q);
input clk,ctrl,en;
input data;
input [3:0]in;
output reg[3:0]q;
always @(posedge clk)
begin
    if(en)
    begin
       q <= in;
    end
    else if(ctrl)
    begin
        q <= {data,q[3:1]};
    end       
end
endmodule
