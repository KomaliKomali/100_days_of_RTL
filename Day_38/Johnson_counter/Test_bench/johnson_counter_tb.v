 module johnson_counter_tb();
  reg clk,rst;
  wire [3:0]count;
 
 ///instantiation
  johnson_counter JC_tb(clk,rst,count);
 
 ////clock
  initial
   begin
   clk = 1'b0;
   forever
   #5 clk = ~clk;
   end

 ////initialization
 task initialize();
  {clk,rst} = 0;
 endtask

 ////reset
 task reset();
  begin
	@(negedge clk)
	rst = 1'b1;
	@(negedge clk)
	rst = 1'b0;
  end 
 endtask

///Stimulus
 initial
  begin
   reset;
   initialize;
 end  
 initial #100 $finish;

 endmodule  

  
  
 
 