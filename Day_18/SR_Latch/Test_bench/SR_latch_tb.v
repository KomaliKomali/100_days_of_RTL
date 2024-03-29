  module SR_tb();
  reg S,R,cntrl;
  wire Q,Qnot;
  integer i;
  
 ////Instantiation
 SR_latch srtb(S,R,cntrl,Q,Qnot);
 
 ////Initialization
 initial
  begin
  {cntrl,S,R}=3'b000;
  end

////stimulus Generation
 initial
   begin
     for(i=0; i<8; i=i+1)
      begin
       {cntrl,S,R}=i;
       #10;
      end
   end

 initial #100 $finish;   
       
 endmodule 
 
 
 
 