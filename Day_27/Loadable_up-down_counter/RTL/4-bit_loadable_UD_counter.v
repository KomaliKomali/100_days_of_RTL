module loadable_4_bit_UDC(load,clk,rst,data,mode,C_out);
 input load,clk,rst,mode;
 input [3:0]data;
 output reg [3:0]C_out;

always@(posedge clk)
 begin
  if(rst)
   C_out <= 0;
  else if(load)
    C_out <= data;
  else if(mode)
    C_out <= C_out+1;
  else
     C_out <= C_out-1; 
 end
 
endmodule 



