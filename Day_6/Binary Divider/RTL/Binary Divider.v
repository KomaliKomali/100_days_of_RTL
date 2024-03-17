module binary_divider(input A1,A0,B1,B0, output C0,C1,C2,C3);
  wire w1,w2,w3,w4;
  
  and A_1(w1,A0,B1);
  and A_2(C0,A0,B0);
  and A_3(w2,A1,B0);
  and A_4(w3,A1,B1);
  and A_5(w4,w1,w2);
  and A_6(C3,w4,w1);
  xor X1(C1,w1,w2);
  xor X2(C2,w4,w3);
  
  endmodule