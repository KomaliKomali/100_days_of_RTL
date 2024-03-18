module Decoder_2X4_tb();
      reg a,b,en;
	  wire d0,d1,d2,d3;
	  integer i;
	  
///instantiation

	Decoder_2X4 Dtb(a,b,en,d0,d1,d2,d3);

////initialization
 initial
  begin   
    a=0;
    b=0;
    en=1;
  end

////stimulus generation
 initial 
  begin
    for(i=0; i<4; i=i+1)
     begin 
        {a,b}=i;
         #10;
     end
  end


 initial 
  begin 
   #50 $finish; 
  end   
	  
endmodule	  