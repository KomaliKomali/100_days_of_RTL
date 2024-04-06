 module mod_10_tb();
  reg clk,rst;
  wire [3:0] count;
 
/////instantiation
 mod_10 mtb(clk,rst,count);
 
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
   
  
 