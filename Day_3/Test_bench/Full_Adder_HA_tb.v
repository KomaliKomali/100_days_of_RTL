module full_adder_HA_tb();
   reg A,B,cin;
   wire carry,sum;
   integer i;
   
//// instantiation
   full_adder ftb(.a(A),.b(B),.cin(cin),.sum(sum),.carry(carry));
   
////Initialization
   
   initial
    begin
	  A=0;
	  B=0;
	  cin=0;
	 end
////Stimulus Generation
	 
   initial	 
    begin 
     for(i=0; i<8; i=i+1)
      begin
       {A,B,cin}= i;
	   #10;
      end 
     
    end

   initial
   #100 $finish;

endmodule   