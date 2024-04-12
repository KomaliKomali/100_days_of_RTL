 module pos_neg_detector(input clk,rst,D, output Detector);
   wire Q;
  
   xor X(Detector,Q,D);
  
  ////Instantiation
  D_ff_behavioural d_ff(D,clk,rst,Q);
  
 endmodule  
 
 
 