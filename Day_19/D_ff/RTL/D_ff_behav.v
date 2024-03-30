module D_ff_behavioural(input D,CLK,RST,output reg Q);
   
  always@(posedge CLK)
    begin
     if(RST)
       Q <= 0;
     else
       Q <= D;
	end

endmodule	

  