module Dmux_tb();
         reg A,S0;
		 wire Y0,Y1;
		 integer i;
		 
//instantiation
 		 
 demux Dmtb(A,S0,Y0,Y1);
		
////initialization

initial
 begin
   {A,S0}=2'b00;
 end

///stimulus

initial
  begin
   for(i=0; i<4; i=i+1)
    begin
	 {S0,A}=i;
	  #10;
    end
  end

initial
 begin
 #100 $finish;
 end

endmodule 