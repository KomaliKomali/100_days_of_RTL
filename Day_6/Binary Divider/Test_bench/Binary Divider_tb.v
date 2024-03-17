module divider_tb();
  reg A1,A0,B1,B0;
  wire C0,C1,C2,C3;
  integer i;
  
  
 //Instantiation
binary_divider Dtb(A1,A0,B1,B0,C0,C1,C2,C3);

////Instantiation
initial
  begin
   {A1,A0,B1,B0} = 0;
   end
   
////Stimulus generation   
initial
 begin
  for(i=0; i<16; i=i+1)
   begin
    {A1,A0,B1,B0} = i;
	#10;
   end
 end

initial #170 $finish;

endmodule 