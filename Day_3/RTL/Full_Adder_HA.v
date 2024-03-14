module full_adder(a,b,cin,sum,carry);
  input a,b, cin;
  output sum,carry;
  wire w1,w2,w3;
  
  //instantiation
  
  half_adder HA1(a,b,w1,w2);
  half_adder HA2(w1,cin,sum,w3);
  
  //code
  
  or OR(carry,w2,w3);	
  
endmodule  
  