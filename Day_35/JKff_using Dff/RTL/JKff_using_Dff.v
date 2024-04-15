 module JKff_Dff(input clk,rst,J,K, output Q);
  wire W1,W2,W3;
  and A1(W1,J,~Q);
  and A2(W2,~K,Q);
  or R(W3,W1,W2);
  
  ////Instantiation
  D_ff_behavioural D_ff(W3,clk,rst,Q);
 
 endmodule