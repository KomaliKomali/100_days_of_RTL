  module SR_latch(input S,R,cntrl, output Q,Qnot);
   wire w1,w2,w3,w4;

     nand(w1,S,cntrl);
     nand(w2,R,cntrl);
     nand(Q,w1,Qnot);
     nand(Qnot,w2,Q);
   
//  assign Q = clk ? w3 : 1'b1;  
//  assign Qnot = clk ? w4 : 1'b0;
 
  endmodule
 
 
 