module D_ff_behavioural(input D,CLK,RST,output reg Q);
   
  always@(posedge CLK)
    begin
     if(RST)
	  begin
       Q <= 0;
	  end 
     else
	  begin
       Q <= D;
	  end 
	end

endmodule	

  