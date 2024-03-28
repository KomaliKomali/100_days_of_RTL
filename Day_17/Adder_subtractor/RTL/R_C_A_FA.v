module Ripple_Carry_Adder_FA(input A0,B0,A1,B1,A2,B2,A3,B3,Cin, output [3:0]S,Carry);
  wire C0,C1,C2;
/////Instantiation

 Full_adder F0(A0,B0,Cin,S[0],C0);
 Full_adder F1(A1,B1,C0,S[1],C1);
 Full_adder F2(A2,B2,C1,S[2],C2);
 Full_adder F3(A3,B3,C2,S[3],Carry);
 
 endmodule