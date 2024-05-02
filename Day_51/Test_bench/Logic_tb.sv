 module tb_ff();
  paramaters CYCLE = 20;
  logic D,clk,rst,Q;
  
  ///instantiation
   D_ff_behavioural d_ff_tb(D,clk,rst,Q);
  
  initial
   begin
    clk = 0;
	rst = 0;
	
	forever
	 #(CYCLE/2)
	 clk = ~clk;
	 
	 @(negedge clk)
	  rst = 1'b1;
	 @(negedge clk)
      rst = 1'b0;
   end
  endmodule  
  