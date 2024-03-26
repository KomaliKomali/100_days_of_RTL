module R_P_C_A_FA_tb();
  reg A0,B0,A1,B1,A2,B2,A3,B3,Cin;
  wire S0,S1,S2,S3,Carry;
  //wire C0,C1,C2,C3;
  integer i;
  
////Instantiation 

   Ripple_Carry_Adder_FA rpctb(A0,B0,A1,B1,A2,B2,A3,B3,Cin,S0,S1,S2,S3,Carry);

////Initialization

initial 
 begin
  {A0,B0,A1,B1,A2,B2,A3,B3,Cin} = 9'b000000000;
 end

////stimulus

initial
 begin
  for(i=0; i<256; i=i+1)
    begin
     {A0,B0,A1,B1,A2,B2,A3,B3,Cin} = i;
	 #1;
	end
 end

initial #257 $finish;

endmodule
 