module t_ff_tb();
  reg T,RST,CLK;
  wire Q;
  
/////initalization

T_ff T_ff_tb(T,CLK,RST,Q);
 
////Clock Generation
 
initial 
 begin
  CLK = 1'b0;
forever
#5 CLK = ~CLK; 
end
///initialization

 task initalize();
  {T,RST} = 0;
 endtask 
 
////Reset 
 task reset();
 begin
	@(negedge CLK)
	 RST = 1'b1;
	@(negedge CLK)
	RST = 1'b0;
 end
 endtask
 
task T_input(input K);
 begin
   @(negedge CLK)
   T = K;
 end
endtask

////Stimulus
initial 
 begin
  initalize;
  reset;
  T_input(1'b1);
 end
 
initial #50 $finish;

endmodule 
  
  
  
  
  