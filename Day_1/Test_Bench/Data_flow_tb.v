module tb();
 reg A,B;
 wire Y;
 integer i;
 
///instantiation
data_flow DF_TB(A,B,Y);
 
////initialization

initial
 begin
 {A,B} = 2'b00;
 end
 
////stimulus Generation
initial
 begin
  for(i=0; i<4; i=i+1)  /// for loop is used to generate the diffrent combinations of inputs A and B
   begin
    {A,B}=i;
	#10;              /// 10ns Delay will be applied before the genereation of new input combination
   end
 end
 
 initial #50 $finish;  ///after 50ns the simulation will be completed
endmodule 
	


 