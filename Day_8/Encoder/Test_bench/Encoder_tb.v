module E_8X3_tb();
   reg D0,D1,D2,D3,D4,D5,D6,D7;
   wire x,y,z;
   integer i;
   
 ////instantiation

 Encoder_8X3 E_tb(D0,D1,D2,D3,D4,D5,D6,D7,x,y,z); 
 
 ///initialization
 
 initial
  begin
    {D0,D1,D2,D3,D4,D5,D6,D7}= 8'b00000000;
  end	
 
 ////simulation
 
 initial
  begin
   for(i=1; i<128; i=i+1)
    begin
	  {D0,D1,D2,D3,D4,D5,D6,D7} = i;
	  #1;
    end
 end

initial #130 $finish;

endmodule 