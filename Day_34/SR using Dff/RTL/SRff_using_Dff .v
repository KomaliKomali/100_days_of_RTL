 module SR_D(input clk,rst,S,R,output Q);
 
 wire W1,W2;
 
  
 and And_1(W1,~R,Q);
 or or_1(W2,S,W1);
 
 ///Dff Instantiation
  D_ff_behavioural D_ff(W2,clk,rst,Q);
  
 endmodule 