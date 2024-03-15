module full_subtractor(input A,B,C, output difference,borrow);
  
  wire w1,w2,w3;
  
 /////Instantiation
  
  Half_subtractor HS_1(.A(A),.B(B),.difference(w1),.borrow(w2));
  
  Half_subtractor HS_2(.A(w1),.B(C),.difference(difference),.borrow(w3));
  
  or or_1(borrow,w2,w3);
  
  endmodule