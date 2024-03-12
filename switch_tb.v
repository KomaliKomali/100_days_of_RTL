module tb();
 reg A,B;
 wire Y;
 integer i;
 
///instantiation
circuit_level CL_TB(Y,A,B);
 
////initialization

initial
 begin
 {A,B} = 2'b00;
 end
 
////simulation
initial
 begin
  for(i=0; i<4; i=i+1)
   begin
    {A,B}=i;
	#10;
   end
 end
 
 initial #50 $finish;
endmodule 
	


 