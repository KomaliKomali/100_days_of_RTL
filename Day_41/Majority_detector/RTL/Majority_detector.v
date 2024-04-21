module majority_detector(detector, A,B,C);// design for majority function
  input A,B,C;
  output detector;
  wire W1,W2,W3;
  
  and(W1,A,B);
  and(W2,B,C);
  and(W3,A,C);
  or(detector, W1,W2,W3);
  
endmodule

