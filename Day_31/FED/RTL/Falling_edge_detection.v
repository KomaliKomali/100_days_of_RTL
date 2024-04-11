 module falling_detector(input clk,rst,D, output Detector);
   wire Q;
  
   and A1(Detector,Q,~D);
  
  ////Instantiation
  D_ff_behavioural d_ff(D,clk,rst,Q);
  
 endmodule  
 
 
 