module d_ff_tb();
  reg D,RST,CLK;
  wire Q;
  
/////initalization

 D_ff_behavioural D_ff_tb(D,CLK,RST,Q);
 
////Clock Generation
 
initial 
 begin
  CLK = 1'b0;
forever
#5 CLK = ~CLK; 
end
///initialization

 task initalize();
 begin
  D = 0;
  RST = 0;
 end 
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
 
task d_input(input K);
 begin
   @(negedge CLK)
   D = K;
 end
endtask

////Stimulus
initial 
 begin
  initalize;
  reset;
  d_input(1'b1);
 end
 
initial #50 $finish;

endmodule 
  
  
  
  
  