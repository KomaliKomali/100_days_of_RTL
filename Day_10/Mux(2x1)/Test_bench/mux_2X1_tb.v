module mux_2X1_tb();
         reg I0,I1,S0;
		 wire A;
		 integer i;
		 
//instantiation
 		 
		mux_2X1 mtb( I0,I1,S0,A);
		
////initialization

initial
 begin
   {I0,I1,S0}=3'b000;
 end

///stimulus

initial
  begin
   for(i=0; i<8; i=i+1)
    begin
	 {I0,I1,S0}=i;
	  #10;
    end
  end

initial
 begin
 #100 $finish;
 end

endmodule 