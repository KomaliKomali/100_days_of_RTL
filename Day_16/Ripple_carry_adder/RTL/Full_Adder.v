module Full_adder(A,B,Cin,sum,carry);
input A,B,Cin;
output sum,carry;


///code

assign sum = A^B^Cin;
assign carry= (A&B)|(B&Cin)|(Cin&A);

endmodule