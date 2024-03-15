module full_subtractor_HS_tb();
   reg A,B,C;
   wire difference,borrow;
   integer i;
   
//// instantiation
   full_subtractor fstb(.A(A),.B(B),.C(C),.difference(difference),.borrow(borrow));
   
////Initialization
   
   initial
    begin
	  A=0;
	  B=0;
	  C=0;
	 end
////Stimulus Generation
	 
   initial	 
    begin 
     for(i=0; i<8; i=i+1)
      begin
       {A,B,C}= i;
	   #10;
      end 
     
    end

   initial
   #100 $finish;

endmodule 