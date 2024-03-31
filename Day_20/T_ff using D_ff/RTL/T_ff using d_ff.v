module T_ff(input T,clk,rst,output Q);
 wire W;
 assign W = T^Q;
 
 D_ff_behavioural TD_ff(W,clk,rst,Q);
 
 endmodule
   