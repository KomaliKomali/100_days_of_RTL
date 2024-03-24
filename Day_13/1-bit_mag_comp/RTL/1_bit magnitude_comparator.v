module mag_comp(input A,B, output AgrtB,AequB,AlesB);

assign AgrtB = A&(~B);
assign AequB = A~^B;
assign AlesB = (~A)&B;

endmodule