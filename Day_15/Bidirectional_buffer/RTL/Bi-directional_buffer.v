 module bidirectional_buffer( input control, inout A,B);

//assign B = control==1?A:1'bz;

//assign A = ~control==1?B:1'bz; 

  bufif1 B1(B,A,control);
  bufif0 B2(A,B, control);

 endmodule


