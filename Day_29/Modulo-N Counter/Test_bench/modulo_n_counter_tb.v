 module mod_n_tb();
  reg clk,rst;
 parameter N = 2; 
  wire [N-1:0]Q;
 
  
/////instantiation
mod_N_counter mntb(clk,rst,Q);
 
 ///initialization
 initial
  begin
   {clk,rst} = 0;
  end

////clock
 initial
  begin
   clk = 1'b0;
   forever
   #5 clk = ~ clk;
 end

 ////reset
 initial
  begin
    @(negedge clk)
	  rst = 1'b1;
	@(negedge clk)
      rst = 1'b0;
	#10;
	@(negedge clk)
	  rst = 1'b1;
	#1;
	@(negedge clk)
      rst = 1'b0;
  end

 endmodule
   
  
 