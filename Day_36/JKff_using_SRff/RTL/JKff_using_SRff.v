 module JK_using_SR(input clk,rst,J,K, output Q);
 wire j,k;
 
 and A1(j,J,~Q);
 and A2(k,K,Q);
 
 ///Instantiation
 SR_D SRff(clk,rst,j,k,Q);
 
 endmodule
 
 
 