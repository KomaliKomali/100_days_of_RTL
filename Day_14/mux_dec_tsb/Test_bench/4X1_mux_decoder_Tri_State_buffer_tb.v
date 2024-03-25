module mux_4X1_decoder_TSB_tb();
   reg S0,S1,En;
   wire I0,I1,I2,I3;
   integer i;

/////instantiation

mux_4X1_decoder_TSB D_4X1_TSB_mux_tb(S0,S1,En,I0,I1,I2,I3);   

/////Initialization

initial
 begin
  {S0,S1,En}= 3'b001;
 end
 
 ///Simulation
 
 initial
  begin
   for(i=0;i<4; i=i+1)
     begin
	  {S0,S1} = i;
      #10;
     end
  end

initial #50 $finish;

endmodule  
