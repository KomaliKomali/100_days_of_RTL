module tb();
 reg A,B;
 wire AgrtB,AequB,AlesB;
 integer i;
 
 ////instantiation
 mag_comp mag_com_tb(A,B,AgrtB,AequB,AlesB);
 
/////Initialization
initial
 {A,B} = 2'b00;

///Stimulus Generation
initial  
 begin
  for(i=0; i<4; i=i+1)
   begin
    {A,B} = i;
	#10;
   end
 end

initial #40 $finish;

endmodule  
	
	