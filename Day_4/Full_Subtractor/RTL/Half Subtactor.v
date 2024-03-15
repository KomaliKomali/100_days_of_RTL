module Half_subtractor( input A,B, output difference, borrow);

assign difference = A^B;
assign borrow = ~A&B;

endmodule