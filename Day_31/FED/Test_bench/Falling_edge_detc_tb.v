module FED_tb();
  reg D,clk,rst;
  wire Detector;
  
/////Instantiation
 falling_detector F_E_D_tb(clk,rst,D,Detector);
 
////Clock Generation
initial 
 begin
  clk = 1'b0;
forever
#5 clk = ~clk; 
end

///initialization
 task initalize();
 begin
  D = 0;
  rst = 0;
 end 
 endtask 
 
////Reset 
 task reset();
 begin
	@(negedge clk)
	 rst = 1'b1;
	@(negedge clk)
     rst = 1'b0;
 end
 endtask
 
task d_input(input K);
 begin
   @(posedge clk)
    #3 D = K;
 end
endtask

////Stimulus
initial 
 begin
  initalize;
  reset;
  d_input(1'b1);
  reset;
  d_input(1'b0);
 end
 
initial #100 $finish;

endmodule 
  
  
  
  
  